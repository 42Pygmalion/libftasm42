section .text
global _ft_islower

_ft_islower:
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
