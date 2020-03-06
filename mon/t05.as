;
;
;
.org 0
	jmp start
.org 64	;	SWI 8 Break point trap.
	push w0
	mov r1,$49	; 'I'
	call txchar
	pop w0
	iret
start:
	mov sp,0
	call rxchar
	swi8

	jmp start

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


