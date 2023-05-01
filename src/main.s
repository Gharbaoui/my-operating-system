org 0X7C00
bits 16

_start:
	jmp main

main:
	hlt

times 510-($-$$) db 0
dw 0AA55h
