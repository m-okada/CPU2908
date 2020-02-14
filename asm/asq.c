/*
CPU2908 asm
asm-q

asq:asq.c
	cc -o asq asq.c lex.c

t02.as

*/

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#include "token.h"

int Line = 0 ;
char msg[128] ;
void errorOut(char *str){
	printf("Line %d :  Error %s\n", Line, str) ;
	// exit(1) ;
}


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


int str_cmp(char *label, char* str){
	int i ;
	if(*str==0 || *label==0) return 0 ;
	for(i=0 ; i<31 ; i++){
		if(label[i]==0 && str[i]==0) return 1 ;
		if(label[i]!=str[i]) return 0 ;
	}
	return 1 ;	//	30バイト比べておなじなら一致にする。
}

void str_cpy(char *label, char *str){
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



/*
.o フォーマット
ラベルセクション
バイナリーセクション（複数）

*/
int locate=0 ;
char mem[64*1024] ;

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

.org location
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
"JC",	"JNC",	"JZ",	"JNZ",	"JS",	//	-22
"JNS",	"JO",	"JNO",	"JG",	"JL",	//	-27
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
"R0", "R1", "R2", "R3",
"W0", "W1", "A0", "A1",
"CP", "SP",

//	Alternative
"A", "B", "C", "D",
"W", "V", "X", "Y",
"PC", "U", ""
} ;

char directive_str[][8]={
".ORG", ".DB", ".DW","EQ",
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


*/
int op ;
int op1, op2, op3 ;

// オペランドタイプ　0:即値 1:レジスタ 2:アドレスレジスタ＋即値
int op1_type ;
int op2_type ;
int op3_type ;	//	op2にオフセット情報が追加されていたら0以外

/*
ラベル

・定義
識別子とアドレスを登録
register_label

ラベルが定義された
　・既に参照がある：label_ref()が0以上を返してきた→参照をたぐって書き換える
　・参照がまだ無い：登録
ラベルが参照された
　・既に定義されてるlabel_ref()が0以上を返してきた
　・まだ定義されていない
　　・参照はある
　　・参照も初めて

・参照
参照された時に定義されているかどうかチェック
未定義：ロケーション-1でラベルを登録。参照位置を登録。

定義済み：ロケーションとラベルのアドレスでオペランドを計算
ロケーション確定：label_posの中を手繰ってその位置とラベルのロケーションとでオフセットを計算する。

*/


/*
	label_pos のデータへのインデックス
*/

int label_value[1024] ;	//	-1:未定義　参照のみで定義されてない。前方参照。
char label[1024][32] ;	//	ラベル名 index はlabel_value と同じ


/*
ラベルの参照位置

[0] label[]のインデックス
[1]参照元code[]のインデックス -1なら未使用
[2]Location
[3]型1:バイト2:ワード3:絶対位置（ワード）（ニーモニックで判定する）

*/
int label_pos[2048][4] ;


int currentIdt=-1 ;	//	EQ で定義される定数は識別子を登録した時にここに入れておく。行が変ったらクリア
char constant[1024][32] ;
int const_value[1024] ;	//	定数　-1なら定数未定義　定数は直後の eq で定義するので。

/*

code[addr][4]
4バイトで、あたまから
00.nn 空行、またはコメント行　nn:飛ばす行数（256行を超えて飛ばす時はもう1つ新たにエントリーを作成する予定）@@@
01.xx 1バイトコード
02.xx.xx ２バイトコード
03.xx.xx.xx ３バイトコード
0F.nn.mm	.ORGでアドレス指定が来た。（アドレスは重複するかもしれないけど、後ろにあるデータ優先で処理する。）
FF.xx 未使用。テーブル終端
ラベル、定数はそれぞれテーブルに保存する。

*/
/*
コード。最後にコード読みながらリスティング出す用
コード生成しない行は圧縮する
*/
int codePos=0 ;
unsigned char code[16*1024][4] ;
int code_loc[16*1024] ;

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

int set_const_value(int t, int val){
	const_value[t]=val ;
	return val ;
}


// str を数値に変換　10進　16進　定数　ラベル
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
		return sign*n ;
	}
	else if(t==3){	//	decimal
		return sign*str2int(10, str) ;
	}
	else if(t==4){	//	hex
		return sign*str2int(16, str) ;
	}
	else{
		return -1 ;
	}
}


