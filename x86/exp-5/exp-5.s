.text
.global main

# void printxmm(__m128 a)
# xmm0 __m128
printxmm:
      movaps      %xmm0, %xmm1
      movaps      %xmm0, %xmm2
      movaps      %xmm0, %xmm3

      unpckhps    %xmm0, %xmm2

      shufps      $0B11111111, %xmm0, %xmm3
      shufps      $0B01010101, %xmm0, %xmm1

      cvtss2sd    %xmm0, %xmm0
      cvtss2sd    %xmm1, %xmm1
      cvtss2sd    %xmm2, %xmm2
      cvtss2sd    %xmm3, %xmm3

      leaq        xmmfmt(%rip), %rdi
      movl        $4, %eax
      jmp         printf


main:
      pushq       %rbp
      movq        %rsp, %rbp

      movups      arr(%rip), %xmm0
      call        printxmm

      xorl        %eax, %eax
      addq        $8, %rsp

      movq        %rbp, %rsp
      popq        %rbp
      ret

.data
arr:
      .float 1.0
      .float 2.0
      .float 3.0
      .float 4.0

xmmfmt:
      .string "%.1f %.1f %.1f %.1f\n"
