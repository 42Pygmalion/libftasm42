section .text
	global _ft_tolower

_ft_tolower:
	cmp		rdi, 65
	jl		false
	cmp		rdi, 91
	jl		true

	false:
		mov		rax, rdi
		ret

	true:
		mov		rax, rdi
		add		rax, 32
		ret
