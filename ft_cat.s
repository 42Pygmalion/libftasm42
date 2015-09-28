section .data
	tab	db 1

section .text
	global _ft_cat

_ft_cat:
	read:
		push	rdi
		mov		rax, 0x2000003
		lea		rsi, [rel tab]
		mov		rdx, 1
		syscall
		jc		empty
		cmp		rax, 0
		je		end
		mov		rax, 0x2000004
		mov		rdi, 1
		mov		rdx, 1
		syscall
		jc		empty
		pop		rdi
		jmp		read

end:
	pop 	rdi
	ret

empty:
	pop		rdi
	mov		rax, -1
	ret
