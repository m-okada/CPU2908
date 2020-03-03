prompt eq $3e

; Disp message.
	mov sp,0
	mov r3,0
	mov a1,msg
loop:
	ld r1,[a1]
	or r1,r3
	jz L001
	inc a1

	call txchar
	jmps loop

L001:
	mov r2,prompt
L002:
	call rxchar

	mov r0,r1
	cmp r0,$72	;	'r' command
	jnz echoBack

	inc r1
	call txchar
	jmp L002

echoBack:
	call txchar
	jmp L002

; r1 : Recv char.
rxchar:
	mov a0,$0f01
rx00:
	ld r0,[a0]
	mov r1,r0
	or r0,r0
	jz rx00

	ret

halt:
	jmps halt

; r1 : Ascii code to send.
txchar:
	push a0
	push w0

	mov r3,0
	or r1, r3
	jz txexit	;	Wait for TxBuffer empty.

	mov a0,$0f00
tx00:
	ld r0, [a0]
	and r0, $08
	jz tx00
	inc a0
	st [a0],r1

txexit:
	pop w0
	pop a0
	ret


jumptable:
	.dw txchar,loop

charCode:
	.db 'r'

msg:
	.db 'Monitor-Q V1.0', $0a, 0
	nop
