/*

CPU2908 assembler

asq:asq.c token.c
	cc -o asq asq.c token.c -Wno-format-security

t02.as

*/

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#include "token.h"

int Line = 0 ;
int errorCount=0 ;

void errorOut(char *str){
	errorCount++ ;
	fprintf(stderr, "Line %d :  Error %s\n", Line, str) ;
}

// 16進文字から整数へ
int char2int(char cc){
	if('0'<=cc && cc<='9'){
		return cc-'0' ;
	}
	else if(cc>='A' && 'F'>=cc){
		return cc-'A'+10 ;
	}
	else return -1 ;
}

int str2int(int radix, char *str){
	int retval=0 ;

	while(*str){
		retval = retval * radix + char2int(*str) ;
		str++ ;
	}
	return retval ;
}

//	30バイト比べておなじなら一致にする。（そもそも30バイトしかコピーしてない）
int str_cmp(char *str1, char* str2){
	int i ;
	if(*str1==0 || *str2==0) return 0 ;
	for(i=0 ; i<30 ; i++){
		if(str1[i]==0 && str2[i]==0) return 1 ;
		if(str1[i]!=str2[i]) return 0 ;
	}
	return 1 ;
}

int str_cpy(char *dst, char *src){
	int i ;
	for(i=0 ; i<30 ; i++){
		if(src[i]==0){
			dst[i]=0 ;
			return i ;
		}
		dst[i] = src[i] ;
	}
	dst[30]=0 ;
	return 30 ;
}




/*

行頭はラベル定義（宣言）、ディレクティブ、オペコード
ラベル定義のあとは上3つ
ディレクティブは　. で始まる予約語
そのあとはパラメータ ,  パラメータリスト…
オペコードは全て予約語で　オペコード＋必要ならオペランド , オペランドリスト
オペランドは無し、単項＋－、レジスタ名、レジスタ名＋－定数
識別子 eq 定数

ラベルの後のオペコードにも対応しなくちゃ

ラベル
Identifier:
識別子は30バイトまで比較する。Case非センシティブ

.db byte, ...
.dw word, ...

.org Location
.global label

オフセット計算

#bin
$HEX
0-9 dec


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



char inst_str[][6]={
"LD",	"ST",	"MOV",	"ADD",	"SUB",	"ADDC",	"SUBB","CMP",	//	1-8
"AND",	"OR",	"XOR",	"NOT",	"XCHG",	// 9-13
"SWB",	"SXT",	//	14,15
"PUSH",	"POP",	//16-17
"JNC",	"JC",	"JNO",	"JO",	"JNZ",	//	-22
"JZ",	"JNS",	"JS",	"JL",	"JG",	//	-27
"JMP",	"JMPS",	"JMPN",	// -30
"SHL","SHR","SAR",	//	-33
"INC","DEC",	//	34,35
"CALL",	"RET",	//	36,37
"SWI",	"IRET",	//	38,39
"EI",	"DI",	//	40,41
"STC",	"CMC",	//	42,43
"LDFR",	"STFR",	//	44,45
"TNS",	//	46
"NOP",	//	47
"SWI8",	// 48
""
} ;

char reg_str[][4]={
"R0", "R1", "R2", "R3",	// 0,1,2,3
"W0", "W1", "A0", "A1",	// 4,5,6,7
"CP", "SP",				// 8,9

//	Alternative
"A", "B", "C", "D",
"W", "V", "X", "Y",
"PC", "U", ""
} ;

char directive_str[][8]={
".ORG", ".DS", ".DB", ".DW","EQ",".GLOBAL",
""
} ;



int get_opcode(char *str){
	int i=0 ;

	while(inst_str[i][0]){
		char *inst=inst_str[i] ;

		if(str_cmp(str, inst)==1){	//	見つかった
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


int get_directive(char *str){
	int i=0 ;

	while(directive_str[i][0]){
		char *inst=directive_str[i] ;

		if(str_cmp(str, inst)==1){	//	見つかった
			return i ;
		}
		i++ ;
	}
	return -1 ;
}

/*
コード出力用ワーク
*/
int op ;
int op1, op2, op3 ;
int Location=0 ;


int label_value[1024] ;	//	-1:未定義　参照のみで定義されてない。前方参照。
char label[1024][32] ;	//	ラベル名 index はlabel_value と同じ
/*
ラベルの参照位置

[0] label[]のインデックス
[1] 参照元code[]のインデックス -1なら未使用
[2] Location
[3] 型1:バイト2:ワード3:絶対位置（ワード）（ニーモニックで判定する）
*/
int label_pos[2048][4] ;


//	文字列バッファ db で定義された値もここに書き込む
char strings[256][32] ;
int strings_pos[256] ;	//	Location


int currentIdt=-1 ;	//	EQ で定義される定数は識別子を登録した時にここに入れておく。行が変ったらクリア

// 定数テーブル
char constant[1024][32] ;
int const_value[1024] ;	//	定数　-1なら定数未定義　定数は直後の eq で定義するので。

