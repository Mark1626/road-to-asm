global _main

section .text
extern _printf

_main:
  push rbp
  mov rbp, rsp

  mov al, 0
  lea rdi,[rel msg]
  call _printf

  mov rsp, rbp
  pop rbp
  ret

section .data
msg:  db "Hello World", 11