int register_const(char *str){
	int i, t ;
	t = get_const_index(str) ;
	if(t!=-1){
		//	Error:定数二重定義	@@@
		return -1 ;
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



int location=0 ;

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

//	単に登録
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
printf("AddRef(%d:%x) "	, idx, codePos) ;
	for(i=0 ; i<2048 ; i++){
		if(label_pos[i][0]==-1){
			label_pos[i][0]=idx ;
			label_pos[i][1]=codePos ;
			label_pos[i][2]=location ;
			label_pos[i][3]=reftype ;
			break ;
		}
	}
	return i ;
}


//	idx位置のラベルのLocationが確定したので、codeリライト
int label_rewrite(int idx){
	int i, pos=-1, loc ;
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
printf("RWoffset (%d:%d) ", label_value[idx], loc) ;
				c0 = offset & 0x00ff ;
				break ;
			case 2:	//	word ;
				offset=loc - (code_loc[pos]+2) ;
				break ;
			case 3:	// absolute ;
				c0=loc & 0x00ff ;
				c1=(loc >> 8) & 0x00ff ;
				break ;
			}
			break ;
		}
	}
	if(pos!=-1){
		code[pos][2]=c0;
		code[pos][3]=c1;
printf("ReWrite Pos(%d:%d)->(%d) ", idx, pos, (((int)c0<<8) | c1) & 0x00ffff) ;
	}
	return i ;
}



//	ラベルが定義されたら登録してあるかどうかチェックして登録　登録までやる版はあとでいねーぶる
int _register_label(char* ptr){
	int i ;
	int idx ;

	idx=get_label_index(ptr) ;

	if(idx==-1){	//	参照が先なら登録済みのはずなので、ここはラベル初登場
		idx = register_label(ptr) ;
		; //@@@
	}
	else{//	既に登録されていた。参照が先で呼ばれた（二重登録チェックは定義の場所でやること）
		for(i=0 ; i<1024 ; i++){	//	参照位置一覧にあるかな？
			if(label_pos[i][0]==idx){	//@@@
				int pos ;
				//	参照位置をたどって書き換える


				int n ;

				while(1){	//	次の空きを探す。削除されて空いてる所があるかもしれない
					if(label_pos[pos][1]==-1){
						break ;	//	けつまで行ってだめだった
					}
					label_pos[pos][3]=0 ;	//	マーク
					pos=label_pos[pos][1] ;
				}
				if(pos>=2047){
					//	error @@@
					errorOut("Table full.") ;
					return -1 ;	//	参照元テーブルが満員です
				}
				code[n] ;
				for(n=0 ; n<2048 ; n++){	//	次の空きを探す。削除されて空いてる所があるかもしれない

				}
			}
		}
		if(i==2048){
			//	Error @@@
			errorOut("Label ref table overflow.") ;
			return -1 ;
		}

		//	label_pos に参照があるかどうか調べて、あったら書き換え
	}
	return 0 ;	//	get_locationしてオフセット計算
}

//	ラベルが参照されたら呼ぶ。
int register_ref_pos(char *str, int ref, char type){
	int t ;

	t=get_label_index(str) ;
	if(t==-1){	//	登録されてないので前方参照
		t = register_label(str) ;
	}
}

/*
ラベルのロケーション
labelから一致したエントリーを探す。-1なら未定義。
*/

