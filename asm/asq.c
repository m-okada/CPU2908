/*
CPU2908 asm
asm-q

asq:asq.c
	cc -o asq asq.c lex.c
*/

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#include "lex.h"

int Line = 0 ;
char msg[128] ;
void errorOut(char *str){
	printf("%d Error : %s\n", Line, str) ;
}

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

//typedef uint8_t BYTE ;
typedef uint16_t WORD ;
typedef uint32_t DWORD ;

typedef WORD ADDR_T ;

#define IDENT_TBL_SIZE 1024

int locate=0 ;
short mem[8192] ;

/*

行頭はラベル定義（宣言）、ディレクティブ、オペコード
ラベル定義のあとは上3つ
ディレクティブは　. で始まる予約語
そのあとはパラメータ ,  パラメータリスト…
オペコードは全て予約語で　オペコード＋必要ならオペランド , オペランドリスト
オペランドは無し、単項＋－、レジスタ名、レジスタ名＋－定数
識別子 eq 定数


ラベル
Identifier:

.db
.dw

.org

オフセット計算

#bin
$HEX
1-9 dec


*/
/*
.db
.dw
.org
ident eq xx ; 定数
ident: ; ラベル


+-
$hex
;行末までコメント
$　現在位置

.proc

_0～_9 SP相対

_で始まる識別しは予約されているので使っちゃダメよ。
*/

char ident_tbl[IDENT_TBL_SIZE][32] ;
char ident_pref_tbl[IDENT_TBL_SIZE] ;	//	1:label 2:const
int ident_value_tbl[IDENT_TBL_SIZE] ;

int jmp_pos[1024] ;
int jmp_pos_type[1024] ;	//	0:jmps 1:jmp 2:mov cp
int jmp_target[1024] ;

char inst_str[][6]={
"LD",	"ST",	"MOV",	"ADD",	"SUB",	"ADDC",	"SUBB","CMP",
"AND",	"OR",	"XOR",	"NOT",	"XCHG",
"SXT",	"SWB",	"PUSH",	"POP",
"JC",	"JNC",	"JZ",	"JNZ",	"JS",	"JNS",	"JO",	"JNO",	"JG",	"JL",
"JMP",	"JMPS",	"JMPN",
"SHL",	"SHR",	"SAR",
"INC","DEC",
"CALL",	"RET",
"SWI",	"IRET",
"EI",	"DI",
"STC",	"CMC",
"LDFR",	"STFR",
"TNS",
"NOP",
""
} ;

char reg_str[][4]={
"R0", "R1", "R2", "R3",
"W0", "W1", "A0", "A1",
"CP", "SP", ""
} ;

char directive_str[][8]={
".ORG", ".DB", ".DW","EQ",
""
} ;



int get_opcode(char *ptr){
	int i=0 ;
	char *p ;
	while(inst_str[i][0]){
		char *inst=inst_str[i] ;
		char f=1 ;	//	一致
		p=ptr ;
		while(*inst){
			if(*inst!=*p){
				f=0 ;
				break ;
			}
			p++ ; inst++ ;
		}
		if(f==1){	//	見つかった
			return i ;
		}
		i++ ;
	}
	return -1 ;
}

int get_register(char *ptr){
	int i=0 ;
	char *p ;
	while(reg_str[i][0]){
		char *inst=reg_str[i] ;
		char f=1 ;	//	一致
		p=ptr ;
		while(*inst){
			if(*inst!=*p){
				f=0 ;
				break ;
			}
			p++ ; inst++ ;
		}
		if(f==1){	//	見つかった
			return i ;
		}
		i++ ;
	}
	return -1 ;
}


int op ;
int op1, op2 ;
int op_type ;	// オペランドタイプ

int label_idx=0 ;	//	要素最大値
int label_loc[1024] ;
int label_value[1024] ;
char label[2014][32] ;

int location=0 ;

int register_label(char* ptr){
	if(label_idx<1024){
		label_loc[label_idx]=location ;
		strcpy(label[label_idx], ptr) ;
		label_idx++ ;
	}
}

/*
　データレジスタ
　ワードレジスタ
　アドレスレジスタ
　アドレス＋オフセット
　8ビットimm
　16ビットimm
　R0のみ、R0、R1、R0-3
　なし
*/


