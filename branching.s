.global _start
.section .text


_start:
	ldr r1, =#10
	ldr r2, =#10
	cmp r1, r2    @ Compare r1 and r2
	beq equal     @ Branch to 'equal' if r1 == r2
	bne not_equal @ Branch to 'not_equal' if r1 != r2

equal:
    mov r0, #1 @ Set r0 to 1
    b end

not_equal:
    mov r0, #0 @ Set r0 to 0

end:
    b end      @ Infinite loop to prevent the program from exiting
