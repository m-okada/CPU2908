.org $100
back eq -5
loop:
	jz wait
	nop
	jc -5
	jnc back
	jg loop
wait:
	jz wait
	jno loop
	nop
