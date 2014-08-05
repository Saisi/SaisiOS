[org 0x7c00]

mov [BOOT_DRIVE], dl

;stack
mov bp, 0x9800
mov sp, bp

;mov bx, 0x9000
; mov es, bx
mov bx, 0xb000 

mov dh, 2; number of sectors
mov dl, [BOOT_DRIVE]

call disk_load


mov dx, [0xb000]
call print_hex



jmp $


%include "print.asm"
%include "print_hex.asm"
%include "disk_load.asm"


BOOT_DRIVE db 0x00
TITLE db "What the fuck man",0
times 510-($-$$) db 0
dw 0xaa55

times 256 dw 0xdada
times 256 dw 0xface