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
	printf("Line %d :  Error %s\n", Line, str) ;
	// exit(1) ;
}

static char * number="0123456789ABCDEF" ;
int char2int(char cc){
	for(int i=0  ; i<16 ; i++){
		if(number[i]==cc) return i ;
	}
	return -1 ;
}

int str2int(int radix, char *str){
	int retval=0 ;

	while(*str){
		retval = retval * radix + char2int(*str) ;
		str++ ;
	}
	return retval ;
}

typedef uint16_t ADDR_T ;

#define IDENT_TBL_SIZE 1024

int locate=0 ;
char mem[16*1024] ;

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
識別子は30バイトまで比較する。Case非センシティブ

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
"CP", "SP",
"A", "B", "C", "D",
"V", "W", "X", "Y",
"PC", "U", ""
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
		char f=1 ;	//	一致なら1のまま返る
		p=ptr ;
		while(*inst){
			if(*inst!=*p){
				f=0 ;
				break ;
			}
			p++ ; inst++ ;
		}
		if(f==1){	//	見つかった
			if(f>=10 && f<20){	//	別名変換
				f-=10 ;
			}
			return i ;
		}
		i++ ;
	}
	return -1 ;
}



/*


*/
int op ;
int op1, op2 ;

// オペランドタイプ　0:即値 1:レジスタ 2:アドレスレジスタ＋即値
int op1_type ;
int op2_type ;

/*
ラベル

・定義
識別子とアドレスを登録
register_label


・参照
参照された時に定義されているかどうかチェック
未定義：ロケーション-1でラベルを登録。参照位置を登録。

定義済み：ロケーションとラベルのアドレスでオペランドを計算
ロケーション確定：label_posの中を手繰ってその位置とラベルのロケーションとでオフセットを計算する。


二重定義を許す。
Jccで後方ラベルを参照する時に -Label で指定すると後方で一番近い同名ラベルを Label なら前方で一番近いラベルを参照
8ビットオフセットで届かない場合はLabelで後方参照。

*/
int label_cmp(char *label, char* str){
	int i ;
	if(*str==0 || *label==0) return 0 ;
	for(i=0 ; i<31 ; i++){
		if(label[i]==0 && str[i]==0) return 1 ;
		if(label[i]!=str[i]) return 0 ;
	}
	return 1 ;	//	30バイト比べておなじなら一致にする。
}

void label_cpy(char *label, char *str){
	int i ;
	for(i=0 ; i<31 ; i++){
		if(str[i]==0){
			label[i]=0 ;
			return ;
		}
		label[i] = str[i] ;
	}
	label[31]=0 ;
	return ;
}

int currentIdentifier=-1 ;

int label_idx=0 ;	//	要素最大値
int label_ref_pos[1024] ;	//	label_pos のデータの先頭へのインデックス
int label_value[1024] ;	//	-1:未定義　参照のみで定義されてない。前方参照。
char label[1024][32] ;	//	ラベル名 index はlabel_value と同じ

//	ラベルの参照位置
//	[0]labelへのインデックス位置:-1なら未使用
//　[1]次のデータのインデックス　 [3]型1:バイト2:ワード3:絶対位置（ワード）
int label_pos[8192][4] ;

char constant[1024][32] ;
int const_value[1024] ;	//	定数　-1なら定数未定義　定数は直後の eq で定義するので。

/*
code[addr]から4バイト
3バイト命令なら次はcode[i+3]にある

4バイトで、あたまから
FF.00 NOP
FF.FF notuse
FF.01.xx.yy addr(.ORG) yy:xx little endian
FF.02.xx.yy .orgで指定されたアドレス
ラベル、定数は定数テーブルに保存する。.ORGはラベルとは別に管理する。
*/
int codePos=0 ;
unsigned char code[16*1024][4] ;



int get_const_value(char *str){
	int i ;
	for(i=0 ; i<1024 ; i++){
		if(label_cmp(constant[i], str)){
			return const_value[i] ;
		}
	}
	return -1 ;
}


int register_const(char *str){
	int i ;
	for(i=0 ; i<1024 ; i++){
		if(label_cmp(constant[i], str)){
			//	Error:定数二重定義	@@@
			return -1 ;
		}
	}
	for(i=0 ; i<1024 ; i++){
		if(const_value[i]==-1){
			label_cpy(constant[i], str) ;
			currentIdentifier=i ;
			const_value[i]=0 ;
			return i ;
		}
	}
	return -1 ;
}



int location=0 ;

