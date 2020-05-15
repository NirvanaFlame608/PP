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