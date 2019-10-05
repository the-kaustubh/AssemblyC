section .text
 global _start

_start:
 mov edx, len
 mov ecx, msg 
 mov ebx, 1     ; file descriptor
 mov eax, 4     ; syscall number
 int 0x80

 call exit

exit:
 mov eax, 1
 int 0x80

section .data
msg db 'Hello world', 0xa, 0
len equ $-msg