//	ラベルの定義位置を求める labelの中から定義されていたらインデックスを返す
int label_ref(char* ptr){
	int i ;
	for(i=0 ; i<1024 ; i++){
		if(label_cmp(label[i], ptr)){
			return i ;
		}
	}
	return -1 ;
}
/*
	定数参照があるのは
		LD,STの+imm8、
		MOVのBR,imm8、
		MOVのWR,imm16、
		ROP R0,imm8、
		Jccのimm8、
		CALL、JMPのimm16、
		SWIのimm8。
*/
//	ラベルが定義されたら登録してあるかどうかチェックして登録
int register_label(char* ptr){
	int i ;

	if(label_idx==1024){
		errorOut("Label table Overflow.") ;
		return -1 ;	//	満員です
	}

	i=label_ref(ptr) ;

	if(i==-1){	//	参照が先なら登録済みのはずなので、ここはラベル初登場

		label_value[label_idx]=location ;
		label_cpy(label[label_idx], ptr) ;

		label_idx++ ;
		return label_idx ;
	}
	else{//	既に登録されていた。参照が先か二重登録
		for(i=0 ; i<8192 ; i++){	//	参照位置一覧にあるかな？
			if(label_pos[i][0]==label_idx){
				//	参照位置をたどって書き換える
				int ref_pos = label_pos[i]
				code[i] ;
			}
		}
		if(i==8192){
			//	Error @@@
			errorOut("Label ref table overflow.") ;
			return -1 ;
		}

		//	label_pos に参照があるかどうか調べて、あったら書き換え
	}
	return 0 ;	//	get_locationしてオフセット計算
}


/*
ラベルのロケーション
labelから一致したエントリーを探す。-1なら未定義。
*/

int get_label_value(char* str){
	int i ;
	for(i=0 ; i<1024 ; i++){
		if(label_cmp(label[i], str)){
			return label_value[i] ;
		}
	}
	return -1 ;
}

//　参照された時。空いてるところをさがして登録
int set_label_pos(char *str, int pos){
	int t, i ;

	t=label_ref(str) ;
	if(t==-1){
	}

	//	参照位置一覧に登録する
	for(i=0 ; i<8192 ; i++){

	}

}

//
int get_label_pos(char *str){
	int i ;
	for(i=0 ; i<label_idx ; i++){
		int n ;
		for(n=0 ; n<32 ; n++){
			if(label[label_idx][n]==0 || str[n]==0){
				return label_idx ;
			}
			if(str[n] != label[label_idx][n]){
				break ;
			}
		}
	}
	return -1 ;
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

	t = except_reg() ;
	if(t<4 && t>7){
		return -2 ;	//	not addr register
	}

	t = get_token() ;
	if(t!=7){
		op1 ; // @@@
		return r ;
	}

	t = get_token() ;


	if(t==2){
	}
	else if(t==3){	//	dec
	}
	else if(t==4){	//	hex
		op2 ;
	}

	return -1 ;
}



// Code generate.



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

	op1=r ;

	if(!except_T(6)){
		errorOut("\',\' require.") ;
		return ;
	}
	if(!except_addr_expr()){
		errorOut("Address expr require.") ;
		return ;
	}
}

void gen_ST(void){
}


void gen_lop(int op){
}


int parse(void){
	int t, code ;
	t = get_token() ;
printf("\ntoken[%s] type %d ", buff, t) ;

	switch(t){
	case 1:	//	Identifyer オペコード又は定数。定数の場合後ろはEQしか対応していない。
		code=get_opcode(buff) ;
		if(code!=-1){	//	オペコードらしい
			printf("\nOpecode[%s]", buff) ;
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
		else{	//	Identifier　たぶんこのあとeq定数が続く
			//	constantテーブルに登録してカレントにする。続くeqで定数定義
			int t ;


			t=register_const(buff) ;
printf("Const(%s):%d ", buff, t) ;
			if(t!=-1){
				currentIdentifier=t ;
				t=get_token() ;
				if(t!=1 && label_cmp("EQ", buff)==0){
					errorOut("EQ Required.\n") ;
					return -1 ;
				}
				else{
					int val ;

					t=get_token() ;
					if(t==3){
						val=str2int(10, buff) ;
					}
					else if(t==4){
						val=str2int(16, buff) ;
					}
					else{
						//	error
						errorOut("literal required.\n") ;
						return -1 ;
					}
printf("idx(%d) val:%X ", currentIdentifier, val) ;
					const_value[currentIdentifier]=val ;
					currentIdentifier=-1 ;
				}
			}
			else{
				currentIdentifier=-1 ;	//	Error @@@
			}
		}
		break ;
	case 2:	//	Directive
		break ;
	case 5:	//	Label ラベルは後ろの:を取って識別子表に登録されている。
		t = register_label(buff) ;
printf("label(%d)", t) ;
		break ;
	default:
		errorOut("Syntax error") ;
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
		currentIdentifier=-1 ;	//	カレント識別子　改行時にクリア

		pos = get_line(src_fp) ;
		if(pos==NULL) break ;

// printf("[%s]%ld\n", pos, strlen(pos)) ;

		parse() ;
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

	int i ;
	for(i=0 ; i<8192 ; i++){
		label_pos[i][0]=-1 ;
	}

	for(i=0 ; i<1024 ; i++){
		label_ref_pos[i]=-1 ;
		constant[i][0]=0 ;
		const_value[i]=-1 ;
	}
	for(i=0 ; i<16*1024 ; i++){
		code[i][0] = code[i][1]=0xff ;
	}
	const_value[0]=-1 ;
	label_pos[0][1]=-1 ;

	program() ;
}

