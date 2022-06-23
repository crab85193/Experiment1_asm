main:
        push    {r4, r5, r6, r7, r8, r9, r11, lr}
        mov     r8, #1696
        mov     r9, #1
        mov     r5, #3
        mov     r7, #0
        orr     r8, r8, #98304
        b       .LBB0_3
.LBB0_1:                                @   in Loop: Header=BB0_3 Depth=1
        cmp     r6, r5
        mov     r0, #0
        movlo   r0, #1
.LBB0_2:                                @   in Loop: Header=BB0_3 Depth=1
        eor     r0, r0, #1
        add     r5, r5, #1
        add     r7, r7, #1
        add     r9, r9, r0
        cmp     r5, r8
        beq     .LBB0_7
.LBB0_3:                                @ =>This Loop Header: Depth=1
        tst     r5, #1
        mov     r0, #1
        beq     .LBB0_2
        mov     r4, #0
.LBB0_5:                                @   Parent Loop BB0_3 Depth=1
        add     r6, r4, #3
        cmp     r7, r4
        beq     .LBB0_1
        mov     r0, r5
        mov     r1, r6
        bl      __aeabi_uidivmod
        add     r4, r4, #1
        cmp     r1, #0
        bne     .LBB0_5
        b       .LBB0_1
.LBB0_7:
        ldr     r0, .LCPI0_0
        mov     r1, r9
.LPC0_0:
        add     r0, pc, r0
        bl      printf
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, r9, r11, lr}
        bx      lr
.LCPI0_0:
        .long   .L.str-(.LPC0_0+8)
.L.str:
        .asciz  "The number of primes=%d\n"
