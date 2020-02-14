.org $100
back eq -5	; comment
loop:
	jz wait
	jl sub
	st a0-6,r0
	st a1,w1
	ld w1,[a1]
	ld r2,[sp-4]
	nop
	jc -1
	jnc back
	jg loop
wait:
	jz wait
	jno loop
	nop
sub:
	ret

