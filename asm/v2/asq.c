/*

CPU2908 assembler
Ver 1.0 M.Okada

asq:asq.c token.c get_word.c get_line.c
	cc -o asq asq.c token.c get_word.c get_line.c -Wno-format-security

*/


/*

行頭はラベル定義（宣言）、ディレクティブ、オペコード
ラベル定義のあとは行末まで読み飛ばす

ディレクティブは　. で始まる予約語と "EQ"
そのあとはパラメータ ,  パラメータリスト…

オペコードは全て予約語で　オペコード＋必要ならオペランド , オペランドリスト
オペランドは、無し、レジスタ名、レジスタ名＋－定数、定数、ラベルなど。

識別子 eq 定数　で定数定義。

ラベルはコロンで終わる
Identifier:
識別子は30バイトまで比較する。Case非センシティブ

.db
バイト定数、または文字列（'文字列はシングルクォーテーションで囲む'）を','で区切って並べる

.org Location
コードのロケーションを指定する。

.global label　グローバルラベル（未対応）


・数値リテラル

#bin（未対応）
$HEX
0-9 ではじまるのはDEC

;　行末までコメント
{} コメント
*/


#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#include "q_typedef.h"
#include "token.h"
#include "get_word.h"


UINT Line = 0 ;
UINT errorCount=0 ;
UINT FF=0x0ffff ;	//	16bit -1

void errorOut(char *str){
	errorCount++ ;
	fprintf(stderr, "Line %d :  Error %s\n", Line, str) ;
}


UINT neg(UINT n){
	return((~n) +1) & 0x0ffff ;
}

