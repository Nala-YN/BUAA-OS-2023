#include <lib.h>

void touch(char* path){
	int r;
	r = user_creat(path, 0);
	if (r == -E_FILE_EXISTS) {
		debugf("%s file is alreay existed!\n", path);
	} else if (r < 0) {
		user_panic("error in touch!\n");
	} else {
		debugf("%s file is not existed, so it is created!\n", path);
	}
}

int main(int argc, char **argv)
{
    int i;
    for(i=1; i<argc; i++)touch(argv[i]);
	exit();
}
