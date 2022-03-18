.global main

.text

main:
	mov r1, #0
	mov r0, #0

loop:
	cmp r1, #10
	bgt end
	add r1, r1, #1

	add r0, r0, #5

	b loop

end:
	bx lr

