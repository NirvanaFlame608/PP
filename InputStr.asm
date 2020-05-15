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