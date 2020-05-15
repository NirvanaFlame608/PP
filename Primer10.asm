masm
model small
.386
.stack 400h
include Macros10.asm
ds10
.code
start:
mov ax,@data
mov ds,ax
mov ah,09h
mov dx,offset message
int 21h
xor ax,ax
xor bx,bx
xor cx,cx
xor dx,dx
xor si,si

InputStr

xor ax,ax
xor bx,bx
xor cx,cx
xor dx,dx
xor si,si

Fun10

OutRes

EndProg