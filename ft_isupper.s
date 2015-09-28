section .text
global _ft_isupper

_ft_isupper:

cmp		rdi, 65
jl		false
cmp		rdi, 91
jl		true
jmp false

false:
mov		rax, 0
ret

true:
mov		rax, 1
ret
