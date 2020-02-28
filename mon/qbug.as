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
	iret
.org 64 ; swi 8
	nop

.org $100

start:
	mov sp,0

	mov a1,topmsg

start_msg:
	ld r0,[a1]
	or r0,r0

	inc a1

	ld r0,[a1]
	and r0,r0
	jnz start_msg


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
out4h00:
	add r0,$30

out4h01:
	push w0

	mov r1,r0
	shr r0
	shr r0
	shr r0
	shr r0

	call out2h
	mov r0,r1

	pop w0
	ret

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
	jz rx00

	pop a0
	ret


;
; r1 : Ascii code to send.
;
txchar:
	push a0
	push w0

	mov r3,0
	or r1, r3
	jnz txexit

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
; r0 to hex -> w0
;
out2h:	; r0 to hex
	and r0, $0f


outstring: ; A0 ptr of ascz string.

outchar:

waitsend:

topmsg:
	.db 'QBUG V1.0',$0a,0
	nop
