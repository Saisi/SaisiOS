print_hex:
	pusha
	
	mov bx, table
	mov ah, 0x0e


	get_first:
		mov al, dh
		shr al, 4
		xlat
		int 0x10

	get_second:
		mov al,dh
		and al, 0x0f
		xlat
		int 0x10

	xchg dh, dl

	get_third:
		mov al,dh
		shr al, 4
		xlat
		int 0x10


	get_fourth:
		mov al, dh
		and al, 0x0f
		xlat
		int 0x10

	popa
	ret


table db '0123456789ABCDEF'









