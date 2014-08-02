[org 0x7c00]

mov bx, HELLO_MSG
call print_string

jmp $


%include 'print2.asm'

HELLO_MSG:
	db 'jallo',0

times 510-($-$$) db 0
dw 0xaa55