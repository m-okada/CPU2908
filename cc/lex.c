
/*

字句解析

cc -o lex lex.c get_line.c -DDDEBUG_ALONE
*/

typedef unsigned short UINT ;


#ifdef DEBUG_ALONE

#include <stdlib.h>
#include <stdio.h>
#include <string.h>


#endif

#define FF 0xffff


char cr=0x0d ;
char tab=0x09 ;
char spc=0x20 ;
char lf=0x0a ;
int is_white_space(char cc){
	if(cc==lf || cc==cr || cc==tab || cc==spc) return 1 ;
	return 0 ;
}


int isNum(char cc){
	if(cc>='0' && cc <='9') return 1 ;
	return 0 ;
}

int isAlpha(char cc){
	if((cc>='A' && cc<='Z') ||(cc>='a' && cc<='z') || cc=='_') return 1 ;
	return 0 ;
}

int isHex(char cc){
	if((cc>='0' && cc <='9') || (cc>='A' && cc<='F') || (cc>='a' && cc<='f')) return 1 ;
	return 0 ;
}

int to_upper(int c){
	return (c>='a' && c<= 'z') ? c-32 : c ;
}

/*

parser

定義方法

state,substate,getch,action

action:next_state | next_substate | state_not_change | reduce , take_char | pushback_char


state==NUM | NUM8 substate=CC2ND

*/

//	入力文字　下位7ビット 文字コード
#define OTHER 0x1fe 	//	other input stateにも使える
#define ALPHA 0x1f0
#define NUMBER 0x1f1 	//	1-9～
#define ALL 0x1ee 		//	OTHER で代用できる
#define WHITE_SPC 0x1ff

//	action 上位4ビット　アクション　次4ビット　ステート遷移　2ビット予約　最下位6ビット　ステート
#define ACTION_MASK 0x3000
#define TAKE_CHAR 0x1000
#define PUSHBACK 0x2000
#define DISCARD 0x3000	//	捨てる（コメントとか）

#define EVAL_MASK 0x8000
#define EVAL 0x8000			//	途中下車して評価

#define STATE_MASK 0xF00
#define TERM_TRANS 0x100		//	get_tokenを終了
#define POP1_SUB 0x200		//	サブステートを1個さかのぼる
#define POP_SUB 0x300		//	サブステートを0にする
#define CHANGE_STATE 0x400	//	ステート変更
#define CHANGE_SUBSTATE 0x500	//	ステート変更

#define REDUCE 0x600
#define REDUCE_CLASS1 0x700	//	class1へコピーしてステート変更
#define REDUCE_CLASS2 0x800
#define REDUCE_CLASS3 0x900

/*

*/
UINT StateTable[][4]={
	{0, 0, '(', TAKE_CHAR | REDUCE | 1},
	{0, 0, ')', TAKE_CHAR | REDUCE | 2},
	{0, 0, '[', TAKE_CHAR | REDUCE | 3},
	{0, 0, ']', TAKE_CHAR | REDUCE | 4},
	{0, 0, '{', TAKE_CHAR | REDUCE | 5},
	{0, 0, '}', TAKE_CHAR | REDUCE | 6},
	{0, 0, '~', TAKE_CHAR | REDUCE | 7},
	{0, 0, '?', TAKE_CHAR | REDUCE | 8},
	{0, 0, ':', TAKE_CHAR | REDUCE | 9},
	{0, 0, ';', TAKE_CHAR | REDUCE | 10},
	{0, 0, ',', TAKE_CHAR | REDUCE | 11},

	{0, 0, NUMBER, EVAL | REDUCE | 0x21},
//	{0, 0, '\'', TAKE_CHAR | REDUCE | 0x31}, // char code
//	{0, 0, '"', TAKE_CHAR | REDUCE | 0x32},	//	get string

	{0x32, 0, '"', REDUCE_CLASS1 | 0},

	{0, 0, '<', TAKE_CHAR | CHANGE_STATE | 0x04},
	{4, 0, '<', TAKE_CHAR | CHANGE_SUBSTATE | 0x01},
	{4, 0, '=', TAKE_CHAR | CHANGE_SUBSTATE | 0x02},
	{4, 1, '=', TAKE_CHAR | REDUCE | 0x0401},
	{4, 1, OTHER, TAKE_CHAR | REDUCE | 0x0401},
	{4, ALL, OTHER, PUSHBACK | REDUCE | 0x0402},

	{OTHER, ALL, ALL, DISCARD | REDUCE | 0x00},
	{FF, 0, 0, FF}
} ;


// 16進文字から整数へ
UINT char2int(char cc){
	if('0'<=cc && cc<='9'){
		return cc-'0' ;
	}
	else if(cc>='A' && 'F'>=cc){
		return cc-'A'+10 ;
	}
	else if(cc>='a' && 'f'>=cc){
		return cc-'a'+10 ;
	}
	else return 0 ;
}


UINT str2int(UINT radix, char *str){
	UINT retval=0 ;

	while(*str){
		retval = retval * radix + char2int(*str) ;
		str++ ;
	}
	return retval ;
}


char *text_pos ;
UINT char_buff=FF ;

static char *text_buff ;
UINT yystate, substate ;
UINT (*diagram)[4] ;


void set_text(char *ptr){
	yystate=substate=0 ;
	text_buff=ptr ;
	text_pos=0 ;

	diagram=StateTable ;
	text_pos=ptr ;
}

