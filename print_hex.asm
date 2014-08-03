print_hex:
	pusha


	table db '0123456789ABCDEF'  
	mov bx, table

	mov ah, 0x0e
	mov cl, dh

	;expects dx to be loaded
	get_first:
		mov al, cl
		shr al, 4
		xlat
		int 0x10

	get_second:
		mov al,cl
		and al, 0x0f
		xlat
		int 0x10

	get_third:
		mov al,dl
		shr al, 4
		xlat
		int 0x10


	get_fourth:
		mov al, dl
		and al, 0x0f
		xlat
		int 0x10


	popa
	ret



