/**/
#include <stdio.h>

char a[2] ;

int main(){
	char * b=a ;
	a[0]=10 ;
	a[1]=20 ;

	printf("%d \n", ++b[0]) ;

	return 1 ;
}
