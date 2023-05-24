#include <args.h>
#include <lib.h>

#define WHITESPACE " \t\r\n"
#define SYMBOLS "<|>&;()"
#define maxEnvVar 64
/* Overview:
 *   Parse the next token from the string at s.
 *
 * Post-Condition:
 *   Set '*p1' to the beginning of the token and '*p2' to just past the token.
 *   Return:
 *     - 0 if the end of string is reached.
 *     - '<' for < (stdin redirection).
 *     - '>' for > (stdout redirection).
 *     - '|' for | (pipe).
 *     - 'w' for a word (command, argument, or file name).
 *
 *   The buffer is modified to turn the spaces after words into zero bytes ('\0'), so that the
 *   returned token is a null-terminated string.
 */
int sh_id;
int get_var(char* name,char* rval){
	return syscall_find_var(sh_id,name,rval);
}
int unset_var(char* name){
	return syscall_unset_var(sh_id,name);
}
int unset(int argc,char** argv){
	char name[16]={0};
	strcpy(name,argv[1]);
	unset_var(name);
	return 0;
}
int declare(int argc,char** argv){
	int readonly=0;
	int islocal=1;
	char name[16]={0};
	char var[16]={0};
	ARGBEGIN {
		case 'x':
			islocal=0;
			break;
		case 'r':
			readonly=1;
			break;
        default:
			break;
	}
    ARGEND
	debugf("argc:%d\n",argc);
	if(argc==0){
		syscall_list_var(sh_id);
		return 0;
	}
	if(argc>=1){
		strcpy(name,argv[0]);
	}
	if(argc>=2){
		strcpy(var,argv[1]);
	}
	return syscall_set_var(sh_id,name,&var[1],readonly,islocal);
}
int _gettoken(char *s, char **p1, char **p2) {
	*p1 = 0;
	*p2 = 0;
	if (s == 0) {
		return 0;
	}

	while (strchr(WHITESPACE, *s)) {
		*s++ = 0;
	}
	if (*s == 0) {
		return 0;
	}
	if (strchr("\"", *s)){
		*p1 = ++s;
		while(*s != '\"')
			 s++;
		*s = 0;
		*p2 = ++s;
		return 'w';
	}
	if (strchr(SYMBOLS, *s)) {
		int t = *s;
		*p1 = s;
		*s++ = 0;
		*p2 = s;
		return t;
	}

	*p1 = s;
	while (*s && !strchr(WHITESPACE SYMBOLS, *s)) {
		s++;
	}
	*p2 = s;
	return 'w';
}

int gettoken(char *s, char **p1) {
	static int c, nc;
	static char *np1, *np2;

	if (s) {
		nc = _gettoken(s, &np1, &np2);
		return 0;
	}
	c = nc;
	*p1 = np1;
	nc = _gettoken(np2, &np1, &np2);
	return c;
}

#define MAXARGS 128

