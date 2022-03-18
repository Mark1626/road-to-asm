.global _main

.text
_main:
  pushq %rbp
  movq %rsp, %rbp

  movb $0, %al
  leaq message(%rip), %rdi
  call _printf

  movq %rbp, %rsp
  popq %rbp
  retq

.data
message:
  .string "Hello World\n"
