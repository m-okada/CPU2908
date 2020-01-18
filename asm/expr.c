/*

cc -o expr expr.c lex.c

cl expr.c

*/
#include <stdio.h>
#include <string.h>
#include "lex.h"

#define DEBUG

char* str="a0+$f*2+400" ;

extern char buff[128] ;


#ifdef DEBUG

void expr(char *ptr){

}


int main(void){


	return 1 ;
}

#endif

