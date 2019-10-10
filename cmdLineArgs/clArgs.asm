section .text
 global _start

_start:
 pop ecx
 cmp ecx, 3
 jne argcErr

 mov edx, lenMsg1
 mov ecx, Msg1
 pop eax
 
 call print
 call exit

argcErr:
 mov edx, lenMsg2
 mov ecx, Msg2
 call print
 call exit

print:
 mov ebx, 1
 mov eax, 4
 int 0x80
 ret

exit:
 mov eax, 1
 int 0x80
 ret

section .data
Msg1 db 'Congrats!', 10, 0
lenMsg1 equ $-Msg1
Msg2 db 'Args error!', 10, 0
lenMsg2 equ $-Msg2
