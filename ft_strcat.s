section .text
	global _ft_strcat

_ft_strcat:
	push	rdi

	length:
		cmp byte	[rdi], 0
		je			looping
		inc			rdi
		jmp			length

	looping:
		cmp	byte	[rsi], 0
		je			end
		mov byte	cl, [rsi]
		mov	byte	[rdi], cl
		inc			rdi
		inc			rsi
		jmp			looping

	end:
		mov byte	[rdi], 0
		pop			rdi
		mov			rax, rdi
		ret