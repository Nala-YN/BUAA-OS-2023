void sprintf_1_check() {
	char str[100];
	sprintf(str, "%d\n", 12321);
	printk("%s", str);
	sprintf(str, "%c\n", 97);
	printk("%s", str);
}

void mips_init() {
	printk("%d",233);
	sprintf_1_check();
	printk("%d",114);
	halt();
}
