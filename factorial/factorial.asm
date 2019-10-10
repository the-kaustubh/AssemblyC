section .text
 global factorial

factorial:
 mov rax, 1
 mov rbx, rdi
 here:
 cmp rbx, 1
 jle retF

 imul rax, rbx
 dec rbx
 jmp here
 retF:
  ret
 

section .data

