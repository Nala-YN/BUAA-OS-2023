// User-level IPC library routines

#include <env.h>
#include <lib.h>
#include <mmu.h>

// Send val to whom.  This function keeps trying until
// it succeeds.  It should panic() on any error other than
// -E_IPC_NOT_RECV.
//
// Hint: use syscall_yield() to be CPU-friendly.
void ipc_send(u_int whom, u_int val, const void *srcva, u_int perm) {
	int r;
	while ((r = syscall_ipc_try_send(whom, val, srcva, perm)) == -E_IPC_NOT_RECV) {
		syscall_yield();
	}
	user_assert(r == 0);
}

// Receive a value.  Return the value and store the caller's envid
// in *whom.
//
// Hint: use env to discover the value and who sent it.
u_int ipc_recv(u_int *whom, void *dstva, u_int *perm) {
	int r = syscall_ipc_recv(dstva);
	if (r != 0) {
		user_panic("syscall_ipc_recv err: %d", r);
	}

	if (whom) {
		*whom = env->env_ipc_from;
	}

	if (perm) {
		*perm = env->env_ipc_perm;
	}

	return env->env_ipc_value;
}
u_int get_time(u_int *us){
	u_int time;
	u_int time0;
	syscall_read_dev(&time,0x15000000,4);
	syscall_read_dev(&time,0x15000010,4);
	syscall_read_dev(&time0,0x15000020,4);
	*us=time0;
	return time;
}
void usleep(u_int us){
	u_int time;
	u_int timeus;
	time=get_time(&timeus);
	long us1=(long)(time*1000000)+timeus+us;
	while (1) {
		u_int timenow;
		u_int timenowus;
		timenow=get_time(&timenowus);
		long us2=(long)(timenow*1000000)+timenowus;
		if ( us2>= us1) {
			return;
		} else {
			syscall_yield();
		}
	}
}
