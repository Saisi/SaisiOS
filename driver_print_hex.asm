[org 0x7c00]


;stack stuff
mov bp, 0x9900
mov sp, bp

;the hex to print
mov dx, 0x0f01
call print_hex


jmp $

%include 'print_hex.asm'
%include 'print.asm'




times 510-($-$$) db 0
dw 0xaa55




