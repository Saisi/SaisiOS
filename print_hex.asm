print_hex:
	pusha


	table db '0123456789ABCDEF'  
	mov bx, table

	mov ah, 0x0e
	mov dx, 0x1fb6
	mov cl, dh

	get_first:
		mov al, cl
		shr al, 4
		call get_b

	get_second:
		mov al,cl
		and al, 0x0f
		call get_b

	get_third:
		mov al,dl
		shr al, 4
		call get_b


	get_fourth:
		mov al, dl
		and al, 0x0f
		call get_b


	popa
	ret




get_b:
	xlat
	int 0x10
	ret










