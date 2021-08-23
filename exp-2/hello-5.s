.global _main

.text
_main:
  pushq %rbx
  movl $4, %ebx

.print:
  xorl %eax, %eax
  leaq message(%rip), %rdi
  callq _printf
  sub $1, %ebx
  jne .print

  popq %rbx
  ret

.data
message:
  .string "Hello World\n"