 .arm
.fpu vfpv2

.global LiftM_fixOffsetY
LiftM_fixOffsetY:
    ldrb    r1, [r6,#0x10]
    cmp     r1, #0
    ldreq   r1, =LiftM_smallOffsetY
    vldreq  s1, [r1]
    mov     r1, #0
    bx      lr

LiftM_smallOffsetY:
    .float  5.0
