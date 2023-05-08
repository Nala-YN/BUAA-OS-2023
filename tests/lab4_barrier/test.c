#include <lib.h>

int main() {
	barrier_alloc(9);
	int cnt=0;
	for (int i = 0; i < 9; i++) {
		int who = fork();
		if (who == 0) {
			debugf("I'm son!\n");
			barrier_wait();
			debugf("son out %x\n",syscall_getenvid);
			cnt++;
			return 0;
		}
	}
	debugf("I'm finished! %c\n",cnt);
	return 0;
}
