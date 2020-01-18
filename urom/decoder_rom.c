/*

QV08-V5 Decoder ROM build tool.

gcc decoder_rom.c -o brom
*/
#include <stdio.h>

typedef unsigned int DWORD ;
typedef unsigned char BYTE ;


//	addr 12bits
#define ROM_SIZE 4096
DWORD rom[ROM_SIZE]={0} ;
DWORD rom_idx[ROM_SIZE]={0} ;


#define CODE_RESET 0xe0
#define CODE_FETCH 0xe1
#define CODE_IRQ 0xe2
#define CODE_EXEC 0xe3	//	実際にはOPECODEなので、これは使わない

#define END_MARK 0x80000000

//	Extern bus control
#define EX_DLATCH 0x04
#define EX_ALATCH 0x08

#define EX_NONE 0x00
#define EX_MEMR (0x01 | EX_ALATCH)
#define EX_MEMW (0x02 | EX_ALATCH | EX_DLATCH)
#define EX_MEMR_EN 0x01
#define EX_MEMW_EN 0x02
#define EX_IRQA 0x03


#define EX_imm 0x01
#define EX_2 0x02
#define EX_3 0x04

//	ALU
#define OP_SHIFT 2

#define ALU_NONE 0x00


//	ALU_xxをCYやMの追加指定無しで使えるように

#define ALU_CY_CC 0x00
// #define ALU_CY_INV 0x01
#define ALU_CY_A7 0x01
#define ALU_CY_1 0x02
#define ALU_CY_0 0x03

#define ALU_M (0x01 << 6)

#define ALU_OP_NONE 0x0

#define ALU_OP_ADD ((0x0C << OP_SHIFT) | ALU_CY_0)
#define ALU_OP_SUB ((0x03 << OP_SHIFT) | ALU_CY_1)

#define ALU_OP_ADDC ((0x0C << OP_SHIFT) | ALU_CY_CC)
#define ALU_OP_SUBB ((0x03 << OP_SHIFT) | ALU_CY_CC)

#define ALU_OP_ADD0 (0x0 << OP_SHIFT)
#define ALU_OP_SUB0 (0xF << OP_SHIFT)


#define ALU_OP_INC ((0x0 << OP_SHIFT) | ALU_CY_1)
#define ALU_OP_DEC ((0xF << OP_SHIFT) | ALU_CY_0)

//#define ALU_OP_INC_WC ((0x0 << OP_SHIFT) | ALU_CY_CC)
//#define ALU_OP_DEC_WC  ((0xF << OP_SHIFT) | ALU_CY_CC)


#define ALU_OP_SXT (0x5 << OP_SHIFT)
#define ALU_OP_x8 (0x7 << OP_SHIFT)
#define ALU_OP_SHL ((0xA << OP_SHIFT) | ALU_CY_CC)

#define ALU_OP_SHR ((0xD << OP_SHIFT) | ALU_CY_CC)
#define ALU_OP_SAR ((0xD << OP_SHIFT) | ALU_CY_A7)

#define ALU_OP_BUFF1 ((0xA << OP_SHIFT) | ALU_M)
#define ALU_OP_BUFF2 ((0xC << OP_SHIFT) | ALU_M)

#define ALU_OP_ALL1 ((0xC << OP_SHIFT) | ALU_M)
#define ALU_OP_ZERO ((0x0 << OP_SHIFT) | ALU_M)

#define ALU_OP_OR ((0xE << OP_SHIFT) | ALU_M)
#define ALU_OP_XOR ((0x6 << OP_SHIFT) | ALU_M)
#define ALU_OP_AND ((0x8 << OP_SHIFT) | ALU_M)
//#define ALU_OP_NOT ((0x5 << OP_SHIFT) | ALU_M)
#define ALU_OP_NOT ((0xC << OP_SHIFT) | ALU_M)	//	notはsrcをBuff2に入れる




#define ADX_ZERO (0x0B << OP_SHIFT)
#define ADX_THRU (0x03 << OP_SHIFT)	//	AddrReg Thru
#define ADX_SXT (0x01 << OP_SHIFT)	//	add sign extended buff
#define ADX_ALL1 (0x0A << OP_SHIFT)

#define ADX_INC (0x07 << OP_SHIFT)	//	REG+1
#define ADX_DEC (0x02 << OP_SHIFT)

#define ADX_ADD (0x00 << OP_SHIFT)
#define ADX_BUFF (0x08 << OP_SHIFT)
#define ADX_REG (0x03 << OP_SHIFT)

#define ADX_CY (0x04 << OP_SHIFT)



//	Byte register out control.

#define BR_NONE 0x00
#define BR_BASE 0x00
#define BR_R0 (BR_BASE+0)
#define BR_R1 (BR_BASE+1)
#define BR_R2 (BR_BASE+2)
#define BR_R3 (BR_BASE+3)
#define BR_WLO (BR_BASE+4)
#define BR_WHI (BR_BASE+5)
#define BR_DIN (BR_BASE+6)
#define BR_THRU (BR_BASE+7)

//	Word register out control.
#define WR_NONE 0x00
#define WR_BASE 0x00
#define WR_A0 (WR_BASE+0)
#define WR_A1 (WR_BASE+1)
#define WR_CP (WR_BASE+2)
#define WR_SP (WR_BASE+3)

// Register write back enable.
#define REGW_NONE 0x00
#define REGW_EN 0x01


//	Same as RL_xx
#define WB_NONE 0x00
#define WB_BASE 0x00
#define WB_WBASE 0x04
#define WB_R0 (WB_BASE+0)
#define WB_R1 (WB_BASE+1)
#define WB_R2 (WB_BASE+2)
#define WB_R3 (WB_BASE+3)
#define WB_A0 (WB_WBASE+0)
#define WB_A1 (WB_WBASE+1)
#define WB_CP (WB_WBASE+2)
#define WB_SP (WB_WBASE+3)


//	STFR
#define STFR 1


//	Flag fetch control.
#define FR_NONE 0
#define FR_LATCH 1

//	Temp register latch control.
#define FB_NONE 0x00
#define FB_BUFF1 0x01
#define FB_BUFF2 0x02
//#define FB_FETCH 0x03
#define FB_LOCK 0x03	//	バスロック

//	DIN_EN=1の時専用バッファからデータをもらう。
//	常にE↓でラッチしているので、アドレスを変えたサイクルのQ↓で前回サイクルのデータをもらうことが出来る。
//	DataIn latch enable
#define DIN_NONE 0x00
#define DIN_EN 0x01

//	Misc.
#define MISC_BUSTHRU 0x00	//	8bitバスをそのまま書き戻しバスに返す
#define MISC_ALU 0x01	//	ALUの出力をだす
#define MISC_ALU_L 0x02	//	ライトバックバスにALU_Lの出力をだす
#define MISC_STF 0x03


DWORD OPECode ;
BYTE STEP ;


