org 0X7C00
bits 16

_start:
	jmp main

main:
	mov ax, 0x0
	mov ds, ax
	mov es, ax



times 510-($-$$) db 0
dw 0AA55h
