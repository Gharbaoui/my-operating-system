org 0X7C00
bits 16

%define ENDL 0x0D, 0x0A

_start:
	jmp main


print_string:
	push ax
	push si

	mov bh, 0x00
	mov ah, 0x0e
.loop:
	lodsb
	or al, al
	jz .done
	int 0x10
	jmp .loop
.done:
	pop si
	pop ax
	ret

main:
	mov ax, 0x0
	mov ds, ax
	mov es, ax


	mov ss, ax
	mov sp, 0X7C00
	
	mov si, msg
	call print_string
	hlt

msg: db "intro to operating systems", ENDL, 0

times 510-($-$$) db 0
dw 0AA55h
