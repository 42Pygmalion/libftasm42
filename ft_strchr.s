section .text
	global _ft_strchr
	extern _ft_strlen

_ft_strchr:	
	call _ft_strlen
	mov		rcx, rax
	cmp		rdi, 0
	je 		end
	cmp		rsi, 0
	je		end
	mov		rax, rsi
	repne 	scasb
	jnz		fail
	dec		rdi
	mov		rax, rdi
	ret
end:
	mov			rax, rdi
	ret
fail:
	mov		rax, 0
	ret
