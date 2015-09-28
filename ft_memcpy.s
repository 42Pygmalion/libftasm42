section .text
	global _ft_memcpy

_ft_memcpy:
	push	rdi
	cmp		rdx, 0
	je		end
	cmp		rdi, 0
	je		end
	mov		rcx, rdx
	rep 	movsb
	end:
		pop			rdi
		mov			rax, rdi
		ret