// 16進文字から整数へ
UINT char2int(char cc){
	if('0'<=cc && cc<='9'){
		return cc-'0' ;
	}
	else if(cc>='A' && 'F'>=cc){
		return cc-'A'+10 ;
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

char *str_rchar(char *str, char cc){
}

//	30バイト比べておなじなら一致にする。（そもそも30バイトしかコピーしてない）
UINT str_cmp(char *str1, char* str2){
	UINT i ;
	if(*str1==0 || *str2==0) return 0 ;
	for(i=0 ; i<30 ; i++){
		if(str1[i]==0 && str2[i]==0) return 1 ;
		if(str1[i]!=str2[i]) return 0 ;
	}
	return 1 ;
}

UINT str_cpy(char *dst, char *src){
	UINT i ;
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
コード出力用ワーク
*/
UINT op ;
UINT op1, op2, op3 ;
UINT Location=0 ;

//　ラベル
UINT label_value[1024] ;	//	-1:未定義　参照のみで定義されてない。前方参照。
char label[1024][32] ;	//	ラベル名 index はlabel_value と同じ

/*
ラベルの参照位置

[0] label[]のインデックス
[1] 参照元code[]のインデックス -1なら未使用
[2] Location
[3] 型1:バイト2:ワード3:絶対位置（ワード）（ニーモニックで判定する）
*/
UINT label_pos[2048][4] ;

//	文字列バッファ db で定義された値もここに書き込む
char strings[256][32] ;


UINT currentIdt ;	//	EQ で定義される定数は識別子を登録した時にここに入れておく。行が変ったらクリア

// 定数テーブル
char constant[1024][32] ;
UINT const_value[1024] ;	//	定数　-1なら定数未定義　定数は直後の eq で定義するので。

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
UINT codePos=0 ;
unsigned char code[16*1024][4] ;
UINT code_loc[16*1024] ;	//	ロケーション


extern char fileBuff[82] ;
char* get_line(FILE* fp, UINT skip_tab) ;

extern char buff[128] ;

UINT accept_T(UINT type){
	UINT t ;
	char * ptr ;
	t = get_token() ;
	if(t==type) return 1 ;
	return FF ;
}

UINT except_T(UINT type){
	if(accept_T(type)==1) return 1 ;
	else return 0 ;
}


UINT except_reg(void){
	UINT r, t ;

	t = get_token() ;
	if(t==1){
		r = get_register(buff) ;
		if(r!=FF) return r ;
	}
	return FF ;
}


// Code generate.
UINT emit(UINT pos, UINT loc, char nByte, char code1, char code2, char code3){
	//printf("emit(%d, %x, %d, %x, %x, %x)\n", pos, loc, nByte, code1, code2, code3) ;
	code_loc[pos]=loc ;
	code[pos][0]=nByte ;
	code[pos][1]=code1 ;
	code[pos][2]=code2 ;
	code[pos][3]=code3 ;
	return nByte ;
}

UINT emit1(UINT codePos, UINT location, char code){
	emit(codePos, Location, 1, code, 0, 0) ;
	return 1 ;
}



UINT get_const_index(char *str){
	UINT i ;
	for(i=0 ; i<1024 ; i++){
		if(str_cmp(constant[i], str)){
			return (UINT)i ;
		}
	}
	return FF ;
}

UINT get_const_value(char *str){
	UINT t ;
	t=get_const_index(str) ;
	if(t!=FF){
		return const_value[t] ;
	}
	return FF ;
}


/*
str を数値に変換　10進　16進　定数など
strはget_tokenの戻り値を使うのでtが必要。
*/
UINT get_token_value(UINT t, char *str){
	UINT sign=0 ;
	UINT n ;

	if(t==FF) return 0 ;
	else if(t==7){
		t = get_token() ;
	}
	else if(t==8){	//	-
		t = get_token() ;
		sign=1 ;
	}

	if(t==1){	//	identifyer
		n = get_const_value(str) ;
		if(n==FF){	//	label
			return FF ;
		}
		if(sign==1) n=neg(n) ;
		return n & 0x0ffff ;
	}
	else if(t==3){	//	decimal
		n=str2int(10, str) ;
		if(sign==1) n=neg(n) ;
		return n & 0x0ffff ;
	}
	else if(t==4){	//	hex
		n=str2int(16, str) ;
		if(sign==1) n=neg(n) ;
		return n & 0x0ffff ;
	}
	else if(t==10){	// string
		if(str[1]==0){
			n = str[0] ;
		}
		else{
			n = (str[0]<<8) | (str[1] & 0x0ff) ;
		}
		return n ;
	}
	else{
		return FF ;
	}
}


UINT register_const(char *str){
	UINT i, t ;
	t = get_const_index(str) ;
	if(t!=FF){
		//	定数二重定義
		currentIdt=t ;
		return t ;
	}
	for(i=0 ; i<1024 ; i++){
		if(const_value[i]==FF){
			str_cpy(constant[i], str) ;
			currentIdt=i ;
			const_value[i]=0 ;
			return i ;
		}
	}
	return FF ;
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

UINT get_label_index(char* str){
	UINT i ;

	//printf("get label idx(%s)\n", str) ;
	for(i=0 ; i<1024 ; i++){

		if(str_cmp(label[i], str)){
			//printf("str cmp(%s, %s)%d ", label[i], str, i) ;
			return i ;
		}
	}
	return FF ;
}

//	ラベル登録
UINT register_label(char* str){
	UINT i ;

	for(i=0 ; i<1024 ; i++){
		if(label[i][0]==0){
			str_cpy(label[i], str) ;
			label_value[i]=FF ;
			//printf("register label(%d:%s)\n", i, str) ;

			return i ;
		}
	}

	errorOut("Label table Overflow.") ;
	return FF ;
}



/*
参照位置を追加
codePos, label[idx]
reftype:0 8bit offset
*/
UINT label_add_ref(UINT codePos, UINT idx, UINT reftype){
	UINT i ;

	for(i=0 ; i<2048 ; i++){
		//printf(" R(%d:%x)", i, label_pos[i][0]) ;
		if(label_pos[i][0]==FF){
			//printf("label add ref %d(%x) codepos8(%x) loc:%d\n", i, idx, codePos, Location) ;
			label_pos[i][0]=idx ;
			label_pos[i][1]=codePos ;
			label_pos[i][2]=Location ;
			label_pos[i][3]=reftype ;
			return i ;
		}
	}
	return FF ;
}


//	idx位置のラベルのLocationが確定したので、codeリライト
UINT label_rewrite(UINT idx){
	UINT i, pos, loc ;
	UINT offset ;
	char c0, c1 ;

	//printf("rewrite idx:%x ", idx) ;

	for(i=0 ; i<2048 ; i++){
		if(label_pos[i][0]==idx){
			//printf("-> i(%d) idx:%x loc(%x)\n", i, idx, label_pos[i][2]) ;
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
			label_pos[i][0]=FF ;	//	開放
			code[pos][2]=c0;
			code[pos][3]=c1;

//			break ;
		}
	}
	return i ;
}


/*
ラベルのロケーション
labelから一致したエントリーを探す。-1なら未定義。
*/
UINT get_label_value(char* str){
	UINT t = get_label_index(str) ;
	if(t==FF) return FF ;
	return label_value[t] ;
}


/*
LD dst,src
srcは(A0|A1|SP)、(A0|A1|SP)＋－imm、
*/
UINT gen_LD(void){
	UINT r, t, base ;
	UINT sign=0 ;// 1:negetive

	r=except_reg() ;
	if(r==FF){
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
	if(r==FF){	//
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

		if(t==8 && (sign=1) || t==7){	//	- または +
			//	後ろにオフセットが付くはず

			t = get_token() ;

			op3 = get_token_value(t, buff) ;

			if(op3==FF){
				errorOut("Offset must be number.") ;
				return 0 ;
			}

			if(sign==1)op3=neg(op3) ;

			base = 0x10+(op2-6)*4 ;
			if(op2==9){
				base = 0x20 ;
			}
			emit(codePos, Location, 2, base + op1, op3, 0) ;
			return 2 ;
		}
		else{	//	+-が無い場合はオフセット無しとして後ろは読み飛ばす
			UINT src ;
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



UINT gen_ST(void){
	UINT r, t, base, sign ;

	sign=0 ;
	r=except_reg() ;
	if(r==FF){
		errorOut("Register require.") ;
		return 0 ;
	}
	op1=r-6 ;

	op3=0 ;
	t = get_token() ;
	if(t==7 || t==8){	// +-
		if(t==8) sign=1 ;
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
		if(sign==1) op3 = neg(op3) ;
		t = get_token() ;
	}

	if(t!=6){
		errorOut("\',\' require.") ;
		return 0 ;
	}

	r=except_reg() ;
	if(r==FF){	//
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


UINT gen_lop(UINT op){	//	return opecode
	UINT t, op1, op2 ;

	t = get_token() ;
	op1 = get_register(buff) ;

	if(!except_T(6)){
		errorOut("\',\' require.") ;
		return 0 ;
	}

	t = get_token() ;
	op2 = get_register(buff) ;

	if(op2==FF){
		if(op1!=0){
			errorOut("OP1 must be a register.") ;
			return 0 ;
		}
		op2 = get_token_value(t, buff) ;

		emit(codePos, Location, 2, op+5, op2, 0) ;
		return 2 ;
	}
	else{
		emit(codePos, Location, 1, op+(op1 & 1)*4 + op2, 0, 0) ;
		return 1 ;
	}

	return 0 ;
}

//	1 operand instruction
UINT gen_SH(UINT op){
	UINT t, op1 ;

	op1 = get_token() ;

	t = get_register(buff) ;

	if(t!=FF){
		emit(codePos, Location, 1, op+t, 0, 0) ;
		return 1 ;
	}

	return 0 ;
}

UINT gen_PUSH(void){
	UINT t ;

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

UINT gen_POP(void){
	UINT t ;

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

UINT gen_INC_DEC(UINT op){
	UINT t ;

	op1 = get_token() ;

	t = get_register(buff) ;

	if(t!=FF){
		if(t<8){
			emit(codePos, Location, 1, op+t, 0, 0) ;
			return 1 ;
		}
	}

	return 0 ;
}



UINT gen_XCHG(void){
	UINT t, r, op, imm ;

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
		errorOut("Illegal oprand.") ;
		return 0 ;
	}
	emit(codePos, Location, 1, op, 0, 0) ;
	return 3 ;
}


UINT gen_MOV(void){
	UINT t, r, op, imm, id, pos ;

	t = get_token() ;
	op1 = get_register(buff) ;

	if(!except_T(6)){
		errorOut("\',\' require.") ;
		return 0 ;
	}

	t = get_token() ;
	if(t==1){
		op2 = get_register(buff) ;
		//printf("get reg(%x = %X)%x ", buff[0], op2, t) ;
	}
	else{
		op2 = FF ;
	}
	if(op2==FF){
		imm = get_token_value(t, buff) ;
		//printf("get value(%x)\n", imm) ;
		if(imm==FF){
			id=get_label_index(buff) ;	//	なかったら定数ではないのでラベルを探す
			if(id==FF) id = register_label(buff) ;	//	初登場のラベル

			pos = get_label_value(buff) ;
			if(pos!=FF){	//	位置がわかってる=定義されている
				imm = pos ;
			}
			else{	// 参照位置の登録
				label_add_ref(codePos, id, 3) ;
				imm=0 ;
			}
		}

		if(op1>=0 && op1<=3){	//	8bit reg
			emit(codePos, Location, 2, 0x78+op1, imm & 0x00ff,  0) ;
			return 2 ;
		}
		else if(op1>=6 && op1<=9){	//	16bit reg
			op=0x7c+op1-6 ;
			//printf("16bit op2 imm (%x:%s)\n", imm, buff) ;
			emit(codePos, Location, 3, op, imm & 0x00ff,  (imm >> 8) & 0x00ff) ;
			return 3 ;
		}
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
		errorOut("Illegal operand.") ;
		return 0 ;
		break ;
	}
	emit(codePos, Location, 1, op, 0, 0) ;
	return 1 ;
}



UINT gen_Jcc(void){	//	return offset
	UINT offset=0 ;
//	UINT sign=0 ;
	UINT id, pos ;

	UINT t=get_token() ;	//	ラベルは後ろの:が無いから識別子で返って来る
	if(t==1){	//	ident
		id = get_const_index(buff) ;	//	定数に登録されているか（定数は先に定義しておかないといけない）
		if(id==FF){
			//printf(" label?(%s) ", buff) ;
			t=get_label_index(buff) ;	//	なかったら定数ではないのでラベルを探す
			if(t==FF){
				id = register_label(buff) ;	//	初登場のラベル
			}
			else{
				id = t ;
			}
		}
		else{	//	定数だった
			offset=get_token_value(t, buff) ;

//			if(sign==1) offset = -offset ;
			return offset ;
		}

		pos = get_label_value(buff) ;
		if(pos!=FF){	//	定義されている
			offset = pos - (Location+2) ;
		}
		else{	// 参照位置の登録
			label_add_ref(codePos, id, 1) ;
		}
	}
	else if(t!=FF){
		offset=get_token_value(t, buff) ;
		//	error 処理　@@@

//		offset *= sign ;
	}
	else{
		return FF ;
	}

	return offset ;
}

/*
16bit offset.
*/
UINT get_offset16(UINT t){
	UINT offset=0 ;
	UINT id, pos ;

	// t=get_token() ;	//	ラベルは後ろの:が無いから識別子で返って来る
	if(t==1){	//	ident
		id = get_const_index(buff) ;	//	定数に登録されているか（定数は先に定義しておかないといけない）
		if(id==FF){
			t=get_label_index(buff) ;	//	なかったら定数ではないのでラベルを探す
			if(t==FF){
				t = register_label(buff) ;	//	初登場のラベル
			}
			id = t ;	//
		}
		else{	//	定数だった
			offset=get_token_value(t, buff) ;
			return offset ;
		}

		pos = get_label_value(buff) ;
		if(pos!=FF){	//	すでに定義されている
			offset = pos - (Location+3) ;
		}
		else{	// 参照位置の登録
			label_add_ref(codePos, id, 2) ;
		}
	}
	else if(t!=FF){
		offset=get_token_value(t, buff) ;
		if(offset==FF){
			errorOut("Illegal offset.") ;
			return FF ;
		}
	}
	else{
		return FF ;
	}

	return offset ;
}

UINT get_location16(UINT t){
	UINT offset=0 ;
	UINT id, pos ;

	if(t==1){	//	ident
		id = get_const_index(buff) ;	//	定数に登録されているか（定数は先に定義しておかないといけない）
		if(id==FF){
			t=get_label_index(buff) ;	//	なかったら定数ではないのでラベルを探す
			if(t==FF){
				t = register_label(buff) ;	//	初登場のラベル
			}
			id = t ;	//
		}
		else{	//	定数だった
			offset=get_token_value(t, buff) ;
			return offset ;
		}

		pos = get_label_value(buff) ;
		if(pos!=FF){	//	すでに定義されている
			offset = pos ;
		}
		else{	// 未定義なら参照位置を登録
			label_add_ref(codePos, id, 3) ;
		}
	}
	else if(t!=FF){
		offset=get_token_value(t, buff) ;
		if(offset==FF){
			errorOut("Illegal offset.") ;
			return FF ;
		}
	}
	else{
		return FF ;
	}

	return offset ;
}

UINT gen_CALL(void){
	UINT offset=0 ;
	UINT r, t  ;

	t=get_token() ;	//	ラベルは後ろの:が無いから識別子で返って来る
	if(t==1){	//	ident
		r = get_register(buff) ;
		if(r==6){	// A0
			emit(codePos, Location, 1, 0xf8, 0, 0) ;
			return 1 ;
		}
		else if(r==7){	//	A1
			emit(codePos, Location, 1, 0xf9, 0, 0) ;
			return 1 ;
		}
		else{
			offset = get_offset16(1) ;
			emit(codePos, Location, 3, 0xfa, offset & 0x00ff, (offset >> 8) & 0x00ff) ;
			return 3 ;
		}
	}
	return 0 ;
}


UINT code_gen(void){
	UINT t, code, gen=0 ;
	UINT n ;
	UINT codeByte=0 ;
	UINT idx ;
	UINT offset ;
	UINT cc ;

	t = get_token() ;

	switch(t){
	case 1:	//	Identifyer オペコード又は定数。定数の場合後ろはEQしか対応していない。
		code=get_opcode(buff) ;
		if(code!=FF){	//	オペコードらしい
			code++ ;
			gen=1 ;

			switch(code){
			case 1:	//	LD
				codeByte = gen_LD() ;
				break ;
			case 2:	//	ST
				codeByte = gen_ST() ;
				break ;
			case 3:	//	MOV
				codeByte = gen_MOV() ;
				break ;
			case 4:		//	ADD
			case 5:		//	SUB
			case 6:		//	ADDC
			case 7:		//	SUBB
			case 8:		//	CMP
			case 9:		//	AND
			case 10:	//	OR
			case 11:	//	XOR
			case 12:	//	NOT
				{
					char code_tbl[]={0x80, 0x88, 0x90, 0x98, 0xa8, 0xa0, 0xb8, 0xb0, 0xc0} ;
					codeByte = gen_lop(code_tbl[code-4]) ;
				}
				break ;
			case 13:	//	XCHG
				codeByte = gen_XCHG() ;
				break ;
			case 14:	//	SWapByte
				get_token() ;
				op1=get_register(buff) ;
				if(op1==4){
					codeByte = emit(codePos, Location, 1, 0x62, 0, 0) ;
				}
				else if(op1==5){
					codeByte = emit(codePos, Location, 1, 0x63, 0, 0) ;
				}
				break ;
			case 15:	//	SignXTend
				get_token() ;
				op1=get_register(buff) ;
				if(op1==4){
					codeByte = emit(codePos, Location, 1, 0x6A, 0, 0) ;
				}
				else if(op1==5){
					codeByte = emit(codePos, Location, 1, 0x6B, 0, 0) ;
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
			case 29:	//	JumP Short
			case 49:	//	JB
			case 50:	//	JNB
			case 51:	//	JE

				if(code==27) cc=0xe8 ;
				else if(code==28) cc=0xe9 ;
				else if(code==29) cc=0xee ;
				else if(code==49) cc=0xe0 ;
				else if(code==50) cc=0xe1 ;
				else if(code==51) cc=0xe5 ;
				else cc=code-18+0xe0 ;

				offset=gen_Jcc() ;
				codeByte = emit(codePos, Location, 2, cc, offset, 0) ;
				break ;
			case 28:	//	JuMP i16
				offset = get_offset16(get_token()) ;
				codeByte = emit(codePos, Location, 3, 0xfe, offset & 0x00ff, (offset >> 8) & 0x00ff) ;
				break ;
			case 30:	//	JumP Never
				codeByte = emit(codePos, Location, 2, 0xef, 0, 0) ;
				break ;
			case 31:	//	SHL
				codeByte = gen_SH(0xc4) ;
				break ;
			case 32:	//	SHR
				codeByte = gen_SH(0xc8) ;
				break ;
			case 33:	//	SAR
				codeByte = gen_SH(0xcc) ;
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
				codeByte = emit(codePos, Location, 1, 0x6e, 0, 0) ;	//	RETは POP CP
				break ;
			case 38:	//	SWI
				t = get_token() ;
				if(t==FF){
					codeByte=0 ;
					errorOut("IMM8 require.") ;
					return FF ;
				}
				else{
					t = get_token_value(t, buff) ;
					codeByte = emit(codePos, Location, 2, 0xed, (char)t, 0) ;
				}
				break ;
			case 39:	//	IRET
			case 40:	//	EI
			case 41:	//	DI
			case 42:	//	STC
			case 43:	//	CMC
			case 44:	//	LDFR
			case 45:	//	STFR
			case 46:	//	TNS
			case 47:	//	NOP
			case 48:	//	SWI8
				{
					char code_tbl[]={0xfd,0xf5,0xf4,0xf6,0xf7,0xea,0xeb,0xfc,0xff,0xec} ;
					codeByte = emit1(codePos, Location, code_tbl[code-39]) ;
					break ;
				}
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
			UINT t ;

			t=register_const(buff) ;

			if(t!=FF){
				currentIdt=t ;
				t=get_token() ;
				if(t!=1 || str_cmp("EQ", buff)==0){
					errorOut("EQ Required.\n") ;
					return FF ;
				}
				else{	//	eq
					UINT val ;

					t=get_token() ;
					t = get_token_value(t, buff) ;
					if(t==FF){
						//	error
						errorOut("Literal required.\n") ;
						return FF ;
					}

					const_value[currentIdt]=t ;
					currentIdt=FF ;
				}
			}
			else{
				currentIdt=FF ;
				errorOut("Identiyer required.\n") ;
				return FF ;
			}
		}
		break ;
	case 2:	//	Directive
		t = get_directive(buff) ;

		switch(t){
		case 0:	//	.org
			t = get_token() ;
			n = get_token_value(t, buff) ;

			if(n==FF){
				errorOut("Not a number.") ;
			}
			else{
				Location = n ;
			}
			break ;
		case 1: // .ds
			t = get_token() ;
			if(t==10){
				for(UINT i=0 ; i<256 ; i++){
					if(strings[i][0]==0){
						t = str_cpy(strings[i], buff) ;

						emit(codePos, Location, 0xfe, i, t, 0) ;
						break ;
					}
				}
			}
			gen=1 ;
			Location += t+1 ;

			break ;
		case 2: // .db
			{
				UINT n=0, i ;
				UINT pos ;

				//	空きを探しておく
				for(i=0 ; i<256 ; i++){
					if(strings[i][0]==0){
						pos = i ;
						break ;
					}
				}

				if(pos==FF){
					errorOut("String store over flow.") ;
					gen=FF ;
					break ;
				}

				while(1){
					t = get_token() ;
					if(t==FF){
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
					if(t!=6) break ;	//	eccept(',') ;
				}
				emit(codePos, Location, 0xfe, pos, n, 0) ;
				gen=1 ;
				Location+=n ;
			}	//	end of directive switch.
		case 3:	//	.dw dwはラベルも扱う
			codeByte=0 ;
			while(1){
				t = get_token() ;
				if(t==1){
					gen=1 ;
					op1=get_location16(t) ;
					if(op1==FF){
						emit(codePos, Location, 0xfc, 0, 0, 0) ;
						codeByte=2 ;
						Location+=2 ;
					}
					else{
						emit(codePos, Location, 0xfc, op1 & 0x0ff, (op1 >> 8) & 0x0ff, 0) ;
						codeByte=2 ;
						Location+=2 ;
					}
				}
				else if(t==4 || t==5){
					gen=1 ;
					op1=get_token_value(t, buff) ;
					emit(codePos, Location, 0xfc, op1 & 0x0ff, (op1 >> 8) & 0x0ff, 0) ;
					codeByte=2 ;
					Location+=2 ;
				}
				else{
					break ;
				}
				if(!except_T(6)){
					break ;
				}
				codePos++ ;
			}
			break ;
		}
		break ;
	case 5:	//	Label
		idx=get_label_index(buff) ;
		if(idx==FF){
			idx = register_label(buff) ;
		}
		else if(label_value[idx]!=FF){
			errorOut("Duplicate label.") ;
			return FF ;
		}
		label_value[idx] = Location ;
		//printf("label location(idx:%x, %x):%s\n", idx, Location, buff) ;
		label_rewrite(idx) ;

		gen=FF ;
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

UINT program(void){
	UINT t, i=0 ;

	//　ソース読みながらコード生成
	while(1){
		op1=op2=op3=FF ;
		currentIdt=FF ;	//	カレント識別子　改行時にクリア

		pos = get_line(src_fp, 1) ;
		if(pos==NULL) break ;

		t = code_gen() ;
//printf("gen(%d:%x)", t, codePos) ;
		if(t==FF || t==0){ //	空行Pack
			if(codePos > 0 && code[codePos-1][0]==0){
				if(code[codePos-1][1]==0xff){
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
//printf("ret") ;
//fflush(stdout) ;
	return 0 ;
}


void show_label_list(FILE *fp){
	UINT i ;
	UINT w ;
	UINT err=0 ;

	for(i=0 ; i<1024 ; i++){
		if(label[i][0]!=0){
			if(label_value[i]==FF){
				fprintf(fp, "*Undef = %s\n", label[i]) ;
			}
			else{
				fprintf(fp, " $%04X = %s\n", label_value[i], label[i]) ;
			}
		}
	}

	fprintf(fp, "\nLabel ***\n") ;
	for(i=0 ; i<1024 ; i++){
		if(label[i][0]!=0){
			if(label_value[i]==FF){
				fprintf(fp, "*Undef = %s\n", label[i]) ;
			}
			else{
				fprintf(fp, " $%04X = %s\n", label_value[i], label[i]) ;
			}
		}
	}
}

void show_const_list(FILE *fp){
	UINT i ;

	fprintf(fp, "\nConstant ***\n") ;
	for(i=0 ; i<1024 ; i++){
		if(constant[i][0]!=0){
			fprintf(fp, " $%04X = %s\n", const_value[i], constant[i]) ;
		}
	}
}


void dumpCode(FILE *out_fp){
	UINT i ;
	UINT loc=0 ;

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
		else if(code[i][0]==0xfc){	//	dw
			fprintf(out_fp, "%04X : ", code_loc[i]) ;
			loc = code_loc[i]+2 ;
			fprintf(out_fp, "%02X %02X\n", code[i][1], code[i][2]) ;
			if(code[i+1][0]==0xfc){
				continue ;
			}
		}
		else{
			if(code[i][0]!=0){
				fprintf(out_fp, "%04X : ", code_loc[i]) ;
				loc = code_loc[i] ;
				UINT n ;
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
	UINT i ;
	UINT loc=0 ;

	char *pos = get_line(fp, 0) ;

	fprintf(out_fp, "\nCode ***\n") ;
	for(i=0 ; i<16*1024 ; i++){

		if(code[i][0]==0xff){
			break ;
		}
		else if(code[i][0]==0xfe){	//	string
			fprintf(out_fp, " %04X ", code_loc[i]) ;
			loc = code_loc[i]+code[i][2] ;
			for(UINT n=0 ; n<code[i][2] ; n++){
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
		else if(code[i][0]==0xfc){	//	dw
			fprintf(out_fp, " %04X ", code_loc[i]) ;
			loc = code_loc[i]+2 ;
			fprintf(out_fp, "%02X%02X\n", code[i][1], code[i][2]) ;
			if(code[i+1][0]==0xfc){
				continue ;
			}
			fprintf(out_fp, "                %s\n", pos) ;
			pos = get_line(fp, 0) ;
		}
		else{
			if(code[i][0]==0){
				UINT n ;
				for(n=0 ; n<code[i][1] ; n++){
					fprintf(out_fp, "                %s\n",pos) ;
					pos = get_line(fp, 0) ;
				}
			}
			else{
				fprintf(out_fp, " %04X ", code_loc[i]) ;
				loc = code_loc[i] ;
				UINT n ;
				for(n=0 ; n<code[i][0] ; n++){
					fprintf(out_fp, "%02X", code[i][n+1]) ;
				}

				fprintf(out_fp, "          "+(2*code[i][0])) ;

				loc+=code[i][0] ;
				fprintf(out_fp, "%s\n", pos) ;
				pos = get_line(fp, 0) ;
			}
		}
	}
	fprintf(out_fp, " %04X\n\nEND ***\n", loc) ;
}


/*
Command line options.
	option_l : echo listing to stdout.
*/
unsigned char option_l=0 ;

UINT main(UINT argc, char** argv){
	UINT i ;

	if(argc<=1){
		printf("Usage : asq FILENAME\n") ;
		exit(1) ;
	}

	for(i=1 ; i<argc ; i++){
		if(argv[i][0]=='-'){
			switch(argv[i][1]){
			case 'v': case 'l': option_l=1 ; break ;	//	l or v option : Display listing.
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
		label_pos[i][0]=FF ;
	}
	for(i=0 ; i<256 ; i++){
		strings[i][0]=0 ;
	}

	for(i=0 ; i<1024 ; i++){
		constant[i][0]=0 ;
		const_value[i]=FF ;
		label[i][0]=0 ;
	}
	const_value[0]=FF ;
	label_pos[0][1]=FF ;
	currentIdt=FF ;

	program() ;

	if(errorCount!=0){
		fclose(src_fp) ;
		fclose(prn_fp) ;
		fclose(mem_fp) ;
		exit(1) ;
	}

	if(option_l){
		show_label_list(stdout) ;
		show_const_list(stdout) ;
		rewind(src_fp) ;
		outListing(src_fp, stdout) ;
	}

	dumpCode(mem_fp) ;	//	MEM file for Lattice Diamond.

	show_label_list(prn_fp) ;
	show_const_list(prn_fp) ;

	rewind(src_fp) ;
	outListing(src_fp, prn_fp) ;

	fclose(src_fp) ;
	fclose(prn_fp) ;
	fclose(mem_fp) ;

	exit(0) ;
}