/*
code[codePos][4]
4バイトで、あたまから
00.nn 空行、またはコメント行　nn:飛ばす行数（256行を超えて飛ばす時はもう1つ新たにエントリーを作成する予定）@@@
01.xx 1バイトコード
02.xx.xx ２バイトコード
03.xx.xx.xx ３バイトコード
0F.nn.mm	.ORGでアドレス指定が来た。（アドレスは重複するかもしれないけど、後ろにあるデータ優先で処理する。）
FE.nn.ll	.DBで文字列が来た。strings[nn],長さll
FF.xx 未使用。テーブル終端
ラベル、定数はそれぞれテーブルに保存する。

最後にコード読みながらリスティングを出力するときにも使う
コード生成しない行は圧縮する
*/
int codePos=0 ;
unsigned char code[16*1024][4] ;
int code_loc[16*1024] ;	//	ロケーション



int get_const_index(char *str){
	int i ;
	for(i=0 ; i<1024 ; i++){
		if(str_cmp(constant[i], str)){
			return i ;
		}
	}
	return -1 ;
}

int get_const_value(char *str){
	int t ;
	t=get_const_index(str) ;
	if(t>=0){
		return const_value[t] ;
	}
	return -1 ;
}


// str を数値に変換　10進　16進　定数など
int get_token_value(int t, char *str){
	int sign=1 ;

	if(t==-1) return 0 ;
	else if(t==7){
		t = get_token() ;
	}
	else if(t==8){	//	-
		t = get_token() ;
		sign=-1 ;
	}

	if(t==1){	//	identifyer
		int n = get_const_value(str) ;
		if(n==-1){	//	label
			return -1 ;
		}
		return (sign*n) & 0x0ffff ;
	}
	else if(t==3){	//	decimal
		return (sign*str2int(10, str)) & 0x0ffff ;
	}
	else if(t==4){	//	hex
		return (sign*str2int(16, str)) & 0x0ffff ;
	}
	else{
		return -1 ;
	}
}


