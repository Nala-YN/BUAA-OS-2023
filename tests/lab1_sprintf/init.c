void sprintf_1_check() {
	char str[100];
	int i=sprintf(str, "%s%c%d\n","123456",97,100);
	printk("%d\n%s",i, str);
	i=sprintf(str, "%c\n", 97);
	printk("%d\n%s",i, str);
}

void mips_init() {
	printk("%d",233);
	sprintf_1_check();
	printk("%d",114);
	halt();
}
