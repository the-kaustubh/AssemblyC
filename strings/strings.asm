section .text 
 global _start

_start:
 mov ebx, [msg]
 mov [buff], ebx
 mov ebx, [msg+6]
 mov [buff+1], ebx 
 mov ebx, 10
 mov [buff+3], ebx
 mov ecx, buff
 mov edx, 2
 mov ebx, 1
 mov eax, 4
 int 0x80

 mov eax, 1
 int 0x80


section .data
 msg db "Hello World", 10, 0
 len equ $-msg
 buff times 10 db 0
