// #define DEBUG
/*
cc -o token token.c
*/

typedef unsigned char BYTE ;
#include <stdio.h>

#ifdef DEBUG


#endif

#include "q_typedef.h"


UINT char_buff=0x0ffff ;

UINT isNum(char cc){
	if(cc>='0' && cc <='9') return 1 ;
	return 0 ;
}

UINT isAlpha(char cc){
	if((cc>='A' && cc<='Z') || cc=='_') return 1 ;
	return 0 ;
}

UINT isHex(char cc){
	if((cc>='0' && cc <='9') || (cc>='A' && cc<='F')) return 1 ;
	return 0 ;
}

UINT to_upper(UINT c){
	return (c>='a' && c<= 'z') ? c-32 : c ;
}



char* pos ;
char buff[128] ;
UINT buff_pos=0 ;

UINT _get_char(void){
	UINT cc ;

	if(*pos!=0){
		cc = (int)*pos ;
		pos++ ;
		return cc ;
	}
	else{
		return FF ;
	}

}

/*
1文字読み込み
*/
UINT get_char(void){
	UINT cc ;
	if(char_buff!=FF){
		cc =  char_buff ;
		char_buff=FF ;
		return cc ;
	}
	else{
		return(_get_char()) ;
	}
}

/*
1文字pushback
*/
void unget_char(UINT cc){
	if(char_buff!=FF){
		printf("Error ungetc\n") ;
	}
	char_buff=cc ;
}

/*
1文字バッファにコピー
*/
UINT take_char(UINT cc){
	if(buff_pos==127) return FF ;
	buff[buff_pos]=(char)cc ;
	buff_pos++ ;
	buff[buff_pos]=0 ;
	return buff_pos ;
}

/*
トークン切り出し
*/
int get_token(char* ptr){
	UINT _get_token(char*) ;
	UINT t ;

	while(1){
		t=_get_token(ptr) ;
		if(t==0)continue ;
		else break ;
	}
	return t ;
}

/*
 return
	0 no type
	1 Identifyer
	2 Directive "EQ"は'.'で始まらないので1で返る。
	3 Decimal
	4 Hex　hexは頭の'$'を取ってから返す。
	5 Label
	6 ','
	7 '+'
	8 '-'
	9 '@'	Location
	10 string

*/
UINT _get_token(char* ptr){
	UINT state=0 ;
	UINT type=0 ;

	UINT cc ;
	UINT rc ;
	buff_pos=0 ; buff[0]=0 ;

	while(rc=get_char()){
		cc = to_upper(rc) ;

		switch(state){
		case 0:		//	top
			if(cc==0x0a || cc==FF) return FF ;
			else if(isAlpha(cc)){
				take_char(cc) ;
				state=1 ;
			}
			else if(isNum(cc)){
				take_char(cc) ;
				state=3 ;	//	decimal
			}
			else if(cc=='.'){
				take_char(cc) ;
				state=2 ;
			}
			else if(cc=='+'){
				take_char(cc) ;
				return 7 ;
			}
			else if(cc=='-'){
				take_char(cc) ;
				return 8 ;
			}
			else if(cc=='@'){
				take_char(cc) ;
				return 9 ;
			}
			else if(cc=='$'){
				//take_char(cc) ;
				state=4 ;	//	hex
			}
			else if(cc==';'){
				while(get_char()!=-1) ;	//	comment
				return -1 ;
			}
			else if(cc=='{'){	//	comment
				while(1){
					cc =get_char() ;
					if(cc=='}' || cc==-1) break ;
				}
				continue ;
			}
			else if(cc==','){	//
				take_char(cc) ;
				return 6 ;
			}
			else if(cc=='\''){	//	string
				state=5 ;
			}
			else if(cc=='\t' || cc==' ') continue ;
			else continue ; // return 0 ;
			break ;
		case 1:		//	identifyer
			if(isAlpha(cc) || isNum(cc) || cc=='_'){
				take_char(cc) ;
			}
			else if(cc==':'){
				return 5 ;	//	Label
			}
			else{
				unget_char(cc) ;
				return 1 ;
			}
			break ;
		case 2:		//	directive
			if(isAlpha(cc)){
				take_char(cc) ;
			}
			else{
				unget_char(cc) ;
				return 2 ;
			}
			break ;
		case 3:	//	decimal
			if(isNum(cc)){
				take_char(cc) ;
			}
			else{
				unget_char(cc) ;
				return 3 ;
			}
			break ;
		case 4:	//	hex
			if(isNum(cc) || (cc>='A' && cc<='F')){
				take_char(cc) ;
			}
			else{
				unget_char(cc) ;
				return 4 ;
			}
			break ;
		case 5:	//	string
			if(cc=='\'') return 10 ;
			take_char(rc) ;
			break ;
		}
	}
	return 0 ;
}



#ifdef DEBUG
unsigned char *str="abc012: .org $ff23 .db $23,$56,$af ;comment" ;

int main(void){
	int type ;
	pos = str ;
	while((type=get_token())!=-1){
		printf("[%s:%d]\n", buff, type) ;
	}

	printf("\n") ;
	return 1 ;
}
#endif