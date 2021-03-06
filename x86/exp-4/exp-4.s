.data
format: .asciz "Float %.1f\n"

n: .double 3.1415

.text
.global main
main:
  # Preserve base pointer and stack pointer
  pushq %rbp
  movq %rsp, %rbp

  movsd n(%rip), %xmm0
  leaq format(%rip), %rdi
  movl $1, %eax
  call printf

  # Set return 0
  xor %eax, %eax

  movq %rbp, %rsp
  popq %rbp
  retq

