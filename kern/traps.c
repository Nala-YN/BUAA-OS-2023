#include <env.h>
#include <pmap.h>
#include <printk.h>
#include <trap.h>

extern void handle_int(void);
extern void handle_tlb(void);
extern void handle_sys(void);
extern void handle_mod(void);
extern void handle_reserved(void);
extern void handle_ov(void);
void (*exception_handlers[32])(void) = {
    [0 ... 31] = handle_reserved,
    [0] = handle_int,
    [2 ... 3] = handle_tlb,
	[12]=handle_ov,
#if !defined(LAB) || LAB >= 4
    [1] = handle_mod,
    [8] = handle_sys,
#endif
};

/* Overview:
 *   The fallback handler when an unknown exception code is encountered.
 *   'genex.S' wraps this function in 'handle_reserved'.
 */
void do_ov(struct Trapframe *tf) {
	u_int* epc=(u_int*)tf->cp0_epc;
	u_int order=*epc;
	u_int rep=order;
	curenv->env_ov_cnt++;
	Pte* pte;
	struct Page* pp;
	pp=page_lookup(curenv->env_pgdir, (u_int)epc,  &pte);
	u_int pa=((*pte)&0xfffff000)|((u_int)epc&0xfff);
	u_int ka=KADDR(pa); 
	if((order&0xff)==0x20){
		rep=order&0xffffff00;
		rep|=0x21;
		*(u_int*)ka=rep;
		printk("add ov handled\n");
	}
	else if((order&0xff)==0x22){
		rep=order&0xffffff00;
		rep|=0x23;
		*(u_int*)ka=rep;
		printk("sub ov handled\n");
	}
	else{
		u_int t=(order>>16)&0b11111;
		u_int s=(order>>21)&0b11111;
		u_int imm=order&0xffff;
		tf->regs[t]=(u_int)(tf->regs[s])/2+imm/2;
		printk("addi ov handled\n");
		tf->cp0_epc=(u_int)epc+4;
	}
}
void do_reserved(struct Trapframe *tf) {
	print_tf(tf);
	panic("Unknown ExcCode %2d", (tf->cp0_cause >> 2) & 0x1f);
}