int register_const(char *str){
	int i, t ;
	t = get_const_index(str) ;
	if(t!=-1){
		//	定数二重定義
		currentIdt=t ;
		return t ;
	}
	for(i=0 ; i<1024 ; i++){
		if(const_value[i]==-1){
			str_cpy(constant[i], str) ;
			currentIdt=i ;
			const_value[i]=0 ;
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

		あと、.db、.dwの後ろ
*/

int get_label_index(char* str){
	int i ;
	for(i=0 ; i<1024 ; i++){
		if(str_cmp(label[i], str)){
			return i ;
		}
	}
	return -1 ;
}

//	ラベル登録
int register_label(char* str){
	int i ;

	for(i=0 ; i<1024 ; i++){
		if(label[i][0]==0){
			str_cpy(label[i], str) ;
			label_value[i]=-1 ;

			return i ;
		}
	}

	if(i==1024){
		errorOut("Label table Overflow.") ;
		return -1 ;	//	満員です
	}
	return -1 ;
}



/*
参照位置を追加
codePos, label[idx]
reftype:0 8bit offset
*/
int label_add_ref(int codePos, int idx, int reftype){
	int i ;

	for(i=0 ; i<2048 ; i++){
		if(label_pos[i][0]==-1){
			label_pos[i][0]=idx ;
			label_pos[i][1]=codePos ;
			label_pos[i][2]=Location ;
			label_pos[i][3]=reftype ;
			return i ;
		}
	}
	return -1 ;
}


//	idx位置のラベルのLocationが確定したので、codeリライト
int label_rewrite(int idx){
	int i, pos, loc ;
	int offset ;
	char c0, c1 ;

	for(i=0 ; i<2048 ; i++){
		if(label_pos[i][0]==idx){
			pos = label_pos[i][1] ;
			loc = label_pos[i][2] ;

			switch(label_pos[i][3]){
			case 1:	//	byte ;
				c1 = 0 ;
				offset=label_value[idx] -(loc+2) ;
				c0 = offset & 0x00ff ;
				break ;
			case 2:	//	word ;
				offset=label_value[idx] -(loc+3) ;
				c0=offset & 0x00ff ;
				c1=(offset >> 8) & 0x00ff ;
				break ;
			case 3:	// absolute ;
				c0=label_value[idx] & 0x00ff ;
				c1=(label_value[idx] >> 8) & 0x00ff ;
				break ;
			}
			label_pos[i][0]=-1 ;	//	開放
			code[pos][2]=c0;
			code[pos][3]=c1;
		}
	}
	return i ;
}



/*
ラベルのロケーション
labelから一致したエントリーを探す。-1なら未定義。
*/
int get_label_value(char* str){
	int t = get_label_index(str) ;
	if(t!=-1) return label_value[t] ;
	return -1 ;
}




/*
	get_line　一行読み込んでポインタを返す。ファイルの終わりならNULLを返す
		一行最大80バイト

	fp : 入力ファイル
	skip_tab : 行の先頭のTABとスペース、コメントをスキップ

*/
char fileBuff[82] ;

char* get_line(FILE* fp, int skip_tab){
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
		else if((cc!=' ' && cc!=9) || skip_tab==0){
			fileBuff[0]=(int)cc ;
			break ;
		}
	}
	for(i=0 ; i<80 ; i++){
		fileBuff[i+1]=0 ;
		if(fileBuff[i]==0x0a){
			fileBuff[i]=0 ;
			Line++ ;
			return fileBuff ;
		}
		if(fileBuff[i]==';' && skip_tab==1){
			fileBuff[i]=0 ;
			break ;
		}
		len = fread(fileBuff+i+1, 1, 1, fp) ;
		if(len!=1){
			fileBuff[i+1]=0 ;
			return fileBuff ;
		}
	}
	while(1){
		unsigned char cc ;
		len = fread(&cc, 1, 1, fp) ;
		if(len!=1){
			return NULL ;
		}
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


int except_reg(void){
	int r, t ;

	t = get_token() ;
	if(t==1){
		r = get_register(buff) ;
		if(r>=0) return r ;
	}
	return -1 ;
}


// Code generate.
void emit(int pos, int loc, char code0, char code1, char code2, char code3){
	//printf("emit %04X : [%02X %02X %d %d]\n", loc, (unsigned char)code0, (unsigned char)code1, code2, code3) ;
	code_loc[pos]=loc ;
	code[pos][0]=code0 ;
	code[pos][1]=code1 ;
	code[pos][2]=code2 ;
	code[pos][3]=code3 ;
}

/*
LD dst,src
srcは(A0|A1|SP)、(A0|A1|SP)＋－imm、
*/
int gen_LD(void){
	int r, t, base, sign=1 ;

	r=except_reg() ;
	if(r==-1){
		errorOut("Register require.") ;
		return 0 ;
	}

	if(r==4 || r==5){	//	WReg
		;
	}
	else if(r<0 && r>3){
		errorOut("Byte register require.") ;
		return 0 ;
	}
	op1=r ;

	if(!except_T(6)){
		errorOut("\',\' require.") ;
		return 0 ;
	}

	r=except_reg() ;
	if(r==-1){	//
		errorOut("Register require.") ;
		return 0 ;
	}
	else if(op1==4 || op1==5){
		if(r==6 || r==7){
			emit(codePos, Location, 1, 0x24 +(r-6)*2 + op1-4, 0, 0) ;
			return 1 ;
		}
		return 0 ;
	}
	else{
		op2 = r ;
		t = get_token() ;
		//printf("t(%d) ", t) ;
		if(t==7 || t==8){	// +-
			if(t==8) sign=-1 ;
			//	後ろにオフセットが付くはず
			t = get_token() ;

			op3 = get_token_value(t, buff) ;

			if(op3==-1){
				errorOut("Offset must be number.") ;
				return 0 ;
			}

			op3*=sign ;

			base = 0x10+(op2-6)*4 ;
			if(op2==9){
				base = 0x20 ;
			}
			//printf("offset(%d) ", op3) ;
			emit(codePos, Location, 2, base + op1, op3, 0) ;
			return 2 ;
		}
		else{	//	+-が無い場合はオフセット無しとして後ろは読み飛ばす
			int src ;
			//printf("no offset ") ;
			if(op2==9){	// Stack pointer. SPなら必ずオフセットつけなくちゃだめ
				errorOut("Offset reqired SP base addressing.") ;
				return 0 ;
			}

			if(op2==6 || op2==7){
				emit(codePos, Location, 1, 0x00 + op1 + (op2-6)*4, 0, 0) ;
				return 1 ;
			}
		}
	}

	return 0 ;
}



int gen_ST(void){
	int r, t, base, sign ;

	sign=1 ;
	r=except_reg() ;
	if(r==-1){
		errorOut("Register require.") ;
		return 0 ;
	}
	op1=r-6 ;

	op3=0 ;
	t = get_token() ;
	if(t==7 || t==8){	// +-
		if(t==8) sign=-1 ;
		t = get_token() ;

		if(t==3){	//	decimal
			op3=str2int(10, buff) ;
		}
		else if(t==4){	//	hex
			op3=str2int(16, buff) ;
		}
		else{
			errorOut("Offset must be number.") ;
			return 0 ;
		}
		op3 = op3 * sign ;
		t = get_token() ;
	}

	if(t!=6){
		errorOut("\',\' require.") ;
		return 0 ;
	}

	r=except_reg() ;
	if(r==-1){	//
		errorOut("Register require.") ;
		return 0 ;
	}
	if(r==4 || r==5){	//	WReg
		emit(codePos, Location, 1, 0x2c + op1*2 + r - 4, 0, 0) ;
		return 1 ;
	}
	else if(r<0 && r>3){
		errorOut("Byte register require.") ;
		return 0 ;
	}
	if(op1==9){
		emit(codePos, Location, 2, 0x28 + r, op3, 0) ;
		return 2 ;
	}
	else{
		if(op3==0){
			emit(codePos, Location, 1, 0x08 + op1*4 + r, 0, 0) ;
			return 1 ;
		}
		else{
			emit(codePos, Location, 2, 0x18 + op1*4 + r, op3, 0) ;
			return 2 ;
		}
	}

	return 0 ;
}


int gen_lop(int op){	//	return opecode
	int t, op1, op2 ;

	t = get_token() ;
	op1 = get_register(buff) ;

	if(!except_T(6)){
		errorOut("\',\' require.") ;
		return 0 ;
	}

	t = get_token() ;
	op2 = get_register(buff) ;

	if(op2==-1){
		op2 = get_token_value(t, buff) ;

		emit(codePos, Location, 2, op+5, op2, 0) ;
		return 2 ;
	}
	else{
		emit(codePos, Location, 1, op+(op1 & 1)*2 + op2, 0, 0) ;
		return 1 ;
	}

	return 0 ;
}

//	1 operand instruction
int gen_1ope(int op){
	int t, op1 ;

	op1 = get_token() ;

	t = get_register(buff) ;

	if(t!=-1){
		emit(codePos, Location, 1, op+t, 0, 0) ;
		return 1 ;
	}

	return 0 ;
}

int gen_PUSH(void){
	int t ;

	op1 = get_token() ;
	t = get_register(buff) ;
	switch(t){
	case 4: case 5: op=0x60+t-4 ; break ;
	case 6: case 7: case 8: op=0x64+t-6 ; break ;
	default: return 0 ;
	}
	emit(codePos, Location, 1, op, 0, 0) ;
	return 1 ;
}

int gen_POP(void){
	int t ;

	op1 = get_token() ;
	t = get_register(buff) ;
	switch(t){
	case 4: case 5: op=0x68+t-4 ; break ;
	case 6: case 7: case 8: case 9: op=0x6C+t-6 ; break ;
	default: return 0 ;
	}
	emit(codePos, Location, 1, op, 0, 0) ;
	return 1 ;
}

int gen_INC_DEC(int op){
	int t ;

	op1 = get_token() ;

	t = get_register(buff) ;

	if(t!=-1){
		if(t<8){
			emit(codePos, Location, 1, op+t, 0, 0) ;
			return 1 ;
		}
	}

	return 0 ;
}



int gen_XCHG(void){
	int t, r, op, imm ;

	t = get_token() ;
	op1 = get_register(buff) ;

	if(!except_T(6)){
		errorOut("\',\' require.") ;
		return 0 ;
	}

	t = get_token() ;
	op2 = get_register(buff) ;
	if((op1==4 && op2==5) || (op1==5 && op2==4)){
		op=0x74 ;
	}
	else if((op1==6 && op2==7) || (op1==7 && op2==6)){
		op=0x75 ;
	}
	else if((op1==6 && op2==4) || (op1==4 && op2==6)){
		op=0x76 ;
	}
	else if((op1==5 && op2==7) || (op1==7 && op2==5)){
		op=0x77 ;
	}
	else{
		errorOut("Illigual oprand.") ;
		return 0 ;
	}
	emit(codePos, Location, 1, op, 0, 0) ;
	return 3 ;
}


int gen_MOV(void){
	int t, r, op, imm, id, pos ;

	t = get_token() ;
	op1 = get_register(buff) ;

	if(!except_T(6)){
		errorOut("\',\' require.") ;
		return 0 ;
	}

	t = get_token() ;
	op2 = get_register(buff) ;
	if(op2==-1){
		imm = get_token_value(t, buff) ;
		if(imm==-1){
			//printf(" label?(%s) ", buff) ;
			t=get_label_index(buff) ;	//	なかったら定数ではないのでラベルを探す
			if(t==-1){
				id = register_label(buff) ;	//	初登場のラベル
			}
			else{
				id = t ;
			}
			pos = get_label_value(buff) ;
			if(pos>=0){	//	位置がわかってる=定義されている
				imm = pos ;
			}
			else{	// 参照位置の登録
				label_add_ref(codePos, id, 3) ;
				imm=0 ;
			}
		}
		if(op1>=6 && op1<=9){
			op=0x7c+op1-6 ;
		}
		emit(codePos, Location, 3, op, imm & 0x00ff,  (imm >> 8) & 0x00ff) ;
		return 3 ;
	}

	switch(op1*10+op2){
	case  2: op=0x40 ; break ;
	case  3: op=0x41 ; break ;
	case 12: op=0x42 ; break ;
	case 13: op=0x43 ; break ;

	case 20: op=0x44 ; break ;
	case 21: op=0x45 ; break ;
	case 30: op=0x46 ; break ;
	case 31: op=0x47 ; break ;

	case  1: op=0x48 ; break ;
	case 10: op=0x49 ; break ;
	case 23: op=0x4A ; break ;
	case 32: op=0x4B ; break ;

	case 86: op=0x4C ; break ;
	case 96: op=0x4D ; break ;
	case 87: op=0x4E ; break ;
	case 97: op=0x4F ; break ;

	case 46: op=0x50 ; break ;
	case 47: op=0x51 ; break ;
	case 56: op=0x52 ; break ;
	case 57: op=0x53 ; break ;

	case 64: op=0x54 ; break ;
	case 74: op=0x55 ; break ;
	case 65: op=0x56 ; break ;
	case 75: op=0x57 ; break ;

	case 45: op=0x58 ; break ;
	case 54: op=0x59 ; break ;
	case 67: op=0x5A ; break ;
	case 76: op=0x5B ; break ;

	case 68: op=0x5C ; break ;
	case 69: op=0x5D ; break ;
	case 78: op=0x5E ; break ;
	case 79: op=0x5F ; break ;

	default:
		errorOut("Illigual operand.") ;
		return 0 ;
		break ;
	}
	emit(codePos, Location, 1, op, 0, 0) ;
	return 1 ;
}



int gen_Jcc(void){	//	return offset
	int offset=0 ;
	int sign=1 ;
	int id, pos ;

	int t=get_token() ;	//	ラベルは後ろの:が無いから識別子で返って来る
	if(t==1){	//	ident
		id = get_const_index(buff) ;	//	定数に登録されているか（定数は先に定義しておかないといけない）
		if(id==-1){
			//printf(" label?(%s) ", buff) ;
			t=get_label_index(buff) ;	//	なかったら定数ではないのでラベルを探す
			if(t==-1){
				id = register_label(buff) ;	//	初登場のラベル
			}
			else{
				id = t ;
			}
		}
		else{	//	定数だった
			offset=get_token_value(t, buff) ;

			offset = offset*sign ;
			return offset ;
		}

		pos = get_label_value(buff) ;
		//printf(" label value(%d) loc %d ", pos, Location) ;

		if(pos>=0){	//	位置がわかってる=定義されている
			offset = pos - (Location+2) ;
		}
		else{	// 参照位置の登録
			label_add_ref(codePos, id, 1) ;
		}
	}
	else if(t!=-1){
		offset=get_token_value(t, buff) ;
		//	error 処理　@@@

		offset = offset*sign ;
	}

	//printf("offset(%s : %d)", buff, offset) ;
	return offset ;
}

int get_offset16(int t){
	int offset=0 ;
	int sign=1 ;
	int id, pos ;

	// t=get_token() ;	//	ラベルは後ろの:が無いから識別子で返って来る
	if(t==1){	//	ident
		id = get_const_index(buff) ;	//	定数に登録されているか（定数は先に定義しておかないといけない）
		if(id==-1){
			//printf(" label?(%s) ", buff) ;
			t=get_label_index(buff) ;	//	なかったら定数ではないのでラベルを探す
			if(t==-1){
				id = register_label(buff) ;	//	初登場のラベル
			}
			else{
				id = t ;
			}
		}
		else{	//	定数だった
			offset=get_token_value(t, buff) ;

			offset = offset*sign ;
			return offset ;
		}

		pos = get_label_value(buff) ;
		//printf(" label value(%d) loc %d ", pos, Location) ;

		if(pos>=0){	//	位置がわかってる=定義されている
			offset = pos - (Location+3) ;
		}
		else{	// 参照位置の登録
			label_add_ref(codePos, id, 2) ;
		}
	}
	else if(t!=-1){
		offset=get_token_value(t, buff) ;
		//	error 処理　@@@

		offset = offset*sign ;
	}

	//printf("offset(%s : %d)", buff, offset) ;
	return offset ;
}

int gen_CALL(void){
	int offset=0 ;
	int r, t  ;

	t=get_token() ;	//	ラベルは後ろの:が無いから識別子で返って来る
	if(t==1){	//	ident
		r = get_register(buff) ;
		if(r==6){
			emit(codePos, Location, 1, 0xf8, 0, 0) ;
			return 1 ;
		}
		else if(r==7){
			emit(codePos, Location, 1, 0xf9, 0, 0) ;
			return 1 ;
		}
		else{
			offset = get_offset16(t) ;
			emit(codePos, Location, 3, 0xfa, offset & 0x00ff, (offset >> 8) & 0x00ff) ;
			return 3 ;
		}
	}
	return 0 ;
}


int code_gen(void){
	int t, code, gen=0 ;
	int n ;
	int codeByte=0 ;
	int idx ;
	int offset ;
	int cc ;

	t = get_token() ;

	switch(t){
	case 1:	//	Identifyer オペコード又は定数。定数の場合後ろはEQしか対応していない。
		code=get_opcode(buff) ;
		if(code!=-1){	//	オペコードらしい
			code++ ;
			gen=1 ;

			switch(code){
			case 1:	//	LD
				op=1 ;
				codeByte = gen_LD() ;
				break ;
			case 2:	//	ST
				op=2 ;
				codeByte = gen_ST() ;
				break ;
			case 3:	//	MOV
				codeByte = gen_MOV() ;
				break ;
			case 4:		//	ADD
				codeByte = gen_lop(0x80) ;
				break ;
			case 5:		//	SUB
				codeByte = gen_lop(0x88) ;
				break ;
			case 6:		//	ADDC
				codeByte = gen_lop(0x90) ;
				break ;
			case 7:		//	SUBB
				codeByte = gen_lop(0x98) ;
				break ;
			case 8:		//	CMP
				codeByte = gen_lop(0xa8) ;
				break ;
			case 9:		//	AND
				codeByte = gen_lop(0xa0) ;
				break ;
			case 10:	//	OR
				codeByte = gen_lop(0xb8) ;
				break ;
			case 11:	//	XOR
				codeByte = gen_lop(0xb0) ;
				break ;
			case 12:	//	NOT
				codeByte = gen_1ope(0xc0) ;
				break ;
			case 13:	//	XCHG
				codeByte = gen_XCHG() ;
				break ;
			case 14:	//	SWapByte
				get_token() ;
				op1=get_register(buff) ;
				if(op1==4){
					emit(codePos, Location, 1, 0x62, 0, 0) ;
					codeByte = 1 ;
				}
				else if(op1==5){
					emit(codePos, Location, 1, 0x63, 0, 0) ;
					codeByte = 1 ;
				}
				break ;
			case 15:	//	SignXTend
				get_token() ;
				op1=get_register(buff) ;
				if(op1==4){
					emit(codePos, Location, 1, 0x6A, 0, 0) ;
					codeByte = 1 ;
				}
				else if(op1==5){
					emit(codePos, Location, 1, 0x6B, 0, 0) ;
					codeByte = 1 ;
				}
				break ;
			case 16:	//	PUSH
				codeByte = gen_PUSH() ;
				break ;
			case 17:	//	POP
				codeByte = gen_POP() ;
				break ;
			case 18: case 19: case 20: case 21:
			case 22: case 23: case 24: case 25:
			case 26: case 27: // JL,JG
			case 29:	//	JPS
				if(code==27) cc=0xe8 ;
				else if(code==28) cc=0xe9 ;
				else if(code==29) cc=0xee ;
				else cc=code-18+0xe0 ;

				offset=gen_Jcc() ;
				emit(codePos, Location, 2, cc, offset, 0) ;
				codeByte=2 ;
				break ;
			case 28:	//	JMP i16
				offset = get_offset16(get_token()) ;
				emit(codePos, Location, 3, 0xfe, offset & 0x00ff, (offset >> 8) & 0x00ff) ;
				codeByte = 3 ;
				break ;
			case 30:	//	JPN
				emit(codePos, Location, 2, 0xef, 0, 0) ;
				codeByte=1 ;
				break ;
			case 31:	//	SHL
				codeByte = gen_1ope(0xc4) ;
				break ;
			case 32:	//	SHR
				codeByte = gen_1ope(0xc8) ;
				break ;
			case 33:	//	SAR
				codeByte = gen_1ope(0xcc) ;
				break ;
			case 34:	//	INC
				codeByte = gen_INC_DEC(0xd0) ;
				break ;
			case 35:	//	DEC
				codeByte = gen_INC_DEC(0xd8) ;
				break ;
			case 36:	//	CALL
				codeByte=gen_CALL() ;
				break ;
			case 37:	//	RET
				emit(codePos, Location, 1, 0x6e, 0, 0) ;	//	RETは POP CP
				codeByte=1 ;
				break ;
			case 38:	//	SWI
				t = get_token() ;
				if(t==-1){
					codeByte=0 ;
				}
				else{
					t = get_token_value(t, buff) ;
					emit(codePos, Location, 2, 0xed, (char)t, 0) ;
					codeByte=2 ;
				}
				break ;
			case 39:	//	IRET
				emit(codePos, Location, 1, 0xfd, 0, 0) ;
				codeByte=1 ;
				break ;
			case 40:	//	EI
				emit(codePos, Location, 1, 0xf5, 0, 0) ;
				codeByte=1 ;
				break ;
			case 41:	//	DI
				emit(codePos, Location, 1, 0xf4, 0, 0) ;
				codeByte=1 ;
				break ;
			case 42:	//	STC
				emit(codePos, Location, 1, 0xf6, 0, 0) ;
				codeByte=1 ;
				break ;
			case 43:	//	CMC
				emit(codePos, Location, 1, 0xf7, 0, 0) ;
				codeByte=1 ;
				break ;
			case 44:	//	LDFR
				emit(codePos, Location, 1, 0xea, 0, 0) ;
				codeByte=1 ;
				break ;
			case 45:	//	STFR
				emit(codePos, Location, 1, 0xeb, 0, 0) ;
				codeByte=1 ;
				break ;
			case 46:	//	TNS
				emit(codePos, Location, 1, 0xfc, 0, 0) ;
				codeByte=1 ;
				break ;
			case 48:	//	SWI8
				emit(codePos, Location, 1, 0xec, 0, 0) ;
				codeByte=1 ;
				break ;
			case 47:	//	NOP
				emit(codePos, Location, 1, 0xff, 0, 0) ;
				codeByte=1 ;
				break ;
			default:
				gen=0 ;
				codeByte=0 ;
				break ;
			}

			if(codeByte==0){
				return 0 ;
			}
			Location+=codeByte ;
		}
		else{	//	Identifier　たぶんこのあとeq定数が続く
			//	constantテーブルに登録してカレントにする。続くeqで定数定義
			int t ;

			t=register_const(buff) ;

			if(t!=-1){
				currentIdt=t ;
				t=get_token() ;
				if(t!=1 && str_cmp("EQ", buff)==0){
					errorOut("EQ Required.\n") ;
					return -1 ;
				}
				else{	//	eq
					int val ;

					t=get_token() ;
					t = get_token_value(t, buff) ;
					if(t==-1){
						//	error
						errorOut("literal required.\n") ;
						return -1 ;
					}

					const_value[currentIdt]=t ;
					currentIdt=-1 ;
				}
			}
			else{
				currentIdt=-1 ;	//	Error @@@
			}
		}
		break ;
	case 2:	//	Directive
		t = get_directive(buff) ;

		switch(t){
		case 0:	//	.org
			t = get_token() ;
			n = get_token_value(t, buff) ;

			if(n==-1){
				errorOut("Not a number.") ;
			}
			else{
				Location = n ;
			}
			break ;
		case 1: // .ds
			t = get_token() ;
			if(t==10){
				for(int i=0 ; i<256 ; i++){
					if(strings[i][0]==0){
						t = str_cpy(strings[i], buff) ;
						strings_pos[i]=Location ;

						emit(codePos, Location, 0xfe, i, t, 0) ;
						break ;
					}
				}
			}
			gen=1 ;
			Location +=t+1 ;

			break ;
		case 2: // .db
			{
				int n=0, i ;
				int pos ;

				//	空きを探しておく
				for(i=0 ; i<256 ; i++){
					if(strings[i][0]==0){
						pos = i ;
						break ;
					}
				}

				if(pos==-1){
					errorOut("Full up string store.") ;
					gen=-1 ;
					break ;
				}

				strings_pos[pos]=Location ;
				while(1){
					t = get_token() ;
					if(t==-1){
						break ;
					}
					else if(t==10){
						t = str_cpy(strings[i]+n, buff) ;
						n+=t ;
					}
					else{
						t = get_token_value(t, buff) ;
						strings[i][n]=t ;
						n++ ;
					}

					t = get_token() ;
					if(t!=6) break ;	//	accept(',') ;
				}
				emit(codePos, Location, 0xfe, pos, n, 0) ;
				gen=1 ;
				Location+=n ;
			}	//	end of directive switch.
		}
		break ;
	case 5:	//	Label
		idx=get_label_index(buff) ;
		if(idx<0){
			idx = register_label(buff) ;
		}
		label_value[idx] = Location ;
		label_rewrite(idx) ;

		gen=-1 ;
		break ;
	default:
		if(buff[0]!=0){
			errorOut("Syntax error") ;
		}
		break ;
	}

	return gen ;
}


/*

*/
FILE* src_fp ;
FILE* mem_fp ;
FILE* prn_fp ;
char fname[256] ;

extern char* pos ;

int program(void){
	int t, i=0 ;

	//　ソース読みながらコード生成
	while(1){
		op1=op2=op3=-1 ;
		currentIdt=-1 ;	//	カレント識別子　改行時にクリア

		pos = get_line(src_fp, 1) ;
		//printf("L:%d %s\n", Line, pos) ;
		if(pos==NULL) break ;

		t = code_gen() ;
		if(t<1){ //	空行Pack
			if(codePos > 0 && code[codePos-1][0]==0){
				if(code[codePos-1][1]==255){
					code[codePos-1][2]++ ;
					code[codePos-1][1]=0 ;
				}
				else{
					code[codePos-1][1]++ ;
				}
			}
			else{
				code[codePos][0]=0 ;
				code[codePos][1]=1 ;
				codePos++ ;
			}
		}
		else{
			codePos++ ;
		}
		code[codePos][0]=0xff ;

		i++ ;
	}

	return 0 ;
}


void show_label_list(FILE *fp){
	int i ;

	fprintf(fp, "\nLabel ***\n") ;
	for(i=0 ; i<1024 ; i++){
		if(label[i][0]!=0){
			if(label_value[i]==-1){
				fprintf(fp, "*UDEF = %s\n", label[i]) ;
			}
			else{
				fprintf(fp, " %04X = %s\n", label_value[i], label[i]) ;
			}
		}
	}
}

void show_const_list(FILE *fp){
	int i ;

	fprintf(fp, "\nConstant ***\n") ;
	for(i=0 ; i<1024 ; i++){
		if(constant[i][0]!=0){
			fprintf(fp, " %04X = %s\n", const_value[i], constant[i]) ;
		}
	}
}

void print_spc(FILE *fp, int n){
	fprintf(fp, "          "+(2*n)) ;
}

int locate=0 ;
short mem[64*1024] ;

void dumpCode(FILE *out_fp){
	int i ;
	int loc=0 ;

	for(i=0 ; i<16*1024 ; i++){
		if(code[i][0]==0xff){
			break ;
		}
		else if(code[i][0]==0xfe){	//	string
			fprintf(out_fp, "%04X : ", code_loc[i]) ;
			loc = code_loc[i]+code[i][2] ;
			for(int n=0 ; n<code[i][2] ; n++){
				fprintf(out_fp, "%02X ", strings[code[i][1]][n]) ;
			}
			fprintf(out_fp, "\n") ;
		}
		else if(code[i][0]==0xfd){	//	db
			fprintf(out_fp, "%04X : ", code_loc[i]) ;
			loc = code_loc[i]+code[i][2] ;
			fprintf(out_fp, "%02X\n", code[i][1]) ;
		}
		else{
			if(code[i][0]!=0){
				fprintf(out_fp, "%04X : ", code_loc[i]) ;
				loc = code_loc[i] ;
				int n ;
				for(n=0 ; n<code[i][0] ; n++){
					fprintf(out_fp, "%02X ", code[i][n+1]) ;
				}
				fprintf(out_fp, "\n") ;
				loc+=code[i][0] ;
			}
		}
	}
}

void outListing(FILE *fp, FILE *out_fp){
	int i ;
	int loc=0 ;

	char *pos = get_line(fp, 0) ;

	fprintf(out_fp, "\nCode ***\n") ;
	for(i=0 ; i<16*1024 ; i++){
		if(code[i][0]==0xff){
			break ;
		}
		else if(code[i][0]==0xfe){	//	string
			fprintf(out_fp, " %04X ", code_loc[i]) ;
			loc = code_loc[i]+code[i][2] ;
			for(int n=0 ; n<code[i][2] ; n++){
				fprintf(out_fp, "%02X", strings[code[i][1]][n]) ;
			}
			fprintf(out_fp, "\n") ;
			fprintf(out_fp, "                %s\n", pos) ;
			pos = get_line(fp, 0) ;
		}
		else if(code[i][0]==0xfd){	//	db
			fprintf(out_fp, " %04X ", code_loc[i]) ;
			loc = code_loc[i]+code[i][2] ;
			fprintf(out_fp, "%02X\n", code[i][1]) ;
			fprintf(out_fp, "                %s\n", pos) ;
			pos = get_line(fp, 0) ;
		}
		else{
			if(code[i][0]==0){
				int n ;
				for(n=0 ; n<code[i][1] ; n++){
					fprintf(out_fp, "                %s\n",pos) ;
					pos = get_line(fp, 0) ;
				}
			}
			else{
				fprintf(out_fp, " %04X ", code_loc[i]) ;
				loc = code_loc[i] ;
				int n ;
				for(n=0 ; n<code[i][0] ; n++){
					fprintf(out_fp, "%02X", code[i][n+1]) ;
				}
				print_spc(out_fp, code[i][0]) ;
				loc+=code[i][0] ;
				fprintf(out_fp, "%s\n", pos) ;
				pos = get_line(fp, 0) ;
			}
		}
	}
	fprintf(out_fp, " %04X\n\nEND ***\n", loc) ;
}

unsigned char l=0 ;

int main(int argc, char** argv){
	int i ;

	if(argc<=1){
		printf("Usage : asq FILENAME\n") ;
		exit(1) ;
	}

	for(int i=1 ; i<argc ; i++){
		if(argv[i][0]=='-'){
			switch(argv[i][1]){
			case 'v': case 'l': l=1 ; break ;
			default:
				printf(" Unknown opetion %c. \n", argv[i][1]) ;
				exit(1) ;
				break ;
			}
		}
	}

	strcpy(fname, argv[1]) ;
	if(strlen(fname)>=80){
		printf("Error : Filename too long.\n") ;
		exit(1) ;
	}

	src_fp=fopen(fname, "r") ;
	if(src_fp==NULL){
		printf("Error : Src file Can't open.\n") ;
		exit(1) ;
	}

	char *pos = strrchr(fname, '.') ;
	*pos=0 ;
	strcat(fname, ".prn") ;

	prn_fp=fopen(fname, "wb") ;
	if(prn_fp==NULL){
		fclose(src_fp) ;
		printf("Error : PRN file Can't open.\n") ;
		exit(1) ;
	}

	*pos=0 ;
	strcat(fname, ".mem") ;

	mem_fp=fopen(fname, "wb") ;
	if(mem_fp==NULL){
		fclose(src_fp) ;
		fclose(prn_fp) ;
		printf("Error : MEM file Can't open.\n") ;
		exit(1) ;
	}

	for(i=0 ; i<2048 ; i++){
		label_pos[i][0]=-1 ;
	}
	for(i=0 ; i<256 ; i++){
		strings[i][0]=0 ;
	}

	for(i=0 ; i<1024 ; i++){
		constant[i][0]=0 ;
		const_value[i]=-1 ;
		label[i][0]=0 ;
	}
	const_value[0]=-1 ;
	label_pos[0][1]=-1 ;

	program() ;
	if(errorCount!=0){
		fclose(src_fp) ;
		fclose(prn_fp) ;
		fclose(mem_fp) ;
		exit(1) ;
	}

	if(l){
		show_label_list(stdout) ;
		show_const_list(stdout) ;
		rewind(src_fp) ;
		outListing(src_fp, stdout) ;
	}

	dumpCode(mem_fp) ;

	show_label_list(prn_fp) ;
	show_const_list(prn_fp) ;

	rewind(src_fp) ;
	outListing(src_fp, prn_fp) ;

	fclose(src_fp) ;
	fclose(prn_fp) ;
	fclose(mem_fp) ;

	exit(0) ;
}

