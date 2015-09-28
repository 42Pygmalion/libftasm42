section .text
	global _ft_strcmp
	extern _ft_strlen

_ft_strcmp:
	call _ft_strlen
	mov	r8, rax
	mov	r12, rsi
	mov rsi, rdi
	call _ft_strlen
	mov	r11, rax
	cmp r8, r11
	jg first
	mov	rsi, r12
	mov rcx, r11
	inc rcx

operation:
		repe cmpsb
		js	hypocrite
		jz	equal
		mov	rax, -1
		ret

	hypocrite:
		mov rax, 1
		ret

	equal:
		mov rax, 0
		ret

	first:
		mov	rsi, r12
		mov rcx, r8
		inc rcx
		jmp	operation