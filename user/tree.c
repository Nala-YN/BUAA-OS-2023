#include <lib.h>

void addStr(char *src, char *dst) {
	while (*src) {
		src++;
	}
	while (*dst) {
		*src = *dst;
		src++;
		dst++;
	}
	*src = 0;
}  

void tree(char *path, int depth) {
	int fd, n,i,r;
    struct File f;
    char newPath[128];
    fd = open(path, O_RDONLY);
    while ((n = readn(fd, &f, sizeof f)) == sizeof f) {
		if (f.f_name[0]) {
			for (i = 0; i < depth; i++){
                    debugf("    ");
			 }
                debugf( "|--");
                debugf( "%s\n",f.f_name);
			if (f.f_type == FTYPE_DIR){
				memset(newPath,0,128);
				addStr(newPath, path);
				addStr(newPath, f.f_name);
				addStr(newPath,"/");
				tree(newPath, depth+1);
			}
		}
	}
	close(fd);
}

int main(int argc, char **argv)
{	
	if(argc>1){
		tree(argv[1],0);
	}
	else{
		tree("/",0);
	}
	exit();
}