void push_back(UINT cc){
	if(char_buff!=FF){
		printf("Error ungetc\n") ;
	}
	char_buff=cc ;
}


UINT get_char(void){
	int cc ;

	if(char_buff!=FF){
		cc = char_buff ;
		char_buff = FF ;
	}
	else if(*text_pos!=0){
		cc = *text_pos ;
		text_pos++ ;
	}
	else{
		return FF ;
	}
// printf("get_char:%c(%X) ", cc, cc) ;
	return cc ;
}

UINT buff_pos=0 ;
char token_buff[128] ;
char token_class[3][128] ;

UINT take_char(char cc){	// 	いただます
	if(buff_pos==128){
		return FF ;
	}
	token_buff[buff_pos]=cc ;
	buff_pos++ ;
	return cc ;
}


/*
misc
*/

UINT eval_number(void){
	char cc ;
	UINT retval ;

	retval=FF ;

	cc=get_char() ;
	if(cc=='\\'){	// Back slash.
		cc = get_char() ;
		switch(cc){
		case 'n': retval=0x0a ; break ;
		case 'r': retval=0x0d ; break ;
		case 't': retval=0x09 ; break ;
		case 0x22: retval=0x22 ; break ;	//	"
		case 0x2C: retval=0x2C ; break ;	//	'
		case 'x':
			retval=0 ;
			while(1){
				cc=get_char() ;
				if(isHex(cc)){
					retval = retval * 16 + char2int(cc) ;
				}
				else{
					push_back(cc) ;
					retval &= 0x00FF ;
					break ;
				}
			}
			break ;
		}
	}
	else if(cc=='0'){
		retval=0 ;
		cc = get_char() ;
		if(cc=='x'){
			while(1){
				cc=get_char() ;
				if(isHex(cc)){
					retval = retval * 16 + char2int(cc) ;
				}
				else{
					push_back(cc) ;
					break ;
				}
			}
		}
		else{
			push_back(cc) ;
			return 0 ;
		}
	}
	else if(isNum(cc)){
		retval=char2int(cc) ;
		while(1){
			cc=get_char() ;
			if(isNum(cc)){
				retval = retval * 10 + char2int(cc) ;
			}
			else{
				push_back(cc) ;
				break ;
			}
		}
	}
	else{
		push_back(cc) ;
	}

	return retval ;
}

/*
シーケンス制御

term_trans
pop1_sub
pop_sub
change_state
*/

UINT state_stack_top=0 ;
UINT state_stack[32] ;

/*
テーブルをステート、サブステートで検索。
見つかったらそこから入力文字コードで判定。
ステート、サブステートが変わったら終了
*/

UINT search_state(UINT state, UINT substate){
	UINT i ;
	UINT t ;

	i=t=0 ;
	while(1){
		if(diagram[i][0]==FF){
			t = FF ;
			break ;
		}
		if(diagram[i][0]==state){
			t=state ;
			while(1){
				if(diagram[i][0]!=t){
					t = FF ;
					break ;
				}
				else if(diagram[i][1]==substate){
					t=i ;
					break ;
				}
				i++ ;
			}
			break ;
		}
		if(diagram[i][0]==OTHER){
			t = i ;
			break ;
		}
		i++ ;
	}

	return t ;
}

UINT transit(char cc){
	UINT n_state ;
	UINT n_substate ;
	UINT action ;
	UINT i=0 ;

	while(1){
		action=0 ;
		if(diagram[i][0]==FF){
			action = FF ;
			break ;
		}

		if(diagram[i][0]==yystate && diagram[i][1]==substate){
			if(diagram[i][2]==(UINT)cc){
				action = diagram[i][3] ;
				break ;
			}
		}
		i++ ;
	}
	if(action!=FF){

	}
}


UINT _get_token(void){
	char cc = *text_pos ;
	char action ;
	char state_next ;
	char substate_next ;
	UINT t=0 ;
	UINT i=0 ;

	while(1){
		if(diagram[i][0]==FF){
			break ;
		}



		i++ ;
	}

	text_pos+=i ;

	return t ;
}

//token_buff
UINT get_token(void){
	UINT t ;

	buff_pos=0 ;

	while(1){
		t=_get_token() ;
		if(t!=FF)break ;
	}
	return t ;
}

/*



*/

//	declare

//	tokenizer

UINT setup_lex(char*ptr){
	return FF ;
}


#ifdef DEBUG_ALONE
unsigned char *str="\\x0123" ;

FILE* src_fp ;


int main(int argc, char** argv){
	UINT type ;
/*
	int i ;
	pos = str ;
	char buff[32] ;

	if(argc<=1){
		printf("Usage : ccq FILENAME\n") ;
		exit(1) ;
	}

	strcpy(fname, argv[1]) ;
	src_fp=fopen(fname, "r") ;
	if(src_fp==NULL){
		printf("Error : Src file Can't open.\n") ;
		exit(1) ;
	}

	setup_lex(str) ;

*/
	UINT pos=0 ;
	UINT n ;

	set_text("12345") ;
	n = eval_number() ;
	printf("(%d)", n) ;

	set_text("\\xfa5") ;
	n = eval_number() ;
	printf("(%X)", n) ;

	set_text("0x8bc5") ;
	n = eval_number() ;
	printf("(%X)", n) ;

//	while((type=get_token())!=0){
//		printf("[%s:%d]\n", token_buff, type) ;
//	}

	printf("\n") ;
	return 1 ;
}

#endif
