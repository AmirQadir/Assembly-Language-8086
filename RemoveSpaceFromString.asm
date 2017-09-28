INCLUDE IRVINE32.inc
INDEX = 0
.data
text byte "MY is",0
blank byte sizeof text dup(?)
.code
main PROC
mov cl,0
mov esi,offset text
mov ebx,offset blank
l1:mov al,[esi]
cmp al,' '
je check
mov ax,[esi]
mov [ebx],ax
inc esi
inc ebx
inc cl
cmp cl,sizeof text
jle l1
jmp here
check:inc cl
inc esi
mov al,[esi]
cmp al,' '
je check
jmp l1

here:
mov esi,offset blank
mov ecx,0
loop2:mov al,[esi]
inc esi
inc ecx
cmp ecx,sizeof blank
jle loop2


exit
main ENDP
END main