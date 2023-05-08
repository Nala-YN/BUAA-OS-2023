#include <lib.h>

int main() {
	barrier_alloc(10);
	for (int i = 0; i < 9; i++) {
		int who = fork();
		if (who == 0) {
			debugf("I'm son!\n");
			barrier_wait();
			return 0;
		}
	}
	debugf("I'm finished! %c\n");
	return 0;
}
