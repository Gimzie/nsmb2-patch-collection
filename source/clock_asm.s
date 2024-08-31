.text
.align 4

.global NonCoinrushClock
NonCoinrushClock:
    ldrb    r1, [r4,#0x17D]         @ Check Spritedata
    and     r1, r1, #1
    cmp     r1, #1
    beq     0x0020C658              @ Nybble 8 set -> Clock Visible
    cmp     r0, #0                  @ Check if in Coinrush
    b       0x0020C650              @ Continue normally