int get_label_value(char* str){
	int i ;
	for(i=0 ; i<1024 ; i++){
		if(str_cmp(label[i], str)){
			return label_value[i] ;
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


/*
式評価
四則演算、定数、ロケーションを定数に変換して返す
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

	fp : 入力ファイル
	skip_tab : 行の先頭のTABとスペースをスキップ

	buffPos : ラインの先頭ポインタ。後ろの改行位置に0を書いて先頭を返す。
	linebuff : filebuffの途中で行が終わってるときにこっちにコピーしてfileBuffいっぱいに読み込む。の後改行までコピーして返す

*/
char* get_line(FILE* fp, int skip_tab){
	int i, len ;

	while(1){
		unsigned char cc ;
		len = fread(&cc, 1, 1, fp) ;
//printf("(%x)", cc) ;
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
//printf("[%x]", fileBuff[i]) ;
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

void emit(int pos, int loc, char code0, char code1, char code2, char code3){
printf("emit %04X : [%02X %02X %d %d]\n", loc, (unsigned char)code0, (unsigned char)code1, code2, code3) ;
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
	int r, t ;
printf("(%s)", lineBuff) ;
	r=except_reg() ;
	if(r==-1){
		errorOut("Register require.") ;
		return 0 ;
	}

	op1=r ;
printf("Dist(%d) ", op1) ;
	if(!except_T(6)){
		errorOut("\',\' require.") ;
		return 0 ;
	}

	r=except_reg() ;
	if(r==-1){	//
		errorOut("Register require.") ;
		return 0 ;
	}
	else{
		op2 = r ;
printf("Src(%d) ", op2) ;
printf("{%s}", buff) ;

		t = get_token() ;

printf(".{%s}", buff) ;

		if(t==7 || t==8){	// +-
			//	後ろにオフセットが付くはず
			t = get_token() ;
printf(".{%s}", buff) ;
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
printf("+offset:%d ", op3) ;
			return 2 ;
		}
		else{	//	オフセット無し
			;	// Addr register.
			int src ;

printf("no offset ") ;
			if(op2==6){
				emit(codePos, location, 1, 0x00 + op1, 0, 0) ;
			}
			return 1 ;
		}
	}

	return 0 ;
}

int gen_ST(void){
	return 0 ;
}


int gen_lop(int op){	//	return opecode
}



int gen_Jcc(void){	//	return offset
	int offset=0 ;
	int sign=1 ;
	int t, id, pos ;

	t=get_token() ;	//	ラベルは後ろの:が無いから識別子で返って来る
	if(t==1){	//	ident
		id = get_const_index(buff) ;	//	定数に登録されているか（定数は先に定義しておかないといけない）
		if(id==-1){
printf(" label?(%s) ", buff) ;
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
printf(" label value(%d) loc %d ", pos, location) ;
		if(pos>=0){	//	位置がわかってる=定義されている
			offset = pos - (location+2) ;
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

printf("offset(%s : %d)", buff, offset) ;
	return offset ;
}


int code_gen(void){
	int t, code, gen=0 ;
	int n ;
	int codeByte=0 ;
	int idx ;
	int offset ;

	t = get_token() ;
// printf("\ntoken[%s] type %d ", buff, t) ;

	switch(t){
	case 1:	//	Identifyer オペコード又は定数。定数の場合後ろはEQしか対応していない。
		code=get_opcode(buff) ;
		if(code!=-1){	//	オペコードらしい
			printf("Opecode[%s]:%d ", buff, code) ;

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
			case 18:	//	JC
			case 19:	//	JNC
			case 20:	//	JZ
			case 21:
			case 22:
			case 23:
			case 24:
			case 25:
			case 26:
			case 27:
			case 29:	//	JPS
printf(" Jcc %d ", code) ;
				int cc ;

				if(code==27) cc=0xe8 ;
				else if(code==28) cc=0xe9 ;
				else cc=code-18+0xe0 ;

				offset=gen_Jcc() ;
				emit(codePos, location, 2, cc, offset, 0) ;
				codeByte=2 ;
				break ;
			case 28:
printf(" JMP ") ;
				break ;
			case 30:	//	JPN
				emit(codePos, location, 2, 0xef, 0, 0) ;
				codeByte=1 ;
				break ;
			case 31:	//	SHL
				break ;
			case 32:	//	SHR
				break ;
			case 33:	//	SAR
				break ;
			case 34:	//	INC
				break ;
			case 35:	//	DEC
				break ;
			case 36:	//	CALL
				break ;
			case 37:	//	RET
				emit(codePos, location, 1, 0x6e, 0, 0) ;	//	RETは POP CP
				break ;
			case 38:	//	SWI

				break ;
			case 39:	//	IRET
				break ;
			case 40:	//	EI
				emit(codePos, location, 1, 0xf5, 0, 0) ;
				codeByte=1 ;
				break ;
			case 41:	//	DI
				emit(codePos, location, 1, 0xf4, 0, 0) ;
				codeByte=1 ;
				break ;
			case 42:	//	STC
				emit(codePos, location, 1, 0xf6, 0, 0) ;
				codeByte=1 ;
				break ;
			case 43:	//	CMC
				emit(codePos, location, 1, 0xf7, 0, 0) ;
				codeByte=1 ;
				break ;
			case 44:	//	LDFR
				emit(codePos, location, 1, 0xea, 0, 0) ;
				codeByte=1 ;
				break ;
			case 45:	//	STFR
				emit(codePos, location, 1, 0xeb, 0, 0) ;
				codeByte=1 ;
				break ;
			case 46:	//	TNS
				emit(codePos, location, 1, 0xfc, 0, 0) ;
				codeByte=1 ;
				break ;
			case 48:	//	SWI8
				emit(codePos, location, 1, 0xec, 0, 0) ;
				codeByte=1 ;
				break ;
			case 47:
printf(" NOP ") ;
				emit(codePos, location, 1, 0xff, 0, 0) ;
				codeByte=1 ;
				break ;
			default:
				gen=0 ;
				codeByte=0 ;
				break ;
			}
//			codePos++ ; // =codeByte ;
printf(" Code Pos(%d) ", codePos) ;
			location+=codeByte ;
		}
		else{	//	Identifier　たぶんこのあとeq定数が続く
			//	constantテーブルに登録してカレントにする。続くeqで定数定義
			int t ;


			t=register_const(buff) ;
printf("Const(%s):%d ", buff, t) ;
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
printf("idx(%d) val:%X ", currentIdt, t) ;
					set_const_value(currentIdt,t) ;
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
if(t!=-1) printf(" Directive(%s) type:%d ", buff, t) ;
		switch(t){
		case 0:	//	.org
			t = get_token() ;
			n = get_token_value(t, buff) ;
printf(" Value(%d) ", n) ;
			if(n==-1){
				errorOut("Not a number.") ;
			}
			else{
				location = n ;
			}
			break ;
		}
		break ;
	case 5:	//	Label ラベルは後ろの:を取って識別子表に登録されている。
		idx=get_label_index(buff) ;
		if(idx<0){
			idx = register_label(buff) ;
		}
		label_value[idx] = location ;
		label_rewrite(idx) ;

printf("register label(%d):%d ", idx, location) ;
		break ;
	default:
		//buff[0] ;
		if(buff[0]!=0){
			errorOut("Syntax error") ;
		}
		break ;
	}

	return gen ;
}


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

		if(pos==NULL) break ;

		t = code_gen() ;
printf("line(%d:%d) : ", t, i) ;

		if(t<1){ //	空行Pack
			if(codePos > 0 && code[codePos-1][0]==0){
					code[codePos-1][1]++ ;
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
		printf("\n") ;
	}

	//　最後にコードとリスティングの出力

	return 0 ;
}


void show_label_list(void){
	int i ;

	printf("\nLabel list ***\n") ;
	for(i=0 ; i<1024 ; i++){
		if(label[i][0]!=0){
			printf("%4d : ", i) ;
			printf("(%s) -> %d\n", label[i], label_value[i]) ;
		}
	}
}

void print_spc(int n){
	printf("          "+(2*n)) ;
}

void dumpCode(FILE *fp, FILE* out_fp){
	int i ;
	int loc=0 ;

	char *pos = get_line(fp, 0) ;

	printf("\nListing ***\n") ;
	for(i=0 ; i<16*1024 ; i++){
//		if(pos==NULL) break ;

		if(code[i][0]==0xff){
			break ;
		}
		else{
			if(code[i][0]==0){
//				printf("*[%d]", code[i][1]) ;
				int n ;
				for(n=0 ; n<code[i][1] ; n++){
					printf("                  %s\n",pos) ;
					pos = get_line(fp, 0) ;
				}
			}
			else{
				printf(" %04X : ", code_loc[i]) ;
				int n ;
				for(n=0 ; n<code[i][0] ; n++){
					printf("%02X", code[i][n+1]) ;
				}
				print_spc(code[i][0]) ;
				loc+=code[i][0] ;
				printf("%s\n", pos) ;
				pos = get_line(fp, 0) ;
			}
		}
	}
}


int main(int argc, char** argv){
	int i ;

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

	for(i=0 ; i<1024 ; i++){
		constant[i][0]=0 ;
		const_value[i]=-1 ;
		label[i][0]=0 ;
	}
	for(i=0 ; i<16*1024 ; i++){
//		code[i][0] = 0xff ;
	}
	const_value[0]=-1 ;
	label_pos[0][1]=-1 ;

	program() ;

	show_label_list() ;

	rewind(src_fp) ;
	dumpCode(src_fp, mem_fp) ;

	fclose(src_fp) ;
	fclose(mem_fp) ;

//	printf("\n") ;
}

