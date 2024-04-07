IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; start your variables here
; --------------------------

    array db 5, 9, 3, 6, 1
    sum db ?

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
    xor cl, cl
    add cl, [bx]
    add cl, [bx+1]
    add cl, [bx+2]
    add cl, [bx+3]
    add cl, [bx+4]
    mov [sum], cl


; --------------------------
; end your code here
; --------------------------
exit:
	mov ax, 4c00h
	int 21h
END start
