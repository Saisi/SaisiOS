[org 0x7c00]

mov [BOOT_DRIVE], dl

;stack
mov bp, 0x9800
mov sp, bp

mov bx, 0x9900
mov es, bx
mov bx, 0xa000 

mov dh, 2; number of sectors
mov dl, [BOOT_DRIVE]

call disk_load







jmp $


%include "print.asm"
%include "print_hex.asm"
%include "disk_load.asm"


BOOT_DRIVE db 0x00
times 510-($-$$) db 0
dw 0xaa55

times 256 dw 0xdada
times 256 dw 0xface