ds10 macro 
.data
len dw 0
mas db 255 dup (?)
message db 'Vvedite stroku: $'
result db 10,13,'Result: $'
words_amount dw 0
endm

InputStr macro
;input string
FirstInput: 
mov ah,01h 
int 21h 
cmp al,0dh 
je EndFirst 
next:
mov mas[si],al
inc len
inc si
jmp FirstInput
EndFirst:
endm

Fun10 macro
mov cx,len
poisk_kolichestva_slov:
cmp mas[si],' '
jne promotka_slova 
inc si
sub cx,1
cmp cx,0
je exit_file
jmp poisk_kolichestva_slov 
promotka_slova:
inc words_amount
motaem:
inc si
sub cx,1
cmp cx,0
je exit_file
cmp mas[si],' '
jne motaem
jmp poisk_kolichestva_slov
exit_file:
endm

OutRes macro
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
endm

EndProg macro
exit:          
mov ax,4c00h
int 21h
end start
endm