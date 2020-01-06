/*
cc -o str2int str2int.c
*/
#include <stdio.h>

static char * number="0123456789ABCDEF" ;
int char2int(char cc){
	for(int i=0  ; i<16 ; i++){
		if(number[i]==cc) return i ;
	}
	return -1 ;
}

int str2int(int radix, char*str){
	int retval=0 ;

	while(*str){
		retval = retval * radix + char2int(*str) ;
		str++ ;
	}
	return retval ;
}

int main(void){
	printf("%d\n", str2int(10, "10")) ;
	printf("%d\n", str2int(10, "12 ")) ;
	printf("%d\n", str2int(10, "999")) ;
	printf("%d\n", str2int(16, "FFFF")) ;
	printf("%d\n", str2int(16, "1F")) ;
	printf("%d\n", str2int(16, "AAFF")) ;
	printf("%d\n", str2int(2, "0100")) ;
}