//	オペランドの式評価
/*
A0,A1,CP,SP は予約語として、あとは定数式。定数は事前に宣言されている事

上位ワード：0-7 レジスタ 8-15 レジスタ＋imm
下位ワード：オフセット
*/
int expr(){
}


int mode=0 ;	//	0:行頭 1:

char fileBuff[128] ;
char *buffPos=NULL ;
char *nextPos=NULL ;

char lineBuff[128] ;

/*
	get_line　一行読み込んでポインタを返す。ファイルの終わりならNULLを返す
		一行最大80バイト

	buffPos : ラインの先頭ポインタ。後ろの改行位置に0を書いて先頭を返す。
	linebuff : filebuffの途中で行が終わってるときにこっちにコピーしてfileBuffいっぱいに読み込む。の後改行までコピーして返す

*/
char* get_line(FILE* fp){
	int i, len ;

	while(1){
		unsigned char cc ;
		len = fread(&cc, 1, 1, fp) ;
		if(len!=1){
			return NULL ;
		}
		//	Skip BOM.
		else if(cc==0 || cc==0xbb || cc==0xef || cc==0xff || cc==0xfe || cc==0xbf){
			continue ;
		}
		else if(cc!=' ' && cc!=9){
			fileBuff[0]=(int)cc ;
			break ;
		}
	}
	for(i=1 ; i<80 ; i++){
		len = fread(fileBuff+i, 1, 1, fp) ;
		if(len!=1){
			fileBuff[i]=0 ;
			return fileBuff ;
		}
		fileBuff[i+1]=0 ;
		if(fileBuff[i]==0x0a){
			fileBuff[i]=0 ;
			Line++ ;
			return fileBuff ;
		}
		if(fileBuff[i]==';'){
			fileBuff[i]=0 ;
			break ;
		}
	}
	while(1){
		unsigned char cc ;
		len = fread(&cc, 1, 1, fp) ;
		if(len!=1) break ;
		if(cc==0x0a) break ;
	}
	Line++ ;
	return fileBuff ;
}


extern char buff[128] ;

int accept_T(int type){	//@@@
	int t ;
	char * ptr ;
	t = get_token() ;
	if(t==type) return 1 ;
	return -1 ;
}

int except_T(int type){
	if(accept_T(type)==1) return 1 ;
	else return 0 ;
}

int accept(char *str){
	int t ;
	char * ptr ;
	t = get_token() ;
	if(t==-1) return -1 ;

	ptr = buff ;
	while(*str){
		if(*str != *ptr)
			return -1 ;
		str++ ; ptr ++ ;
	}
	return 1 ;
}

int except(char *str){
	if(accept(str)==1) return 1 ;
	else return 0 ;
}

void get_expr(void){

}

int except_reg(void){
	int r, t ;

	t = get_token() ;
	if(t==1){
		r = get_register(buff) ;
		if(r>=0) return r ;
	}
	return -1 ;
}

int except_addr_expr(void){
	int r, t ;

	t = get_token() ;
	if(t==1){
		r = get_register(buff) ;
		if(r<4 && r>7) return -2 ;	//	not addr register
	}

	t = get_token() ;
	if(t!=7) return r ;

	t = get_token() ;

	return -1 ;
}

/*　レジスタ
char reg_str[][4]={
"R0", "R1", "R2", "R3",
"W0", "W1", "A0", "A1",
"CP", "SP", ""
} ;
*/
// Code generate.

/*
4バイトで、あたまから
FF.00 NOP
FF.FF notuse
FF.01.xx.yy addr(.ORG) yy:xx little endian
ラベル、定数は定数テーブルに保存する。.ORGはラベルとは別に管理する。
*/
char code[8192][4] ;


