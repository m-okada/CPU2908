; Echo back.
	mov a0,0f01
loop:
		ld r0,[a0]
		mov r1,r0
		or r0,r0
		jz loop
			dec a0
wait:
		ld r0, [a0]
		and r0, $08
		jz wait
		inc a0
		st[a0],r1
		jmps loop
