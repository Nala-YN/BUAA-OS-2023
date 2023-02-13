#include <blib.h>

size_t strlen(const char *s) {
	int i=0;
	while(*(s+i)!='\0'){
		i++;
	}
	return i;
}

char *strcpy(char *dst, const char *src) {
	int i=0;
	while(*(src+i)!='\0'){
		*(dst+i)=*(src+i);
		i++;
	}
	*(dst+i)='\0';
	return dst;
}

char *strncpy(char *dst, const char *src, size_t n) {
	char *res = dst;
	while (*src && n--) {
		*dst++ = *src++;
	}
	*dst = '\0';
	return res;
}

char *strcat(char *dst, const char *src) {
	int i=0;
	while(*(dst+i)){
		i++;
	}
	char* res=dst+i;
	i=0;
	while(*(src+i)){
		*(res+i)=*(src+i);
		i++;
	}
	*(res+i)='\0';
	return dst;


}

int strcmp(const char *s1, const char *s2) {
	int i=0;
	while(*(s1+i)&&*(s2+i)&&*(s1+i)==*(s2+i)){
		i++;
	}
	if(!*(s1+i)){
		if(!*(s2+i)){
			return 0;
		}
		else{
			return -*(s2+i+1);
		}
	}
	else if(!*(s2+i)){
		return *(s1+i+1);
	}
	return *(s1+i)-*(s2+i);
}

int strncmp(const char *s1, const char *s2, size_t n) {
	while (n--) {
		if (*s1 != *s2) {
			return *s1 - *s2;
		}
		if (*s1 == 0) {
			break;
		}
		s1++;
		s2++;
	}
	return 0;
}

void *memset(void *s, int c, size_t n) {
	char* temp=(char*)s;
	int i;
	for(i=0;i<=n-1;i++){
		*(temp+i)=c;
	}
	return (void*)temp;
}

void *memcpy(void *out, const void *in, size_t n) {
	char *csrc = (char *)in;
	char *cdest = (char *)out;
	for (int i = 0; i < n; i++) {
		cdest[i] = csrc[i];
	}
	return out;
}

int memcmp(const void *s1, const void *s2, size_t n) {
	char* v1=(char*)s1;
	char* v2=(char*) s2;
	int i;
	for(i=0;i<=n-1;i++){
		if(*(v1+i)!=*(v2+i)){
			return *(v1+i)-*(v2+i);
		}
	}
	return 0;
}
