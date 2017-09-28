INCLUDE IRVINE32.inc
INDEX = 0
.data
n dword 
cw dword 
a dword 1,2,3,4,5,6,7,8,9,10
b dword 10 dup()
sizse dword 10
.code
main PROC
mov esi,offset b
mov ecx,0
l1
sub sizse,4
mov edx,sizse
mov ebx,a[edx]
mov [esi],ebx
add esi,4
inc ecx
cmp ecx,10
jl l1

mov ecx,0
mov esi,offset a
mov eax,0
mov sizse,eax
l2mov edx,sizse
mov ebx,b[edx]
add sizse,4
mov [esi],ebx
add esi,4
inc ecx
cmp ecx,10
jl l2

mov esi,offset b
mov ecx,0
loop2mov eax,[esi]
add esi,4
inc ecx
cmp ecx,10
jl loop2
exit
main ENDP
END main