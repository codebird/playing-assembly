.global _start
.section .text

_start:
	ldr R0, =values
	ldr R1, =values2
	ldm R0, {R2-R9}
	ldm R1, {R10-R12}
	stm R0, {R10-R12}

.section .data
values:
	.word 1,2,3,4,5,6,7,8
values2: 
	.word 9,10,11