/*
LD dst,src
srcは(A0|A1|SP)、(A0|A1|SP)＋－imm、
*/
void gen_LD(void){
	int r=except_reg() ;
	if(r==-1){
		errorOut("Register require.") ;
		return ;
	}
	if(!except_T(6)){
		errorOut("\',\' require.") ;
		return ;
	}
	if(!except_addr_expr()){
		errorOut("Address expr require.") ;
		return ;
	}


/*
	int t, r ;
	while(1){
		t = get_token() ;
printf("token[%s]=%d\n", buff, t) ;
		if(t==0) continue ;
		if(t==1){
			r = get_register(buff) ;
printf("reg(%d) %d\n", t, r) ;
			if(r!=-1){
				if(r>=0 && r<4){	//	BYTE REG
printf("BYTE REG\n") ;
					break ;
				}
				else if(r>=4 && r<8){	//	BYTE REG
printf("WORD REG\n") ;
					break ;
				}
				else{
					sprintf(msg, "%s is not register.", buff) ;
					errorOut(msg) ;
					return ;
				}
			}
		}
		else{
			errorOut("") ;
			return ;
		}
	}
	if(r>=0 && r<8){
		if(!except(",")){
			printf("Error : ',' missing.\n") ;
		}
	}
*/
}

void gen_ST(void){
}
void gen_lop(int op){
}


int parse(void){
	int t, code ;
	t = get_token() ;
printf("token[%s] type %d\n", buff, t) ;

	switch(t){
	case 1:	//	Identifyer オペコード又は定数。定数の場合後ろはEQしか対応していない。
		code=get_opcode(buff) ;
		if(code!=-1){	//	オペコードらしい
			printf("Opecode[%s]", buff) ;
/*
"LD",	"ST",	"MOV",	"ADD",	"SUB",	"ADDC",	"SUBB","CMP",
"AND",	"OR",	"XOR",	"NOT",	"XCHG",
"SWB",	"SXT",	//	14,15
"SXT",	"SWB",	"PUSH",	"POP",	//16-19
"JC",	"JNC",	"JZ",	"JNZ",	"JS",	//	-14
"JNS",	"JO",	"JNO",	"JG",	"JL",	//	-19
"JMP",	"JMPS",	"JMPN",	// 20-22
"SHL","SHR","SAR",	//	23-25
"INC","DEC",	//	26,27
"CALL",	"RET",	//	28,29
"SWI",	"IRET",	//	30,31
"EI",	"DI",	//	32,33
"STC",	"CMC",	//	34,35
"LDFR",	"STFR",	//	36,37
"TNS",	//	38
"NOP",	//39

*/
			switch(code){
			case 0:	//	LD
				op=1 ;
				gen_LD() ;
				break ;
			case 1:	//	ST
				op=2 ;
				gen_ST() ;
				break ;
			case 3:	//	MOV
				break ;
			case 4:		//	ADD
				gen_lop(4) ;
				break ;
			case 5:		//	SUB
				break ;
			case 6:		//	ADDC
				break ;
			case 7:		//	SUBB
				break ;
			case 8:		//	CMP
				break ;
			case 9:		//	AND
				break ;
			case 10:	//	OR
				break ;
			case 11:	//	XOR
				break ;
			case 12:	//	NOT
				break ;
			case 13:	//	XCHG
				break ;
			case 14:	//	SWapByte
				break ;
			case 15:	//	SignXTend
				break ;
			case 39:
				break ;
			}
		}
		break ;
	case 2:	//	Directive
		break ;
	case 5:	//	Label ラベルは後ろの:を取って識別子表に登録する。
		break ;
	case 7:	//	演算子(+,-)リテラルで出てくる
		break ;
	}

	return 0 ;
}

int generate(void){
	switch(op){
	case 1:
		break ;
	}


	return 0 ;
}

FILE* src_fp ;
FILE* mem_fp ;
FILE* obj_fp ;
char fname[256] ;

extern char* pos ;

int program(void){
	while(1){
		pos = get_line(src_fp) ;
		if(pos==NULL) break ;

// printf("[%s]%ld\n", pos, strlen(pos)) ;

		parse() ;
		generate() ;
	}
	return 0 ;
}



int main(int argc, char** argv){


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

	char *pos = strrchr(fname, '.') ;
	*pos=0 ;
	strcat(fname, ".prn") ;

	obj_fp=fopen(fname, "wb") ;
	if(obj_fp==NULL){
		fclose(src_fp) ;
		printf("Error : Obj file Can't open.\n") ;
		exit(1) ;
	}

	program() ;
}

