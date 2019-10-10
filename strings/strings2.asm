section .text
 global _start

_start:
 mov eax, len
 mov ebx, msg
 add ebx, len
 dec ebx
 mov ecx, buff
 
loop:
 mov edx, [ebx]
 mov [ecx], edx
 inc ecx
 dec ebx
 dec eax
 jnz loop

done:
 mov ecx, buff
 mov edx, len
 mov eax, 4
 mov ebx, 1
 int 0x80

 mov eax, 1
 int 0x80

section .data
 msg db 'Kaustubh', 10
 len equ $-msg
 buff times 100 db 65

