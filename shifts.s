.global _start
.section .text

_start:
    LDR R0, =toshift
    LDR R1, [R0]
    LSL R2, R1, #4
    LSR R3, R1, #4
    ASR R4, R1, #4
    ROR R5, R1, #4
    RRX R6, R1

loop:
    B loop

.section .data
toshift:
    .word 0xf0f0f0f0
