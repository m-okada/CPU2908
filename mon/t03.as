.org 0
	mov a1,msg
	jmp start
.org 64 ; SWI8
	call rxchar
	iret

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

msg:
	.db 'abc',0
start:
	nop
