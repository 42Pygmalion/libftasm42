section .text
	global _ft_isalnum

_ft_isalnum:
	cmp		rdi, 48
	jl		false
	cmp		rdi, 58
	jl		true
	cmp		rdi, 65
	jl		false
	cmp		rdi, 91
	jl		true
	cmp		rdi, 97
	jl		false
	cmp		rdi, 123
	jl		true
	jmp false

	false:
		mov		rax, 0
		ret

	true:
		mov		rax, 1
		ret
