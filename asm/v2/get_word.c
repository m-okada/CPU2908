#include <stdio.h>


char *inst_str=
	"LD\1ST\1MOV\1ADD\1SUB\1ADDC\1SUBB\1CMP\1"
	"AND\1OR\1XOR\1NOT\1XCHG\1SWB\1SXT\1PUSH\1POP\1"
	"JNC\1JC\1JNO\1JO\1JNZ\1JZ\1JNS\1JS\1JL\1JG\1"
	"JMP\1JMPS\1JMP\1SHL\1SHR\1SAR\1INC\1DEC\1"
	"CALL\1RET\1SWI\1IRET\1EI\1DI\1STC\1CMC\1"
	"LDFR\1STFR\1TNS\1NOP\1SWI8\1" ;


char *reg_str=
"R0\1R1\1R2\1R3\1W0\1W1\1A0\1A1\1CP\1SP"
"A\1B\1C\1D\1W\1V\1X\1Y\1PC\1U" ;//	Alternative

char *directive_str=
".ORG\1.DS\1.DB\1.DW\1.EQ\1.GLOBAL\1" ;

int get_word(char * str, char *tbl){
	int wc=0 ;
	char *ptr = tbl ;
	char *word = str ;

	while(*ptr!=0){
		if(*ptr != *word){
			while(*ptr!=1) ptr++ ;
			ptr++ ;
			word = str ;
			wc++ ;
		}
		else{
			ptr++ ;
			word++ ;
			if(*word==0) return wc ;
		}
	}

	return -1 ;
}

int get_register(char *ptr){
	return get_word(ptr, reg_str) ;
}

int get_opcode(char *ptr){
	return get_word(ptr, inst_str) ;
}

int get_directive(char *ptr){
	return get_word(ptr, directive_str) ;
}

/*
int main(void){
	printf("%d\n", get_word("MOV", inst_str)) ;
	printf("%d\n", get_word("NOP", inst_str)) ;
	printf("%d\n", get_word("R0", reg_str)) ;
	return 0 ;
}
*/
