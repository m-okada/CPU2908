	jmp add
	jc add
	add a,1 add 1 to a given a
	sub r0,r2
	not r0
	dec w0
add:
	xor r0,r3
	jz add
	ret
