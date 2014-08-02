print_string:
	pusha
	mov ah, 0x0e


	loop1:
		mov al, [bx]
		cmp al, 0
		je return
		int 0x10
		inc bx
		jmp loop1

	return:
		popa
		ret