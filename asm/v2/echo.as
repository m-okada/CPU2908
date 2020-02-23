prompt eq $3e

; Disp message.
	mov sp,0
	mov r3,0
	mov r2,1
	mov a1,msg
loop:
	ld r1,[a1]
	or r1,r3
	jz L001

	inc a1

;	add r1,r3
;	inc r1
;	dec r1
;	or r1,r2

	jmp txchar

L001:

; r1 : Recv char.
rxchar:
	mov a0,$0f01
rx00:
	ld r0,[a0]
	mov r1,r0
	or r0,r0
	jz rx00

;	inc r1
;	or r1,r2

; r1 : Ascii code to send.
txchar:
	mov r3,0
	or r1, r3
	jz txexit

	mov a0,$0f00
tx00:
	ld r0, [a0]
	and r0, $08
	jz tx00	;	Wait while TxBuffer empty.

	inc a0

	add r1,r3
	st [a0],r1

txexit:
	jmp loop
msg:
	.db 'Monitor-Q V1.0', $0a, 0
