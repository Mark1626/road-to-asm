.global _main

.data
hello:
  .asciz "Hello World\n"

.text
_main:
  # Preserve base pointer and stack pointer
  pushq %rbp
  movq %rsp, %rbp

  leaq hello(%rip), %rdi
  xor %eax, %eax
  call _printf

  # Set return 0
  xor %eax, %eax

  movq %rbp, %rsp
  popq %rbp
  retq
