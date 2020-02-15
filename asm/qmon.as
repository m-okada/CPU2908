rxbuff eq $ff00
;
.org 0
	jmp start
.org $100
start:
	mov a0,$0f01
;	mov a1,txstr
	ld r0,a1
loop:
	nop
	jmps loop
txstr:
.ds 'QBUG V1.0'
.db $0a
.db 0
	nop
