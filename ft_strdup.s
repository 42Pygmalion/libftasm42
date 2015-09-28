section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_memcpy
	extern _malloc

_ft_strdup:
	cmp		rdi, 0
	je		unavailable
	call	_ft_strlen
	inc		rax
	mov		rbx, rdi
	mov		rdi, rax
	push	rax
	call	_malloc
	cmp		rax, 0
	je		unavailable
	pop		rdx
	mov		rdi, rax
	mov		rsi, rbx
	call	_ft_memcpy
	ret

	unavailable:
	mov	rax, 0
	ret
