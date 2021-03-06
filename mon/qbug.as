﻿; QBUG Monitor.
; Ver 1.0 M-Okada
; L Load file
; W Write file
; S Step trace
; G Go
; R Dump register
; M Dump memory

uart_data eq $0f00
uart_status eq $0f01
rxbuff eq $ff00
;
.org 0 ; swi 0
	jmp start
.org 8 ; swi 1
	call out4h
	iret
.org 64 ; swi 8
	nop

.org $100

start:
	mov sp,0

;	mov r1,$31
;	call out2h

	mov a0,topmsg
	call outstring

waitchar:
	call rxchar
	mov r0,r1
	call out2h
	jmp waitchar

halt:
	mov pc,halt
	jmps halt


;
;r1 : Recv char.
;
rxchar:
	push a0
	mov a0,$0f01
rx00:
	ld r0,[a0]
	mov r1,r0
	or r0,r0
	jz rx00	;	wait for receive.

	pop a0
	ret


;
; w0 Hex to send.
;
out4h:
	call out2h
	swb w0
	call out2h
	swb w0
	ret

;
; Out space
;
outspc:
	push w0
	mov r1,$20
	call txchar
	pop w0
	ret

;
; r1 Hex to send.
;
out2h:
	push w0
	push w1

	mov r2,r1	; save

	mov r0,r1

	shr r0
	shr r0
	shr r0
	shr r0

	and r0,$0f
	cmp r0,10
	jb out2h_skip0

	add r0,7	; 'A'-'0'-10

out2h_skip0:
	add r0,48	;	'0'

	mov r1,r0
	call txchar

	mov r0,r2	; restore
	and r0,$0f
	cmp r0,10
	jb out2h_skip1

	add r0,7	; 'A'-'0'-10

out2h_skip1:
	add r0,48	;	'0'

	mov r1,r0
	call txchar

	pop w1
	pop w0
	ret


;
; r1 : Ascii code to send.
;
txchar:
	push a0
	push w0

	mov r3,0
	or r1, r3
	jz txexit

	mov a0,$0f00	;	UART status register.
tx00:
	ld r0, [a0]
	and r0, $08
	jz tx00		;	Wait for TxBuffer empty.
	inc a0
	st [a0],r1

txexit:
	pop w0
	pop a0
	ret


;
;  A0 ptr of ascz string.
;
outstring:
	push a0
	push w0
outchar:
	ld r0,[a0]
	inc a0
	mov r1,r0
	or r0,r1
	jz outstring_exit

	call txchar
	jmps outchar

outstring_exit:
	pop w0
	pop a0
	ret


waitsend:

topmsg:
	.db 'QBUG V1.0',$0a,0
	nop
