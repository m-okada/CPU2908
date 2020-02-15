;
;
rxbuff eq $ff00
;
.org 0
	jmp start
.org $100
start:
	xor r1,r1
	mov a0,$0f01
	mov a1,txstr
loop:
	st [a0],r0
wait:
	ld r0,a0
	and r0, $fe
	jz loop
	jmps wait
	inc a1

	ld r0,[a1]
	and r0,r0
	jnz loop
halt:
	jmps halt
txstr:
.ds 'QBUG V1.0'
.db $0a
.db 0
	nop
