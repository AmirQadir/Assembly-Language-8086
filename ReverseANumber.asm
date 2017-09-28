INCLUDE Irvine32.inc
TEN = 10
.data
N DWORD 12345
reverse DWORD 0
copy DWORD ?
copy2 DWORD ?
.code
main PROC
MOV EAX,reverse
MOV EBX,10
MOV ECX,5
l1:MUL EBX
MOV copy,EAX
MOV EBX,10
MOV EDX,0
MOV EAX,N
DIV EBX
MOV N,EAX
MOV EAX,copy
ADD EAX,EDX
loop l1
MOV reverse,EAX
exit
main ENDP
END main