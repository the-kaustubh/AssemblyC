section .text
 global _start

_start:
 mov edx, len
 mov ecx, msg
 call printIt
 call printIt

 call exit

printIt:
 mov ebx, 1
 mov eax, 4
 int 0x80
 ret

exit:
 mov eax, 1
 int 0x80

section .data
msg db '3', 10, 0
len equ $-msg
