IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; start your variables here
; --------------------------



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
	


; --------------------------
; end your code here
; --------------------------
exit:
	mov ax, 4c00h
	int 21h
END start


