section .text
	global _ft_memset

_ft_memset:
	push	rdi
	cmp		rdx, 0
	je		end
	cmp		rdi, 0
	je		end
	mov		rcx, rdx
	mov		al, sil
	rep 	stosb
	end:
		pop			rdi
		mov			rax, rdi
		ret
