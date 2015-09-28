section .text
	global _ft_isascii

_ft_isascii:
	cmp		rdi, 0
	jl		false
	cmp		rdi, 128
	jl		true
	jmp 	false

	false:
		mov		rax, 0
		ret

	true:
		mov		rax, 1
		ret
