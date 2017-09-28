INCLUDE Irvine32.inc

.data
array1 BYTE 10,20,30,40
array2 BYTE 4 DUP(0)

.code
main PROC
mov esi,offset array1
mov edi,offset array2
mov ecx,0
mov ebx,4
loop1:
dec ebx
mov al,array1[ebx]
mov [edi],al
inc edi
inc ecx
cmp ecx,4
JL loop1




exit
main ENDP
END main