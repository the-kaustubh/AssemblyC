section .text
 global _start

_start:
 mov eax, 4
 mov ebx, 1
 mov ecx, prompt
 mov edx, lenp
 int 0x80

 mov eax, 3
 mov ebx, 2
 mov ecx, num
 mov edx, 5
 int 0x80

 mov eax, 4
 mov ebx, 1
 mov ecx, alert
 mov edx, lena
 int 0x80
 
 mov eax, 4
 mov ebx, 1
 mov ecx, num
 mov edx, 5
 int 0x80

 mov eax, 1
 mov ebx, 0
 int 0x80

section .bss
 num resb 5

section .data
prompt db 'Enter something:', 0
lenp equ $-prompt
alert db 'You have entered:', 0
lena equ $-alert

