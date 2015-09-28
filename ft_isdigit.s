section .text
	global _ft_isdigit

_ft_isdigit:
	cmp		rdi, 48
	jl		false
	cmp		rdi, 58
	jl		true
	jmp		false

	false:
		mov		rax, 0
		ret

	true:
		mov		rax, 1
		ret
