#include <stdio.h>
int main() {
	int n;
	scanf("%d", &n);
	char ch[1000];
	int i=0;
	while(n!=0){
		ch[i]=n%10;
		n/=10;
		i++;
	}
	int j;
	int check=1;
	for(j=0;j<=i-1;j++){
		if(ch[j]!=ch[i-1-j]){
			check=0;
			break;
		}
	}
	if (check==1) {
		printf("Y\n");
	} else {
		printf("N\n");
	}
	return 0;
}
