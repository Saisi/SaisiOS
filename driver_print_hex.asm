[org 0x7c00]


mov dx, [TO_PRINT]
call print_hex

	

jmp $


%include 'print_hex.asm'

TO_PRINT:
	dd 0x1fb6



times 510-($-$$) db 0
dw 0xaa55