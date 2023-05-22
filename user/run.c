#include <lib.h>
int main(){
	debugf("%x running\n",syscall_getenvid());
	int r;
	for(int i=0;i<=100;i++){
		for(int j=0;j<=1000000;j++){
			r+=i;
			r-=j;	
		}
		syscall_print_cons("1", 1);	
	}
	debugf("finished\n");
	return 0;
}
