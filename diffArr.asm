IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; start your variables here
; --------------------------

array1 dw 20, 40, 60, 80, 100
array2 dw 10, 30, 50, 70, 90
diff dw 5 dup(0)

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
	mov bx, offset diff
    mov cx, 0
    add cx, [array1]
    sub cx, [array2]
    mov [bx], cx
    xor cx, cx
    add cx, [array1+1]
    sub cx, [array2+1]
    mov [bx+1], cx
    xor cx, cx
    add cx, [array1+2]
    sub cx, [array2+2]
    mov [bx+2], cx
    xor cx, cx
    add cx, [array1+3]
    sub cx, [array2+3]
    mov [bx+3], cx
    xor cx, cx
    add cx, [array1+4]
    sub cx, [array2+4]
    mov [bx+4], cx

; --------------------------
; end your code here
; --------------------------
exit:
	mov ax, 4c00h
	int 21h
END start