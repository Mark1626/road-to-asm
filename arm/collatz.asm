.global main

.text
main:
	mov r1, #123
	mov r2, #0

loop:
	cmp r1, #1
	beq end

	add r2, r2, #1

	and r3, r1, #1
	cmp r3, #0

	bne odd

even:
	mov r1, r1, ASR # 1
	b loop

odd:
	add r1, r1, r1, LSL # 1
	add r1, r1, #1

	b loop

end:
	mov r0, r2
	bx lr
