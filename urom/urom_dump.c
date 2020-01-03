/*

cc -o ud urom_dump.c

*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "2908uROM.h"

typedef unsigned int DWORD ;
typedef unsigned char BYTE ;


int main(void){
	DWORD ur ;
	for(int n=0 ; n<256 ; n++){
		printf("%02x\n", n) ;
		for(int i=0 ; i<16 ; i++){
			ur=urom[n*16+i] ;
			printf(" %08x:", ur) ;


			printf("\n") ;
			if((ur & 0x80000000) || ur==0L) break ;
		}
	}
}
