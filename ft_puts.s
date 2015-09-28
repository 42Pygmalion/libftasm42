section	.data
	zero db "(null)",10

section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
	cmp		rdi, 0
	je		null
	call	_ft_strlen
	mov		rdx, rax
	mov		rsi, rdi
	mov		rdi, 1
	mov		rax, 0x2000004
	syscall
	jc		fd
	mov		rax, 0x2000004
	lea		rsi, [rel zero]
	add		rsi, 6
	mov		rdx, 1
	syscall
	jc		fd
	ret

	fd:
	mov rax, -1
	ret

	null:
	lea		rsi, [rel zero]
	mov		rdx, 7
	mov		rdi, 1
	mov		rax, 0x2000004
	syscall
	jc		fd
	ret
