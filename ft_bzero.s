section .text
	global _ft_bzero

_ft_bzero:
	push	rdi
	cmp		rsi, 0
	je		end
	mov		rcx, rsi

	while:
		mov	byte	[rdi], 0
		inc			rdi
		loop		while

	end:
		pop			rdi
		mov			rax, rdi
		ret