DWORD make_code(DWORD endf, DWORD exbus, DWORD ex, DWORD alu, DWORD br, DWORD wr, DWORD regw_en, DWORD r_latch,
	DWORD stfr, DWORD f_latch_en, DWORD fb_sel, DWORD din_latch, DWORD misc){

	DWORD retval=0 ;

	if(br==BR_THRU && misc==0){
		printf("!BR_THRU & MISC_BUSTHRU both on[%x:%d]\n", OPECode, STEP) ;
		br=BR_DIN ;
	}

	retval |= endf ;
	retval |= (alu & 0x7f) ;

	retval |= (br & 0x07) << 7 ;
	retval |= (wr & 0x03) << 10 ;

	retval |= (regw_en & 0x01) << 12 ;
	retval |= (r_latch & 0x07) << 13 ;

	retval |= (stfr & 0x01) << 16 ;
	retval |= ((~f_latch_en) & 0x01) << 17 ;
	retval |= (fb_sel & 0x03) << 18 ;
	retval |= (din_latch & 0x01) << 20 ;

	retval |= (misc & 0x03) << 21 ;
	retval |= (ex & 0x07) << 23 ;
	retval |= (exbus & 0x1f) << 26 ;

	return retval ;
}

DWORD make_code_imm8(DWORD endf, DWORD imm8, DWORD fb_sel){

	DWORD retval=0 ;
	retval |= endf ;
	retval |= (BR_DIN & 0x07) << 7 ;
	retval |= (imm8 & 0xff) << 10 ;
	retval |= (fb_sel & 0x03) << 18 ;
	retval |= 1 << 23 ;	//	imm=1

	return retval ;
}



DWORD NOP ;	//	No operation.
DWORD FETCH_BYTE_CPOUT ;	//	CP出力→CP+
DWORD FETCH_BYTE_READDATA ;	//	1バイトフェッチ
DWORD CPOUT_INC ;	//	CP出力→CP+

DWORD WRITE_BYTE ;
DWORD SPINC ;
DWORD SPDEC ;
DWORD CPOUT ;
DWORD DATAIN_BUFF1_CPINC ;
DWORD DATAIN_BUFF2_CPINC ;
DWORD ENDMARK ;

DWORD FETCH_PC1 ;


DWORD OPECode ;
BYTE STEP ;
void set_opecode(BYTE opcode){
	OPECode=opcode ;
	STEP=0 ;
}

void set_code(DWORD code){
	// printf("[%X:%X]%X\n", OPECode, STEP, code) ;
	int i=OPECode<<4 | STEP ;
	if(rom[i]!=0) printf("![%x:%x]", OPECode, STEP) ;
	rom[i]=code ;
	STEP++ ;
}


