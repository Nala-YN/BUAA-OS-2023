void sprintf_1_check() {
	char str[100];
	int i=sprintf(str, "%s%c%-5d","123456\n",97,100);
	printk("%d\n%s",i, str);
	i=sprintf(str, "%c\n", 97);
	printk("%d\n%s",i, str);
}

void mips_init() {
	sprintf_1_check();
	printk("%d",114);
	halt();
}
