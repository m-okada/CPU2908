; Disp message.
	mov sp,0
	mov r3,0
	mov a1,msg
loop:
	ld r1,[a1]
	call tx
	inc a1
	or r1,r3
	jnz loop

halt:
	jmps halt

rx:
	mov a0,$0f01
rx00:
	ld r0,[a0]
	mov r1,r0
	or r0,r0
	jz rx00

	ret

; r1 : Ascii code of send.
tx:
	mov a0,$0f00
tx00:
	ld r0, [a0]
	and r0, $08
	jz tx00
	inc a0
	st[a0],r1
	ret

msg:
	.db 'Hello world!', $0a, 0

