IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; start your variables here
; --------------------------

    array db 5, 9, 3, 6, 250
    sum dw ?

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
	mov bx, offset array
    xor ch, ch
    mov cl, [bx]
    add [sum], cx
    mov cl, [bx+1]
    add [sum], cx
    mov cl, [bx+2]
    add [sum], cx
    mov cl, [bx+3]
    add [sum], cx
    mov cl, [bx+4]
    add [sum], cx


; --------------------------
; end your code here
; --------------------------
exit:
	mov ax, 4c00h
	int 21h
END start
