output:
mov ah,09h
mov dx,offset result
int 21h
;;;;;;;;;;;
xor ax,ax
xor bx,bx
xor cx,cx
xor dx,dx
xor si,si

mov ax,words_amount
push -1

mov bx, 10

cont:
mov dx, 0
div bx
push dx
cmp ax, 0
jne cont

NumOut:
pop dx
cmp dx, -1
je exit
add dl, 30h
mov ah, 02h
int 21h
jmp NumOut