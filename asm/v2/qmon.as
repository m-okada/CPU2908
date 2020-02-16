; QBUG Monitor.
; Ver 1.0 M-Okada
; L Load file
; W Write file
; S Step trace
; G Go
; R Dump register
; M Dump memory

rxbuff eq $ff00
;
.org 0 ; swi 0
	jmp start
.org 8 ; swi 1
	call out4h
.org 64 ; swi8
	nop
.org $100
start:
	mov sp,0
	xor r1,r1
	mov a0,$0f01
	mov a1,topmsg
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
	mov pc,halt
	jmps halt
out4h:	; w1 to hex
	mov r0, r3
	and r0,$0F
	add r0,$30

	cmp r0, 10
	jc skip4h
	add r0,$37 ; 'A'-10
skip4h00:
	add r0,$30

skip4h01:
	shr r0
	shr r0
	shr r0
	shr r0

out2h:	; r2 to hex


outchar:

waitsend:

topmsg:
	.db 'QBUG V1.0',$0a,0
	nop
