disk_load:

	push dx

	mov ah, 0x02;read sector function

	mov al, 0x02 ;number of sectors
	mov ch, 0x00 ;cylinder 0
	mov dh, 0x00 ;track 0
	mov cl, 0x02 ;sector 2 (base of 2)

	int 0x13

	jc disk_error
	pop dx
	cmp dh, al ;actual vs expected sectors
	jne disk_error2


	mov bx, FINISHED_READ
	call print_string

	ret


disk_error:
	mov bx, TO_PRINT
	call print_string
	jmp $

disk_error2:
	mov bx, TO_PRINT2
	call print_string
	jmp $


TO_PRINT db "Disk Read Error",0
TO_PRINT2 db "Disk Read Error2",0
FINISHED_READ db "Finished Reading Hard Drive",0
