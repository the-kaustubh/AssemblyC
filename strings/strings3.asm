section .text
 global _start

_start:
 mov esi, msg
 mov ecx, len
 mov ebx, space
 here:
 lodsb
 add eax, 65 
 mov [ebx], eax
 inc ebx
 dec ecx
 jnz here
 
 done:
  mov ecx, space 
  mov edx, 10
  mov ebx, 1
  mov eax, 4
  int 0x80

  mov eax, 1
  int 0x80


section .data
 msg db 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -55, 0
 len equ $-msg
 space times 50 db 0
