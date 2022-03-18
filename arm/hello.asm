.global main

.data

hello:
	.asciz "Hello World"

.balign 4
return: .word 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.text

.global main
main:
	push {r0, lr}

	ldr r0, hello_adr
	bl puts

	pop {r0, pc}
	bx lr

hello_adr: .word hello 
return_adr: .word return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.global puts
