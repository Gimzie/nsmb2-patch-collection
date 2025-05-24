.arm
.fpu vfpv2

.global EnterPipeWaterAnimFix_L
EnterPipeWaterAnimFix_L:
    ldr     r0, =0x0061A87C
    bx      lr

.global EnterPipeWaterAnimFix_R
EnterPipeWaterAnimFix_R:
    ldr     r0, =0x0061A858
    bx      lr
