.arm

.global DrawLayer0
DrawLayer0:
    ldr     r0, [r7]        @ tileset related class
    mov     r1, r5          @ area id
    mov     r2, #2          @ layer id
    bl      0x004016A4      @ check if layer exists
    cmp     r0, #0
    beq     DrawLayer0_return

    mov     r0, r4          @ this
    mov     r1, r6          @ drawMgr->_10
    mov     r2, #2          @ layer id
    bl      0x001C9368

DrawLayer0_return:
    ldr     r0, [r7]        @ restored original instruction
    mov     r2, #1          @ restore r1
    b       0x001CA6D4
