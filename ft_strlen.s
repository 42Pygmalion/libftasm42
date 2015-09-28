section .text
	global _ft_strlen

_ft_strlen:
	cmp		rdi, 0
	je		fail
	push	rdi
	mov 	al, 0
	mov		rcx, -1
	repnz	scasb
	neg		rcx
	sub		rcx, 2
	mov		rax, rcx
	pop 	rdi
	ret

	fail:
	mov		rax, 0
	ret
