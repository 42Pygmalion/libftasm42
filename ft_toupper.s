section .text
	global _ft_toupper

_ft_toupper:
	cmp		rdi, 97
	jl		false
	cmp		rdi, 123
	jl		true

	false:
		mov		rax, rdi
		ret

	true:
		sub		rdi, 32
		mov		rax, rdi
		ret
