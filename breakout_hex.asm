[org 0x7c00]

mov ah, 0x0e

mov bx, 0x1fb6

mov cx, bx
and cx, 0x0f
mov al, cl
add al,0x30

int 0x10

sub bl, al
shr bl, 4
add al,0x30
mov al, bl

int 0x10


mov cx, bx
shr cx, 8
mov al, cl
and al, 0x0f
add al,0x30

int 0x10

sub cl, al
mov al, cl
shr al, 4
add al,0x30

int 0x10







jmp $



times 510-($-$$) db 0
dw 0xaa55