int parsecmd(char **argv, int *rightpipe,int* hangup) {
	int argc = 0;
	while (1) {
		char *t;
		int fd, r;
		int c = gettoken(0, &t);
		switch (c) {
		case 0:
			return argc;
		case 'w':
			if (argc >= MAXARGS) {
				debugf("too many arguments\n");
				exit();
			}
			argv[argc++] = t;
			break;
		case '<':
			if (gettoken(0, &t) != 'w') {
				debugf("syntax error: < not followed by word\n");
				exit();
			}
			// Open 't' for reading, dup it onto fd 0, and then close the original fd.
			/* Exercise 6.5: Your code here. (1/3) */
			if ((r = open(t, O_RDONLY)) < 0)user_panic("< open failed");
            fd = r;
            dup(fd, 0);
            close(fd);
            break;
			//user_panic("< redirection not implement
		case '>':
			if (gettoken(0, &t) != 'w') {
				debugf("syntax error: > not followed by word\n");
				exit();
			}
			// Open 't' for writing, dup it onto fd 1, and then close the original fd.
			/* Exercise 6.5: Your code here. (2/3) */
			if ((r = open(t, O_WRONLY)) < 0)user_panic("> open failed");
            fd = r;
            dup(fd, 1);
            close(fd);
			break;
		case ';':
			if ((*rightpipe = fork()) == 0) {
                    return argc;
                } else {
					wait(*rightpipe);
					*rightpipe=0;
					*hangup=0;
					return parsecmd(argv,rightpipe,hangup);
                }
                break;
		case '&':
			if((*rightpipe=fork())==0){
				*hangup=1;
				*rightpipe=0;
				return argc;
			}
			else{
				*rightpipe=0;
				*hangup=0;
				return parsecmd(argv,rightpipe,hangup);
			}	
		case '|':;
			/*
			 * First, allocate a pipe.
			 * Then fork, set '*rightpipe' to the returned child envid or zero.
			 * The child runs the right side of the pipe:
			 * - dup the read end of the pipe onto 0
			 * - close the read end of the pipe
			 * - close the write end of the pipe
			 * - and 'return parsecmd(argv, rightpipe)' again, to parse the rest of the
			 *   command line.
			 * The parent runs the left side of the pipe:
			 * - dup the write end of the pipe onto 1
			 * - close the write end of the pipe
			 * - close the read end of the pipe
			 * - and 'return argc', to execute the left of the pipeline.
			 */
			int p[2];
			/* Exercise 6.5: Your code here. (3/3) */
			 pipe(p);
                if ((rightpipe = (int*)fork()) == 0) {
                    dup(p[0], 0);
                    close(p[0]);
                    close(p[1]);
                    return parsecmd(argv,rightpipe,hangup);
                } else {
                    dup(p[1], 1);
                    close(p[1]);
                    close(p[0]);
                    return argc;
                }
				break;
		}
	}

	return argc;
}
int history[64];
int maxline=0;
int nowline=0;
void get_history(int nowline,char* buf){
	int fd=open(".history",O_RDWR);
	int place=nowline==0?0:history[nowline-1];
	int cnt=history[nowline]-place;
	seek(fd,place);
	debugf("place:%d\n",place);
	readn(fd,buf,cnt);
	buf[strlen(buf-1)]=0;
	debugf("count:%d\n",cnt);
	debugf("read:%s\n",buf);
	close(fd);
}
void store_history(char* buf){
	int fd=open(".history",O_RDWR);
	int place=maxline==0?0:history[maxline-1];
	seek(fd,place);
	history[maxline]=(maxline==0?0:history[maxline-1])+strlen(buf);
	write(fd,buf,strlen(buf));
	maxline++;
	close(fd);
}
void runcmd(char *s) {
	gettoken(s, 0);
	int r;
	char *argv[MAXARGS];
	int rightpipe = 0;
	int hangup=0;
	int argc = parsecmd(argv, &rightpipe,&hangup);
	if (argc == 0) {
		return;
	}
	argv[argc] = 0;
	if(strcmp(argv[0],"declare")==0){
		declare(argc,argv);
		exit();
	}
	if(strcmp(argv[0],"unset")==0){
		unset(argc,argv);
		exit();
	}
	char buf[32];
	for(int i=0;i<=argc-1;i++){
		if(argv[i][0]=='#'){
			r=get_var(argv[i]+1,buf);
			if(r){
				strcpy(argv[i],buf);
			}
			else{
				user_panic("No such var!\n");
			}
		}
	}
	int child = spawn(argv[0], argv);
	close_all();
	if (child >= 0) {
		if(hangup){
			if(fork()==0){
				wait(child);
			}
		}
		else{
			wait(child);
		}
	} else {
		debugf("spawn %s: %d\n", argv[0], child);
	}
	if (rightpipe) {
		wait(rightpipe);
	}
	exit();
}

