#include <lib.h>
int main(){
	int r=open("/.history",O_RDWR);
	if(r<0){
		user_panic("open .history failed\n");
	}
	else{
		debugf("open .history\n");
}
	char buf[1024];
	r=readn(r,buf,1024);
	if(r<0){
		user_panic("read ./history failed\n");
	}
	debugf("%s\n",buf);
	exit();
}