void make_rom(void){
	DWORD code ;
	int i, n ;

	//	00	LD Rx,[Ax]
	for(i=0 ; i<2 ; i++){
		for(n=0 ; n<4 ; n++){
			set_opecode(0+n+i*4) ;
			//	Ax -> AddrBuff
			code = make_code(0, EX_MEMR, 0, ADX_REG, 0, WR_A0+i, 0, 0, 0, 0, 0, 0, 0) ;
			set_code(code) ;

			//	write back
			code = make_code(END_MARK, 0, 0, 0, BR_DIN, 0, REGW_EN, WB_R0+n, 0, 0, 0, DIN_EN, 0) ;
			set_code(code) ;
		}
	}

	//	08	ST
	for(i=0 ; i<2 ; i++){
		for(n=0 ; n<4 ; n++){
			set_opecode(0x08+n+i*4) ;
			code = make_code(0, EX_MEMW, 0, ADX_REG, BR_R0+n, WR_A0+i, REGW_NONE, 0, 0, 0, 0, 0, 0) ;
			set_code(code) ;

			//	wait
			code = make_code(END_MARK, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) ;
			set_code(code) ;
		}
	}

	//	10-17	LD rr,[Ax+imm8]
	for(i=0 ; i<2 ; i++){		//	Ax
		for(n=0 ; n<4 ; n++){	//	rr
			set_opecode(0x10+n+i*4) ;

			set_code(CPOUT) ;	//	CP->ADDR
			set_code(DATAIN_BUFF1_CPINC) ;	//	imm8 -> Buff1

			//	Addr -> ABUS, DBUS->Rn
			code = make_code(0, EX_MEMR, 0, ADX_SXT, BR_DIN, WR_A0+i, 0, 0, 0, 0, 0, 0, 0) ;
			set_code(code) ;

			//	write back
			code = make_code(END_MARK, 0, 0, 0, BR_DIN, 0, REGW_EN, WB_R0+n, 0, 0, 0, DIN_EN, 0) ;
			set_code(code) ;
		}
	}


	//	18-1F	ST [Ax+imm8],rr
	for(i=0 ; i<2 ; i++){		//	Ax
		for(n=0 ; n<4 ; n++){	//	rr
			set_opecode(0x18+n+i*4) ;

			set_code(CPOUT) ;	//	CP->ADDR
			set_code(DATAIN_BUFF1_CPINC) ;	//	imm8 -> Buff1

			//	Addr -> ABUS, DBUS->Rn
			code = make_code(0, EX_MEMW, 0, ADX_SXT, BR_R0+n, WR_A0+i, 0, 0, 0, 0, 0, 0, 0) ;
			set_code(code) ;

			set_code(ENDMARK) ;
		}
	}


	//	20-23	LD rr,[SP+imm8]
	for(n=0 ; n<4 ; n++){	//	rr
		set_opecode(0x20+n) ;

		set_code(CPOUT) ;	//	CP->ADDR
		set_code(DATAIN_BUFF1_CPINC) ;	//	imm8 -> Buff1

		//	Addr -> ABUS, DBUS->Rn
		code = make_code(0, EX_MEMR, 0, ADX_SXT, 0, WR_SP, 0, 0, 0, 0, 0, 0, 0) ;
		set_code(code) ;

		//	write back
		code = make_code(END_MARK, 0, 0, 0, BR_DIN, 0, REGW_EN, WB_R0+n, 0, 0, 0, DIN_EN, 0) ;
		set_code(code) ;
	}



	//	0x24-0x27 LD Wx,[Ax]
	for(n=0 ; n<4 ; n++){
		set_opecode(0x24+n) ;

		code = make_code(0, EX_MEMR, 0, ADX_REG, 0, WR_A0+i/2, 0, 0, 0, 0, 0, 0, 0) ;
		set_code(code) ;	//	A0->ADDR

		//	write back
		code = make_code(0, 0, 0, 0, BR_DIN, 0, REGW_EN, WB_R0+((n & 1) << 1), 0, 0, 0, DIN_EN, 0) ;
		set_code(code) ;

		code = make_code(0, EX_MEMR, 0, ADX_INC, 0, WR_A0+i/2, 0, 0, 0, 0, 0, 0, 0) ;
		set_code(code) ;	//	A0->ADDR

		//	write back
		code = make_code(END_MARK, 0, 0, 0, BR_DIN, 0, REGW_EN, WB_R1+((n & 1) << 1), 0, 0, 0, DIN_EN, 0) ;
		set_code(code) ;
	}



	//	28-2B st [SP+i8],Rx
	for(n=0 ; n<4 ; n++){	//	rr
		set_opecode(0x28+n) ;

		set_code(CPOUT) ;	//	CP->ADDR
		set_code(DATAIN_BUFF1_CPINC) ;	//	imm8 -> Buff1

		//	Addr -> ABUS, DBUS->Rn
		code = make_code(0, EX_MEMW, 0, ADX_SXT, BR_R0+n, WR_SP, 0, 0, 0, 0, 0, 0, 0) ;
		set_code(code) ;

		set_code(ENDMARK) ;
	}


	//	2C-2F ST [Ax],Wx
	for(n=0 ; n<4 ; n++){
		set_opecode(0x2C+n) ;

		code = make_code(0, EX_MEMW, 0, ADX_REG, BR_R0+((n & 1) << 1), WR_A0+i/2, 0, 0, 0, 0, 0, 0, 0) ;
		set_code(code) ;	//	A0->ADDR

		set_code(NOP) ;

		code = make_code(0, EX_MEMW, 0, ADX_INC, BR_R1+((n & 1) << 1), WR_A0+i/2, 0, 0, 0, 0, 0, 0, 0) ;
		set_code(code) ;	//	A0->ADDR

		set_code(ENDMARK) ;
	}

	//	30-3F undef
	for(n=0 ; n<=0x0f ; n++){
		set_opecode(0x30+n) ;
		set_code(ENDMARK) ;
	}

	//	40-5F MOV
	set_opecode(0x40) ;
	code = make_code(END_MARK, 0, 0, 0, BR_R2, WR_NONE, REGW_EN, WB_R0, 0, 0, 0, 0, MISC_BUSTHRU) ;
	set_code(code) ;

	set_opecode(0x41) ;
	code = make_code(END_MARK, 0, 0, 0, BR_R3, WR_NONE, REGW_EN, WB_R0, 0, 0, 0, 0, MISC_BUSTHRU) ;
	set_code(code) ;

	set_opecode(0x42) ;
	code = make_code(END_MARK, 0, 0, 0, BR_R2, WR_NONE, REGW_EN, WB_R1, 0, 0, 0, 0, MISC_BUSTHRU) ;
	set_code(code) ;

	set_opecode(0x43) ;
	code = make_code(END_MARK, 0, 0, 0, BR_R3, WR_NONE, REGW_EN, WB_R1, 0, 0, 0, 0, MISC_BUSTHRU) ;
	set_code(code) ;


	set_opecode(0x44) ;
	code = make_code(END_MARK, 0, 0, 0, BR_R0, WR_NONE, REGW_EN, WB_R2, 0, 0, 0, 0, MISC_BUSTHRU) ;
	set_code(code) ;

	set_opecode(0x45) ;
	code = make_code(END_MARK, 0, 0, 0, BR_R1, WR_NONE, REGW_EN, WB_R2, 0, 0, 0, 0, MISC_BUSTHRU) ;
	set_code(code) ;

	set_opecode(0x46) ;
	code = make_code(END_MARK, 0, 0, 0, BR_R0, WR_NONE, REGW_EN, WB_R3, 0, 0, 0, 0, MISC_BUSTHRU) ;
	set_code(code) ;

	set_opecode(0x47) ;
	code = make_code(END_MARK, 0, 0, 0, BR_R1, WR_NONE, REGW_EN, WB_R3, 0, 0, 0, 0, MISC_BUSTHRU) ;
	set_code(code) ;


	set_opecode(0x48) ;
	code = make_code(END_MARK, 0, 0, 0, BR_R1, WR_NONE, REGW_EN, WB_R0, 0, 0, 0, 0, MISC_BUSTHRU) ;
	set_code(code) ;

	set_opecode(0x49) ;
	code = make_code(END_MARK, 0, 0, 0, BR_R0, WR_NONE, REGW_EN, WB_R1, 0, 0, 0, 0, MISC_BUSTHRU) ;
	set_code(code) ;

	set_opecode(0x4A) ;
	code = make_code(END_MARK, 0, 0, 0, BR_R3, WR_NONE, REGW_EN, WB_R2, 0, 0, 0, 0, MISC_BUSTHRU) ;
	set_code(code) ;

	set_opecode(0x4B) ;
	code = make_code(END_MARK, 0, 0, 0, BR_R2, WR_NONE, REGW_EN, WB_R3, 0, 0, 0, 0, MISC_BUSTHRU) ;
	set_code(code) ;



	//	4C-4F MOV Ax,Ax
	set_opecode(0x4C) ;
	code = make_code(END_MARK, 0, 0, ADX_REG, BR_NONE, WR_A0, REGW_EN, WB_CP, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	set_opecode(0x4D) ;
	code = make_code(END_MARK, 0, 0, ADX_REG, BR_NONE, WR_A0, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	set_opecode(0x4E) ;
	code = make_code(END_MARK, 0, 0, ADX_REG, BR_NONE, WR_A1, REGW_EN, WB_CP, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	set_opecode(0x4F) ;
	code = make_code(END_MARK, 0, 0, ADX_REG, BR_NONE, WR_A1, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;



	//	50-53 MOV Wx,Ax
	for(i=0 ; i<4 ; i++){
		set_opecode(0x50+i) ;
		code = make_code(0, 0, 0, 0, BR_WLO, WR_A0+(i & 1), REGW_EN, WB_R0+(i >> 1), 0, 0, 0, 0, 0) ;
		set_code(code) ;
		code = make_code(END_MARK, 0, 0, 0, BR_WHI, WR_A0+(i & 1), REGW_EN, WB_R1+(i >> 1), 0, 0, 0, 0, 0) ;
		set_code(code) ;
	}

	//	54-57 MOV Ax,Wx
	for(i=0 ; i<4 ; i++){
		set_opecode(0x54+i) ;
		code = make_code(0, 0, 0, 0, BR_R0+(i >> 1), 0, 0, 0, 0, 0, FB_BUFF1, 0, 0) ;
		set_code(code) ;
		code = make_code(0, 0, 0, 0, BR_R1+(i >> 1), 0, 0, 0, 0, 0, FB_BUFF2, 0, 0) ;
		set_code(code) ;
		code = make_code(END_MARK, 0, 0, ADX_BUFF, BR_NONE, 0, REGW_EN, WB_A0+(i & 1), 0, 0, 0, 0, 0) ;
		set_code(code) ;
	}


	//	58-5B MOV Wx,Wx
	for(i=0 ; i<4 ; i++){
		set_opecode(0x58+i) ;
		code = make_code(0, 0, 0, 0, BR_WLO, WR_A0+(i & 1), REGW_EN, WB_R0+(i >> 1), 0, 0, 0, 0, 0) ;
		set_code(code) ;
		code = make_code(END_MARK, 0, 0, 0, BR_WHI, WR_A0+(i & 1), REGW_EN, WB_R1+(i >> 1), 0, 0, 0, 0, 0) ;
		set_code(code) ;
	}

	//	5C-5F MOV Ax,Ax
	set_opecode(0x5C) ;
	code = make_code(END_MARK, 0, 0, 0, BR_NONE, WR_CP, REGW_EN, WB_A0, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	set_opecode(0x5D) ;
	code = make_code(END_MARK, 0, 0, 0, BR_NONE, WR_SP, REGW_EN, WB_A0, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	set_opecode(0x5E) ;
	code = make_code(END_MARK, 0, 0, 0, BR_NONE, WR_CP, REGW_EN, WB_A1, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	set_opecode(0x5F) ;
	code = make_code(END_MARK, 0, 0, 0, BR_NONE, WR_SP, REGW_EN, WB_A1, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	//	60,61 PUSH Wx
	for(i=0 ; i<2 ; i++){
		set_opecode(0x60+i) ;

		code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
		set_code(code) ;
		code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_R0+(i<<2), 0, 0, 0, 0, 0, 0, 0, 0) ;
		set_code(code) ;

		set_code(NOP) ;

		code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
		set_code(code) ;
		code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_R1+(i<<2), 0, 0, 0, 0, 0, 0, 0, 0) ;
		set_code(code) ;

		set_code(END_MARK) ;
	}

	//	64,65,66 PUSH A0-CP
	for(i=0 ; i<3 ; i++){
		set_opecode(0x64+i) ;

		code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
		set_code(code) ;
		code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_WHI, WR_A0+i, 0, 0, 0, 0, 0, 0, 0) ;
		set_code(code) ;

		// set_code(NOP) ;

		code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
		set_code(code) ;
		code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_WLO, WR_A0+i, 0, 0, 0, 0, 0, 0, 0) ;
		set_code(code) ;

		set_code(END_MARK) ;
	}


	//	68-69 POP Wx
	for(n=0 ; n<2 ; n++){
		set_opecode(0x68+n) ;
		//	SP->Addr SP+
		code = make_code(0, EX_MEMR | EX_ALATCH, 0, ADX_REG, BR_DIN, WR_SP, 0, 0, 0, 0, 0, 0, 0) ;
		set_code(code) ;
		code = make_code(0, 0, 0, ADX_REG, BR_DIN, WR_SP, REGW_EN, WB_R0+(n << 1), 0, 0, 0, DIN_EN, 0) ;
		set_code(code) ;

		//	SP+
		code = make_code(0, 0, 0, ADX_INC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
		set_code(code) ;

		code = make_code(0, EX_MEMR | EX_ALATCH, 0, ADX_REG, BR_DIN, WR_SP, 0, 0, 0, 0, 0, 0, 0) ;
		set_code(code) ;
		code = make_code(0, 0, 0, ADX_REG, BR_DIN, WR_SP, REGW_EN, WB_R1+(n << 1), 0, 0, 0, DIN_EN, 0) ;
		set_code(code) ;

		//	SP+
		code = make_code(END_MARK, 0, 0, ADX_INC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
		set_code(code) ;
	}


	//	6A,6B Sign eXTend
	for(i=0 ; i<2 ; i++){
		set_opecode(0x6A+i) ;
		code = make_code(0, 0, 0, ALU_OP_SXT | ALU_CY_A7, BR_R0+(i << 1), 0, 0, 0, 0, 0, FB_BUFF1, 0, MISC_ALU) ;
		set_code(code) ;

		code = make_code(END_MARK, 0, 0, ALU_OP_SXT | ALU_CY_A7, 0, 0, REGW_EN, WB_R1+(i << 1), 0, FR_LATCH, 0, 0, MISC_ALU) ;
		set_code(code) ;
	}


	//	6C-6F POP WREG
	for(n=0 ; n<4 ; n++){
		set_opecode(0x6C+n) ;
		//	SP->Addr
		code = make_code(0, EX_MEMR, 0, ADX_REG, 0, WR_SP, 0, 0, 0, 0, 0, 0, 0) ;
		set_code(code) ;

		code = make_code(0, 0, 0, ADX_INC, BR_DIN, WR_SP, REGW_EN, WB_SP, 0, 0, FB_BUFF1, 0, 0) ;
		set_code(code) ;

		code = make_code(0, EX_MEMR, 0, ADX_REG, 0, WR_SP, 0, 0, 0, 0, 0, 0, 0) ;
		set_code(code) ;

		code = make_code(0, 0, 0, ADX_INC, BR_DIN, WR_SP, REGW_EN, WB_SP, 0, 0, FB_BUFF2, 0, 0) ;
		set_code(code) ;

		//	AddtBuff->WREG
		code = make_code(END_MARK, 0, 0, ADX_BUFF, 0, WR_NONE, REGW_EN, WB_A0+n, 0, 0, 0, 0, 0) ;
		set_code(code) ;
	}



	//	70-73 ADD Ax,Wx
	for(i=0 ; i<4 ; i++){
		set_opecode(0x70+i) ;

		//	WLo -> buff1
		code = make_code(0, 0, 0, 0, 0, BR_R0+(i >> 1), 0, 0, 0, 0, FB_BUFF1, 0, 0) ;
		set_code(code) ;

		//	WHi -> buff2
		code = make_code(0, 0, 0, 0, BR_R1+(i >> 1), 0, 0, 0, 0, 0, FB_BUFF2, 0, 0) ;
		set_code(code) ;

		//	add -> Ax
		code = make_code(END_MARK, 0, 0, ADX_ADD, BR_NONE, WR_A0+(i & 1), REGW_EN, WB_A0+(i & 1), 0, 0, 0, 0, 0) ;
		set_code(code) ;
	}


	//	74 XCHG W0,W1
	set_opecode(0x74) ;
	code = make_code(0, 0, 0, ALU_NONE, BR_R0, 0, 0, 0, 0, 0, FB_BUFF1, 0, 0) ;
	set_code(code) ;
	code = make_code(0, 0, 0, ALU_NONE, BR_R2, 0, REGW_EN, WB_R0, 0, 0, 0, 0, 0) ;
	set_code(code) ;
	code = make_code(0, 0, 0, ALU_OP_BUFF1, 0, 0, REGW_EN, WB_R2, 0, 0, 0, 0, MISC_ALU_L) ;
	set_code(code) ;

	code = make_code(0, 0, 0, ALU_NONE, BR_R1, 0, 0, 0, 0, 0, FB_BUFF1, 0, 0) ;
	set_code(code) ;
	code = make_code(0, 0, 0, ALU_NONE, BR_R3, 0, REGW_EN, WB_R1, 0, 0, 0, 0, 0) ;
	set_code(code) ;
	code = make_code(END_MARK, 0, 0, ALU_OP_BUFF1, 0, 0, REGW_EN, WB_R3, 0, 0, 0, 0, MISC_ALU_L) ;
	set_code(code) ;


	//	75 XCHG A0,A1
	set_opecode(0x75) ;
	code = make_code(0, 0, 0, 0, BR_WLO, WR_A0, 0, 0, 0, 0, FB_BUFF1, 0, 0) ;
	set_code(code) ;
	code = make_code(0, 0, 0, 0, BR_WHI, WR_A0, 0, 0, 0, 0, FB_BUFF2, 0, 0) ;
	set_code(code) ;

	code = make_code(0, 0, 0, ADX_REG, 0, WR_A1, REGW_EN, WB_A0, 0, 0, 0, 0, 0) ;
	set_code(code) ;
	code = make_code(END_MARK, 0, 0, ADX_BUFF, 0, 0, REGW_EN, WB_A1, 0, 0, 0, 0, 0) ;
	set_code(code) ;


	//	76 XCHG W0,A0
	set_opecode(0x76) ;

	code = make_code(0, 0, 0, 0, BR_R0, 0, 0, 0, 0, 0, FB_BUFF1, 0, MISC_BUSTHRU) ;
	set_code(code) ;
	code = make_code(0, 0, 0, 0, BR_R1, 0, 0, 0, 0, 0, FB_BUFF2, 0, MISC_BUSTHRU) ;
	set_code(code) ;

	code = make_code(0, 0, 0, 0, BR_WLO, WR_A0, REGW_EN, WB_R2, 0, 0, 0, 0, MISC_BUSTHRU) ;
	set_code(code) ;
	code = make_code(0, 0, 0, 0, BR_WHI, WR_A0, REGW_EN, WB_R3, 0, 0, 0, 0, MISC_BUSTHRU) ;
	set_code(code) ;

	code = make_code(END_MARK, 0, 0, ADX_BUFF, 0, 0, REGW_EN, WB_A0, 0, 0, 0, 0, 0) ;
	set_code(code) ;


	//	77 XCHG W1,A1
	set_opecode(0x77) ;

	code = make_code(0, 0, 0, 0, BR_R2, 0, 0, 0, 0, 0, FB_BUFF1, 0, MISC_BUSTHRU) ;
	set_code(code) ;
	code = make_code(0, 0, 0, 0, BR_R3, 0, 0, 0, 0, 0, FB_BUFF2, 0, MISC_BUSTHRU) ;
	set_code(code) ;

	code = make_code(0, 0, 0, 0, BR_WLO, WR_A1, REGW_EN, WB_R2, 0, 0, 0, 0, MISC_BUSTHRU) ;
	set_code(code) ;
	code = make_code(0, 0, 0, 0, BR_WHI, WR_A1, REGW_EN, WB_R3, 0, 0, 0, 0, MISC_BUSTHRU) ;
	set_code(code) ;

	code = make_code(END_MARK, 0, 0, ADX_BUFF, 0, 0, REGW_EN, WB_A1, 0, 0, 0, 0, 0) ;
	set_code(code) ;


	//	0x78-0x7B mov rr,imm8
	for(i=0 ; i<4 ; i++){
		set_opecode(0x78+i) ;
		set_code(CPOUT) ;
		code = make_code(0, EX_NONE, 0, 0, BR_DIN, 0, REGW_EN, WB_R0+i, 0, 0, 0, DIN_EN, 0) ;
		set_code(code) ;
		code = make_code(END_MARK, EX_NONE, 0, ADX_INC, 0, WR_CP, REGW_EN, WB_CP, 0, 0, 0, 0, 0) ;
		set_code(code) ;
	}

	//	0x7C-0x7F mov R16,i16
	for(i=0 ; i<4 ; i++){
		set_opecode(0x7C+i) ;
		set_code(CPOUT) ;
		set_code(DATAIN_BUFF1_CPINC) ;
		set_code(CPOUT) ;
		set_code(DATAIN_BUFF2_CPINC) ;

		code = make_code(END_MARK, 0, 0, ADX_BUFF, 0, 0, REGW_EN, WB_A0+i, 0, 0, 0, 0, 0) ;
		set_code(code) ;
	}


	//	80-BF ALUOpe
	DWORD alu_op[8]={
		ALU_OP_ADD, ALU_OP_SUB, ALU_OP_ADDC, ALU_OP_SUBB, ALU_OP_AND, ALU_OP_SUB, ALU_OP_XOR, ALU_OP_OR
	} ;
	DWORD alu_sel[8]={
		MISC_ALU, MISC_ALU, MISC_ALU, MISC_ALU, MISC_ALU_L, MISC_ALU, MISC_ALU_L, MISC_ALU_L
	} ;
	for(n=0 ; n<8 ; n++){
		for(i=0 ; i<8 ; i++){
			set_opecode(0x80+n*8+i) ;


			if(i==5){
				//	dst->buff1
				code = make_code(0, 0, 0, ALU_NONE, BR_R0, 0, 0, 0, 0, 0, FB_BUFF1, 0, 0) ;
				set_code(code) ;

				//	CP OUT
				code = make_code(0, EX_MEMR | EX_ALATCH, 0, ADX_REG, 0, WR_CP, 0, 0, 0, 0, 0, 0, 0) ;
				set_code(code) ;

				//	DBUS->Buff2 CP+
				code = make_code(0, 0, 0, ADX_INC, BR_DIN, WR_CP, REGW_EN, WB_CP, 0, 0, FB_BUFF2, 0, MISC_BUSTHRU) ;
				set_code(code) ;
			}
			else{
				//	dst->buff1
				code = make_code(0, 0, 0, ALU_NONE, BR_R0+((i >> 2) & 1), 0, 0, 0, 0, 0, FB_BUFF1, 0, 0) ;
				set_code(code) ;
				//	RSrc->Buff2
				code = make_code(0, 0, 0, alu_op[n], BR_R0+(i & 3), 0, 0, 0, 0, 0, FB_BUFF2, 0, alu_sel[n]) ;
				set_code(code) ;
			}

			if(n==5){	//	wait no write back
				code = make_code(END_MARK, 0, 0, alu_op[n], 0, 0, 0, 0, 0, FR_LATCH, 0, 0, alu_sel[n]) ;
				set_code(code) ;
			}
			else{
				//	write back
				if(i==5){
					code = make_code(END_MARK, 0, 0, alu_op[n], 0, 0, REGW_EN, WB_R0, 0,  FR_LATCH, 0, 0, alu_sel[n]) ;
					set_code(code) ;
				}
				else{
					code = make_code(END_MARK, 0, 0, alu_op[n], 0, 0, REGW_EN, WB_R0+((i >> 2) & 1), 0,  FR_LATCH, 0, 0, alu_sel[n]) ;
					set_code(code) ;
				}
			}
		}
	}

	//	C0-C3 NOT rr
	for(i=0 ; i<4 ; i++){
		set_opecode(0xC0+i) ;
		code = make_code(0, 0, 0, 0, BR_R0+i, 0, 0, 0, 0, 0, FB_BUFF2, 0, 0) ;
		set_code(code) ;
		code = make_code(END_MARK, 0, 0, ALU_OP_NOT, 0, 0, REGW_EN, WB_R0+i, 0, FR_LATCH, 0, 0, MISC_ALU_L) ;
		set_code(code) ;
	}

	//	C4-C7 SHL rr
	for(i=0 ; i<4 ; i++){
		set_opecode(0xC4+i) ;
		code = make_code(0, 0, 0, 0, BR_R0+i, 0, 0, 0, 0, 0, FB_BUFF1, 0, 0) ;
		set_code(code) ;
		code = make_code(END_MARK, 0, 0, ALU_OP_SHL, 0, 0, REGW_EN, WB_R0+i, 0, FR_LATCH, 0, 0, MISC_ALU) ;
		set_code(code) ;
	}

	//	C8-CB SHR rr
	for(i=0 ; i<4 ; i++){
		set_opecode(0xC8+i) ;
		code = make_code(0, 0, 0, 0, BR_R0+i, 0, 0, 0, 0, 0, FB_BUFF1, 0, 0) ;
		set_code(code) ;
		code = make_code(END_MARK, 0, 0, ALU_OP_SHR, 0, 0, REGW_EN, WB_R0+i, 0, FR_LATCH, 0, 0, MISC_ALU) ;
		set_code(code) ;
	}

	//	CC-CF SAR rr
	for(i=0 ; i<4 ; i++){
		set_opecode(0xCC+i) ;
		code = make_code(0, 0, 0, 0, BR_R0+i, 0, 0, 0, 0, 0, FB_BUFF1, 0, 0) ;
		set_code(code) ;
		code = make_code(END_MARK, 0, 0, ALU_OP_SAR, 0, 0, REGW_EN, WB_R0+i, 0, FR_LATCH, 0, 0, MISC_ALU) ;
		set_code(code) ;
	}

	//	D0-D3 INC Rx
	for(i=0 ; i<4 ; i++){
		set_opecode(0xD0+i) ;
		code = make_code(END_MARK, 0, 0, ALU_OP_INC, BR_R0+(i & 3), 0, REGW_EN, WB_R0+(i & 3), 0, FR_LATCH, FB_BUFF1, 0, MISC_ALU) ;
		set_code(code) ;
	}


	//	D4,D5 INC Wx
	for(i=0 ; i<2 ; i++){
		set_opecode(0xD4+i) ;
		code = make_code(0, 0, 0, ALU_OP_INC, BR_R0+(i << 1), 0, REGW_EN, WB_R0+(i << 1), 0, FR_LATCH, FB_BUFF1, 0, MISC_ALU) ;
		set_code(code) ;
		code = make_code(END_MARK, 0, 0, ALU_OP_ADD0 | ALU_CY_CC, BR_R1+(i << 1), 0, REGW_EN, WB_R1+(i << 1), 0, FR_LATCH, FB_BUFF1, 0, MISC_ALU) ;
		set_code(code) ;
	}

	//	D6,D7 INC Ax
	for(i=0 ; i<2 ; i++){
		set_opecode(0xD6+i) ;
		code = make_code(END_MARK, 0, 0, ADX_INC, 0, WR_A0+i, REGW_EN, WB_A0+i, 0, 0, 0, 0, 0) ;
		set_code(code) ;
	}


	//	D8-DB DEC Rx
	for(i=0 ; i<4 ; i++){
		set_opecode(0xD8+i) ;
		code = make_code(END_MARK, 0, 0, ALU_OP_DEC, BR_R0+(i & 3), 0, REGW_EN, WB_R0+(i & 3), 0, FR_LATCH, FB_BUFF1, 0, MISC_ALU) ;
		set_code(code) ;
	}

	//	DC,DD DEC Wx
	for(i=0 ; i<2 ; i++){
		set_opecode(0xDC+i) ;
		code = make_code(0, 0, 0, ALU_OP_DEC, BR_R0+(i << 1), 0, REGW_EN, WB_R0+(i << 1), 0, FR_LATCH, FB_BUFF1, 0, MISC_ALU) ;
		set_code(code) ;
		code = make_code(END_MARK, 0, 0, ALU_OP_SUB0 | ALU_CY_CC, BR_R1+(i << 1), 0, REGW_EN, WB_R1+(i << 1), 0, FR_LATCH, FB_BUFF1, 0, MISC_ALU) ;
		set_code(code) ;
	}

	//	DE,DF DEC Ax
	for(i=0 ; i<2 ; i++){
		set_opecode((0xDE)+i) ;
		code = make_code(END_MARK, 0, 0, ADX_DEC, 0, WR_A0+i, REGW_EN, WB_A0+i, 0, 0, 0, 0, 0) ;
		set_code(code) ;
	}


	//	E0-E9 Jcc

	//	EA LDFR
	set_opecode(0xEA) ;
	code = make_code(END_MARK, 0, 0, ALU_CY_CC, 0, 0, REGW_EN, WB_R0, 0, 0, 0, 0, MISC_STF) ;
	set_code(code) ;

	//	EB STFR
	set_opecode(0xEB) ;
	code = make_code(END_MARK, 0, 0, 0, BR_R0, 0, 0, 0, STFR, FR_LATCH, 0, 0, 0) ;
	set_code(code) ;



	//	EC INT 8
	set_opecode(0xEC) ;

	code=make_code_imm8(0, 8, FB_BUFF1) ;
	set_code(code) ;

	code=make_code_imm8(0, 0, FB_BUFF2) ;
	set_code(code) ;

	//	SP- ->AddtBuff ->SP
	code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;
	code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_THRU, 0, 0, 0, 0, 0, 0, 0, MISC_STF) ;
	set_code(code) ;

	// set_code(NOP) ;

	code = make_code(0, 0, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;
//	code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
//	set_code(code) ;
//	code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_R0, 0, 0, 0, 0, 0, 0, 0, 0) ;
//	set_code(code) ;

	// set_code(NOP) ;

	code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;
	code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_WHI, WR_CP, 0, 0, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	// set_code(NOP) ;

	code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;
	code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_WLO, WR_CP, 0, 0, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	//	CP<- CP+buff1
	code = make_code(END_MARK, 0, 0, ADX_BUFF, 0, WR_CP, REGW_EN, WB_CP, 0, 0, 0, 0, 0) ;
	set_code(code) ;



	//	ED INT imm8
	set_opecode(0xED) ;

	set_code(CPOUT) ;
	set_code(DATAIN_BUFF1_CPINC) ;

	//	SP-
	code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;
	code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_THRU, 0, 0, 0, 0, 0, 0, 0, MISC_STF) ;
	set_code(code) ;

	code = make_code(0, 0, 0, ALU_OP_x8, BR_THRU, 0, 0, 0, 0, 0, FB_BUFF1, 0, MISC_ALU) ;	//	Hold time 違反に注意
	set_code(code) ;

	code = make_code(0, 0, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;
//	code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
//	set_code(code) ;
//	code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_R0, 0, 0, 0, 0, 0, 0, 0, 0) ;
//	set_code(code) ;

	code = make_code(0, 0, 0, ALU_OP_ZERO, BR_THRU, 0, 0, 0, 0, 0, FB_BUFF2, 0, MISC_ALU_L) ;
	set_code(code) ;

	code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;
	code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_WHI, WR_CP, 0, 0, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	// set_code(NOP) ;

	code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;
	code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_WLO, WR_CP, 0, 0, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	//	CP<- CP+buff1
	code = make_code(END_MARK, 0, 0, ADX_BUFF, 0, WR_CP, REGW_EN, WB_CP, 0, 0, 0, 0, 0) ;
	set_code(code) ;



	//	EE jmp imm8
	set_opecode(0xEE) ;
	//	CP OUT CP+
	set_code(CPOUT) ;
	set_code(DATAIN_BUFF1_CPINC) ;	// Lo

	//	CP<- CP+buff1
	code = make_code(END_MARK, 0, 0, ADX_SXT, 0, WR_CP, REGW_EN, WB_CP, 0, 0, 0, 0, 0) ;
	set_code(code) ;


	//	EF jmpn imm8
	set_opecode(0xEF) ;
	//	CP+
	code = make_code(END_MARK, 0, 0, ADX_INC, 0, WR_CP, REGW_EN, WB_CP, 0, 0, 0, 0, 0) ;
	set_code(code) ;



	//	F4 DI
	set_opecode(0xF4) ;
	code=make_code_imm8(0, ~0x20, FB_BUFF2) ;
	set_code(code) ;
	code = make_code(0, 0, 0, 0, BR_THRU, 0, 0, 0, 0, 0, FB_BUFF1, 0, MISC_STF) ;
	set_code(code) ;
	code = make_code(END_MARK, 0, 0, ALU_OP_AND, BR_THRU, 0, 0, 0, STFR, FR_LATCH, 0, 0, MISC_ALU_L) ;
	set_code(code) ;


	//	F5 EI
	set_opecode(0xF5) ;
	code=make_code_imm8(0, 0x20, FB_BUFF2) ;
	set_code(code) ;
	code = make_code(0, 0, 0, 0, BR_THRU, 0, 0, 0, 0, 0, FB_BUFF1, 0, MISC_STF) ;
	set_code(code) ;
	code = make_code(END_MARK, 0, 0, ALU_OP_OR, BR_THRU, 0, 0, 0, STFR, FR_LATCH, 0, 0, MISC_ALU_L) ;
	set_code(code) ;


	//	F6 stc
	set_opecode(0xF6) ;
	code=make_code_imm8(0, 1, FB_BUFF2) ;
	set_code(code) ;
	code = make_code(0, 0, 0, 0, BR_THRU, 0, 0, 0, 0, 0, FB_BUFF1, 0, MISC_STF) ;
	set_code(code) ;
	code = make_code(END_MARK, 0, 0, ALU_OP_OR, BR_THRU, 0, 0, 0, STFR, FR_LATCH, 0, 0, MISC_ALU_L) ;
	set_code(code) ;


	//	F7 cmc
	set_opecode(0xF7) ;
	code=make_code_imm8(0, 1, FB_BUFF2) ;
	set_code(code) ;
	code = make_code(0, 0, 0, 0, BR_THRU, 0, 0, 0, 0, 0, FB_BUFF1, 0, MISC_STF) ;
	set_code(code) ;
	code = make_code(END_MARK, 0, 0, ALU_OP_XOR, BR_THRU, 0, 0, 0, STFR, FR_LATCH, 0, 0, MISC_ALU_L) ;
	set_code(code) ;


	//	F8-F9 CALL Ax
	for(i=0 ; i<2 ; i++){
		set_opecode(0xF8+i) ;
		//	SP- ->AddtBuff ->SP
		code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
		set_code(code) ;
		code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_WHI, WR_CP, 0, 0, 0, 0, 0, 0, 0) ;
		set_code(code) ;

		set_code(NOP) ;

		code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
		set_code(code) ;
		code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_WLO, WR_CP, 0, 0, 0, 0, 0, 0, 0) ;
		set_code(code) ;

		code = make_code(END_MARK, 0, 0, ADX_REG, 0, WR_A0+i, REGW_EN, WB_CP, 0, 0, 0, 0, 0) ;
		set_code(code) ;
	}

	//	FA CALL imm16
	set_opecode(0xFA) ;

	//	imm16->BUFF
	set_code(CPOUT) ;
	set_code(DATAIN_BUFF1_CPINC) ;	// Lo
	set_code(CPOUT) ;
	set_code(DATAIN_BUFF2_CPINC) ;	//	Hi

	//	SP- ->AddtBuff ->SP
	code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;
	code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_WHI, WR_CP, 0, 0, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	// set_code(NOP) ;

	code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;
	code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_WLO, WR_CP, 0, 0, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	code = make_code(END_MARK, 0, 0, ADX_ADD, 0, WR_CP, REGW_EN, WB_CP, 0, 0, 0, 0, 0) ;
	set_code(code) ;


	//	FC Test and Set if[A0]==0 [A0]<-01
	set_opecode(0xFC) ;

	code = make_code(0, 0, 0, 0, 0, WR_A0, 0, 0, 0, 0, FB_LOCK, 0, 0) ;
	set_code(code) ;
	code = make_code(0, EX_MEMR, 0, ADX_REG, 0, WR_A0, 0, 0, 0, 0, 0, 0, 0) ;
	set_code(code) ;
	code = make_code(0, 0, 0, 0, 0, WR_A0, 0, 0, 0, 0, FB_BUFF1, 0, 0) ;
	set_code(code) ;

	code = make_code(END_MARK, 0, 0, 0, 0, 0, 0, 0, 0, 0, FB_LOCK, 0, 0) ;	//	Unlock
	set_code(code) ;




	//	FD IRET
	set_opecode(0xFD) ;
	//	SP->Addr
	code = make_code(0, EX_MEMR, 0, ADX_REG, 0, WR_SP, 0, 0, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	code = make_code(0, 0, 0, ADX_INC, BR_DIN, WR_SP, REGW_EN, WB_SP, 0, 0, FB_BUFF1, DIN_EN, 0) ;
	set_code(code) ;

	code = make_code(0, EX_MEMR, 0, ADX_REG, 0, WR_SP, 0, 0, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	code = make_code(0, 0, 0, ADX_INC, BR_DIN, WR_SP, REGW_EN, WB_SP, 0, 0, FB_BUFF2, DIN_EN, 0) ;
	set_code(code) ;

	//	SP->Addr
	//code = make_code(0, EX_MEMR, 0, ADX_REG, 0, WR_SP, 0, 0, 0, 0, 0, 0, 0) ;
	//set_code(code) ;

	//code = make_code(0, 0, 0, 0, BR_DIN, 0, REGW_EN, WB_R0, 0, 0, 0, DIN_EN, 0) ;
	//set_code(code) ;

	//	SP+
	code = make_code(0, 0, 0, ADX_INC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;


	code = make_code(0, EX_MEMR, 0, ADX_REG, 0, WR_SP, 0, 0, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	code = make_code(0, 0, 0, 0, BR_DIN, 0, 0, 0, STFR, FR_LATCH, 0, DIN_EN, MISC_STF) ;
	set_code(code) ;

	//	SP+
	code = make_code(0, 0, 0, ADX_INC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	//	Buff->CP
	code = make_code(END_MARK, 0, 0, ADX_BUFF, 0, WR_NONE, REGW_EN, WB_CP, 0, 0, 0, 0, 0) ;
	set_code(code) ;



	//	FE jump imm16
	set_opecode(0xFE) ;

	//	imm16->BUFF
	set_code(CPOUT) ;
	set_code(DATAIN_BUFF1_CPINC) ;	// Lo
	set_code(CPOUT) ;
	set_code(DATAIN_BUFF2_CPINC) ;	//	Hi

	code = make_code(END_MARK, 0, 0, ADX_ADD, 0, WR_CP, REGW_EN, WB_CP, 0, 0, 0, 0, 0) ;
	set_code(code) ;


	//	FF NOP
	set_opecode(0xFF) ;
	set_code(ENDMARK) ;



	//	Reset sequence.
	set_opecode(CODE_RESET) ;
	code = make_code(0, 0, 0, ALU_OP_NONE, BR_NONE, WR_NONE, REGW_NONE, 0, 0, 0, 0, 0, 0) ;
	set_code(NOP) ;	//	リセットのタイミングによっては、内部状態が不安定なので、おちつくまでNOP

	//	Clear CP
	code = make_code(END_MARK, 0, 0, ADX_ZERO, BR_NONE, 0, REGW_EN, WB_CP, 0, 0, 0, 0, 0) ;
	set_code(code) ;


	//CODE_FETCH
	set_opecode(CODE_FETCH) ;
	set_code(FETCH_BYTE_CPOUT) ;
	set_code(FETCH_BYTE_READDATA | END_MARK) ;


	//	External INT imm8
	set_opecode(0xE2) ;
/*
	code=make_code_imm8(0, ~0x20, FB_BUFF2) ;
	set_code(code) ;
	code = make_code(0, 0, 0, 0, BR_THRU, 0, 0, 0, 0, 0, FB_BUFF1, 0, MISC_STF) ;
	set_code(code) ;
	code = make_code(END_MARK, 0, 0, ALU_OP_AND, BR_THRU, 0, 0, 0, STFR, FR_LATCH, 0, 0, MISC_ALU_L) ;
	set_code(code) ;
*/
	set_code(NOP) ;

	code = make_code(0, EX_IRQA, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) ;
	set_code(code) ;
	code = make_code(0, EX_NONE, 0, ADX_INC, BR_DIN, WR_CP, REGW_EN, WB_CP, 0, 0, FB_BUFF1, DIN_EN, 0) ;
	set_code(code) ;

	//	SP- ->AddtBuff ->SP
	code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;
	code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_THRU, 0, 0, 0, 0, 0, 0, 0, MISC_STF) ;
	set_code(code) ;

	code = make_code(0, 0, 0, ALU_OP_x8, BR_THRU, 0, 0, 0, 0, 0, FB_BUFF1, 0, MISC_ALU) ;	//	Hold time 違反に注意
	set_code(code) ;

	code = make_code(0, 0, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;
//	code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
//	set_code(code) ;
//	code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_R0, 0, 0, 0, 0, 0, 0, 0, 0) ;
//	set_code(code) ;

	code = make_code(0, 0, 0, ALU_OP_ZERO, BR_THRU, 0, 0, 0, 0, 0, FB_BUFF2, 0, MISC_ALU_L) ;
	set_code(code) ;

	code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;
	code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_WHI, WR_CP, 0, 0, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	set_code(NOP) ;

	code = make_code(0, EX_ALATCH, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	set_code(code) ;
	code = make_code(0, EX_MEMW_EN | EX_DLATCH, 0, 0, BR_WLO, WR_CP, 0, 0, 0, 0, 0, 0, 0) ;
	set_code(code) ;

	//	CP<- CP+buff1
	code = make_code(END_MARK, 0, 0, ADX_BUFF, 0, WR_CP, REGW_EN, WB_CP, 0, 0, 0, 0, 0) ;
	set_code(code) ;

}

void setup(void){

	FETCH_BYTE_CPOUT = make_code(0, EX_MEMR, 0, ADX_THRU, BR_DIN, WR_CP, 0, 0, 0, 0, 0, 0, 0) ;
	FETCH_BYTE_READDATA = make_code(0, 0, 0, ADX_INC, BR_DIN, WR_CP, REGW_EN, WB_CP, 0, 0, 0, 0, 0) ;


	//	CP->ADDR mem read->BUSCtrl
	CPOUT=make_code(0, EX_MEMR, 0, ADX_REG, 0, WR_CP, 0, 0, 0, 0, 0, 0, 0) ;
	//	DATA->BUFF1 CP->CP+
	DATAIN_BUFF1_CPINC=make_code(0, EX_NONE, 0, ADX_INC, BR_DIN, WR_CP, REGW_EN, WB_CP, 0, 0, FB_BUFF1, 0, 0) ;
	DATAIN_BUFF2_CPINC=make_code(0, EX_NONE, 0, ADX_INC, BR_DIN, WR_CP, REGW_EN, WB_CP, 0, 0, FB_BUFF2, 0, 0) ;

	SPINC=make_code(0, EX_NONE, 0, ADX_INC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;
	SPDEC=make_code(0, EX_NONE, 0, ADX_DEC, 0, WR_SP, REGW_EN, WB_SP, 0, 0, 0, 0, 0) ;

	NOP=make_code(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) ;
	ENDMARK=NOP | END_MARK ;

}


DWORD mem[1024] ;

void write_romfile(void){
	FILE* fp ;

	int i ;
	int tbl_idx=0 ;
	int opstart=0 ;
	int zlen=0 ;
	int mem_idx=0 ;

	fp=fopen("2908BuROM.TXT", "w") ;
	int out_count=0 ;
	int romsize=0 ;
	fprintf(fp, "v2.0 raw\x0a") ;

	for(i=0 ; i<ROM_SIZE ; i++){
		if(rom[i]==0){
			zlen++ ;
		}
		else{
			if(zlen!=0){	//	Output "nnn*0 "
				fprintf(fp, "%d*0 ", zlen) ;
				out_count++ ;
			}
			zlen=0 ;

			romsize++ ;

			fprintf(fp, "%x ", rom[i]) ;
			out_count++ ;

			if(out_count>=8){
				fprintf(fp, "\x0a") ;
				out_count=0 ;
			}
		}
	}
	fclose(fp) ;

	fp=fopen("2908BuROM.mem", "w") ;
	for(i=0 ; i<4096 ; i++){
		fprintf(fp, "%x\n", rom[i]) ;
	}
	fclose(fp) ;


	fp=fopen("2908CuROM.TXT", "w") ;
	fprintf(fp, "v2.0 raw\x0a") ;

	// @@@ romを詰める
	for(i=0 ; i<ROM_SIZE ; i+=16){
		if(rom[i]==0){
			rom_idx[tbl_idx]=opstart ;
			fprintf(fp, "0 ") ;
			tbl_idx++ ;
			opstart++ ;
			mem_idx++ ;
		}
		else{
			rom_idx[tbl_idx]=opstart ;
			for(int n=0 ; n<16 ; n++){
				fprintf(fp, "%x ", rom[i+n]) ;
				mem[mem_idx]=rom[i+n] ;
				mem_idx++ ;
				opstart++ ;
				if(rom[i+n] & 0x80000000 || rom[i+n]==0){
					tbl_idx++ ;
					break ;
				}
			}
		}
	}

	fprintf(fp, "%d*0", 1024-opstart) ;

	fclose(fp) ;

	fp=fopen("2908CuROM.mem", "w") ;
	for(i=0 ; i<1024 ; i++){
		fprintf(fp, "%x\n", mem[i]) ;
	}
	fclose(fp) ;

	fp=fopen("2908uROMTBL.TXT", "w") ;
	fprintf(fp, "v2.0 raw\x0a") ;
	for(i=0 ; i<tbl_idx ; i++){
		fprintf(fp, "%x ", rom_idx[i]) ;
	}
	fclose(fp) ;


	fp=fopen("2908uROMTBL.mem", "w") ;
	for(i=0 ; i<tbl_idx ; i++){
		fprintf(fp, "%x\n", rom_idx[i]) ;
	}
	fclose(fp) ;

	printf("rom tbl size(%d)\n", opstart) ;

	fp=fopen("2908uROM.h", "w") ;
	fprintf(fp, "static unsigned int urom[]={\n") ;

	for(i=0 ; i<ROM_SIZE ; i++){
		if((i & 0xff)==0){
			fprintf(fp, "/* %x */", i>>8) ;
		}
		fprintf(fp, "0x%x,", rom[i]) ;
		if((i%8)==7){
			fprintf(fp, "\n") ;
		}
	}
	fprintf(fp, "};\n") ;
}

int main(void){
	setup() ;
	make_rom() ;
	write_romfile() ;
}
