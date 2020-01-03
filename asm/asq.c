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
"SWB",	"SXT",
"SXT",	"SWB",	"PUSH",	"POP",
"JC",	"JNC",	"JZ",	"JNZ",	"JS",	"JNS",	"JO",	"JNO",	"JG",	"JL",
"JMP",	"JMPS",	"JMPN",
"SHL","SHR","SAR",
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
*/
int expr(){
}


int mode=0 ;	//	0:行頭 1:

char fileBuff[1024] ;
char *buffPos=NULL ;
char *nextPos=NULL ;

char lineBuff[128] ;

/*
	get_line　一行読み込んでポインタを返す。ファイルの終わりならNULLを返す

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
		//	BOM
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
	while(1){
		t = get_token() ;
		if(t==0) continue ;
		break ;
	}
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
	while(1){
		t = get_token() ;
		if(t==0) continue ;
		break ;
	}
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
	int t ;
	char * ptr ;
	while(1){
		t = get_token() ;
		if(t==0) continue ;
		break ;
	}
	if(t==1) return 1 ;
	return -1 ;
}
int except_comma(void){
	return 1 ;
}
int except_addr_expr(void){
	return 1 ;
}

/*
char reg_str[][4]={
"R0", "R1", "R2", "R3",
"W0", "W1", "A0", "A1",
"CP", "SP", ""
} ;
*/
/*
LD dst,src
srcは(A0|A1|SP)、(A0|A1|SP)＋－imm、
*/
void gen_LD(void){

	if(!except_reg()) return ;
	if(!except_comma()) return ;
	if(!except_addr_expr()) return ;



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
}

void gen_ST(void){
}



int parse(void){
	int t, code ;
	while(1){
		t = get_token() ;
printf("token[%s] type %d\n", buff, t) ;
		//if(t==-1) break ;	//	end of line
		if(t==0) continue ;
		else break ;
	}

	switch(t){
	case 1:	//	Identifyer オペコード又は定数。定数の場合後ろはEQしか対応していない。
		code=get_opcode(buff) ;
		if(code!=-1){	//	オペコードらしい
			printf("Opecode[%s]", buff) ;
/*
"LD",	"ST",	"MOV",	"ADD",	"SUB",	"ADDC",	"SUBB","CMP",
"AND",	"OR",	"XOR",	"NOT",	"XCHG",
"SWB",	"SXT",
"SXT",	"SWB",	"PUSH",	"POP",
"JC",	"JNC",	"JZ",	"JNZ",	"JS",	"JNS",	"JO",	"JNO",	"JG",	"JL",
"JMP",	"JMPS",	"JMPN",
"SHL","SHR","SAR",
"INC","DEC",
"CALL",	"RET",
"SWI",	"IRET",
"EI",	"DI",
"STC",	"CMC",
"LDFR",	"STFR",
"TNS",
"NOP",

*/
			switch(code){
			case 0:	//	LD
				op=1 ;
				gen_LD() ;
				break ;
			case 1:
				op=2 ;
				gen_ST() ;
				break ;
			}
		}
		break ;
	case 2:
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

printf("[%s]%ld\n", pos, strlen(pos)) ;

		parse() ;
		generate() ;
	}
	return 0 ;
}



int main(char argc, char** argv){


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
	strcat(fname, ".o") ;

	obj_fp=fopen(fname, "wb") ;
	if(obj_fp==NULL){
		fclose(src_fp) ;
		printf("Error : Obj file Can't open.\n") ;
		exit(1) ;
	}

	program() ;
}