void readline(char *buf, u_int n) {
	int r;
	int place=0;
	char temp;
	for (int i = 0; i < n; i++) {
		//debugf("i:%d\n",i);
		if ((r = read(0, buf + i, 1)) != 1) {
			if (r < 0) {
				debugf("read error: %d\n", r);
			}
			exit();
		}
		if (buf[i] == '\r' || buf[i] == '\n') {
            debugf("\n");
            buf[i+1] = 0;
			buf[i]='\n';
			store_history(buf);
			buf[i]=0;
			nowline=maxline;
            return;
        }
		//debugf("i:%d place:%d\n",i,place); 
		if(buf[i]==27){
			//debugf("i:%d place:%d\n",i,place);
			read(0,&temp,1);
			read(0,&temp,1);
			if(temp=='D'){
				if(place-1>=0){
					place--;
					debugf("%c%c%c",27,91,68);
				}		
			}
			else if(temp=='C'){
				if(place+1<=i){
					place++;
					debugf("%c%c%c",27,91,67);
				}
			}
			else if(temp=='A'||temp=='B'){
				if(temp=='A'){
					if(nowline>0){
						nowline--;
					}	
					else{
						i--;
						continue;
					}
				}
				else{
					if(nowline<maxline-1){
						nowline++;
					}
					else{
						i--;
						continue;
					}
				}
				char line[64];
				get_history(nowline,line);
				for(int j=0;j<=place-1;j++){
					debugf("\b");
				}
				for(int j=0;j<=i-1;j++){
					debugf(" ");
				}
				for(int j=0;j<=i-1;j++){
					debugf("\b");
				}
				for(int j=0;j<=strlen(line)-1;j++){
					debugf("%s",line);
				}
				place=strlen(line);
				i=strlen(line)-1;
				continue;
			}
			i--;
			continue;
		}
		else if(buf[i]=='\b'||buf[i]==0x7f){
			i--;
			if(place>0){
				for(int j=place-1;j<=i-1;j++){
					buf[j]=buf[j+1];			
				}
				debugf("%c%c%c",27,91,68);
				for(int j=0;j<=i-place+1;j++){
					debugf(" ");
				}
				for(int j=0;j<=i-place+1;j++){
					debugf("%c%c%c",27,91,68);
				}
				for(int j=place-1;j<=i-1;j++){
					debugf("%c",buf[j]);
				}
				for(int j=place-1;j<=i-1;j++){
					debugf("\b");
				}
				i--;
				place--;	
			}
		}
		else{
			temp=buf[i];
			for(int j=i;j>=place+1;j--){
				buf[j]=buf[j-1];
			}
			buf[place]=temp;
			for(int j=place;j<=i;j++){
				debugf("%c",buf[j]);
			}
			for(int j=place;j<=i-1;j++){
				debugf("\b");
			}
			place++;	
		}
		//debugf("buf:%x\n",buf[i]);
	}
	debugf("line too long\n");
	while ((r = read(0, buf, 1)) == 1 && buf[0] != '\r' && buf[0] != '\n') {
		;
	}
	buf[0] = 0;
}

char buf[1024];

void usage(void) {
	debugf("usage: sh [-dix] [command-file]\n");
	exit();
}
int main(int argc, char **argv) {
	int r;
	sh_id=syscall_get_sh_id();
	int interactive = iscons(0);
	int echocmds = 1;
	debugf("\n:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::\n");
	debugf("::                                                         ::\n");
	debugf("::                     MOS Shell 2023                      ::\n");
	debugf("::                                                         ::\n");
	debugf(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::\n");
	ARGBEGIN {
	case 'i':
		interactive = 1;
		debugf("geti\n");
		break;
	case 'x':
		echocmds = 1;
		debugf("getx\n");
		break;
	default:
		usage();
	}
	ARGEND
	printf("echocmds:%d interactive:%d\n",echocmds,interactive);
	user_creat(".history",0);
	if (argc > 1) {
		usage();
	}
	if (argc == 1) {
		close(0);
		if ((r = open(argv[1], O_RDONLY)) < 0) {
			user_panic("open %s: %d", argv[1], r);
		}
		user_assert(r == 0);
	}
	for (;;) {
		if (interactive) {
			printf("\n$ ");
		}
		readline(buf, sizeof buf);

		if (buf[0] == '#') {
			continue;
		}
		if (echocmds) {
			printf("# %s\n", buf);
		}
		if ((r = fork()) < 0) {
			user_panic("fork: %d", r);
		}
		if (r == 0) {
			runcmd(buf);
			exit();
		} else {
			wait(r);
		}
	}
	return 0;
}
