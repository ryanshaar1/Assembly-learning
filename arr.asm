IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; start your variables here
; --------------------------

    array1 db 0AAh, 0BBh, 0CCh, 0DDh, 0EEh
    array2 dw 011h, 022h, 033h, 044h, 055h

; --------------------------
; end your variables here
; --------------------------
CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------
; start your code here
; --------------------------
	
    mov al, [array1]
    mov ah, [array1 + 1]
    mov bl, [array1 + 2]
    mov [array1 + 2], ah
    mov dx, [array2 + 3]

; --------------------------
; end your code here
; --------------------------
exit:
	mov ax, 4c00h
	int 21h
END start

