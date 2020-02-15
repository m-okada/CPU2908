// #define DEBUG
/*
cc -o lex lex.c
*/

typedef unsigned char BYTE ;
#include <stdio.h>

#ifdef DEBUG


#endif

char cr=0x0d ;
char tab=0x09 ;
char spc=0x20 ;
char lf=0x0a ;
int is_white_space(char cc){
	if(cc==lf || cc==cr || cc==tab || cc==spc) return 1 ;
	return 0 ;
}


/*
定義方法

yystate,getch,output,state_next


*/
int char_buff=-1 ;

void unget_char(int cc){
	if(char_buff!=-1){
		printf("Error ungetc\n") ;
	}
	char_buff=cc ;
}
char* pos ;
int get_char(void){
	int cc ;

	if(*pos!=0){
		cc = (int)*pos ;
		pos++ ;
		return cc ;
	}
	else{
		return -1 ;
	}

}


int take_char(void){
	int cc ;
	if(char_buff!=-1){
		cc =  char_buff ;
		char_buff=-1 ;
		return cc ;
	}
	else{
		return(get_char()) ;
	}
}

int to_upper(int c){
	return (c>='a' && c<= 'z') ? c-32 : c ;
}


char buff[128] ;
int buff_pos=0 ;

int push_char(int cc){
	if(buff_pos==127) return -1 ;
	buff[buff_pos]=(char)cc ;
	buff_pos++ ;
	buff[buff_pos]=0 ;
	return buff_pos ;
}


/*
 return
	0 no type
	1 Identifyer
	2 Directive
	3 Decimal
	4 Hex
	5 Label
	6 ','
	7 '+'
	8 '-'
	9 '@'	Location

*/


int get_token(char* ptr){
	int _get_token(char*) ;
	int t ;

	while(1){
		t=_get_token(ptr) ;
		if(t==0)continue ;
		else break ;
	}
	return t ;
}

/*



*/

//	declare

//	tokenizer
char* str ;
char buff[80] ;

setup_lex(char*ptr){
}

int _get_token(char* ptr){
	return 0 ;
}



#ifdef DEBUG
unsigned char *str="abc012: .org $ff23 .db $23,$56,$af ;comment" ;

FILE* src_fp ;

int main(int argc, char** argv){
	int i ;
	int type ;
	pos = str ;
	char buff[32] ;

	if(argc<=1){
		printf("Usage : asq FILENAME\n") ;
		exit(1) ;
	}

	if(strlen(fname)>=256){
		printf("Error : Filename too long.\n") ;
		exit(1) ;
	}
	strcpy(fname, argv[1]) ;
	src_fp=fopen(fname, "r") ;
	if(src_fp==NULL){
		printf("Error : Src file Can't open.\n") ;
		exit(1) ;
	}

	setup_lex(str) ;

	while((type=get_token())!=-1){
		printf("[%s:%d]\n", buff, type) ;
	}

	printf("\n") ;
	return 1 ;
}
#endif