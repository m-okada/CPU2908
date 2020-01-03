#include <stdio.h>

int main(void){
	char (*ptr) [3][3] ;
	printf("%lu\n", sizeof(*ptr)) ;
}
