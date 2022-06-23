main:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #32
        mov     r2, #0
        str     r2, [r11, #-4]
        str     r0, [r11, #-8]
        str     r1, [r11, #-12]
        mov     r0, #1
        str     r0, [sp, #16]
        mov     r0, #3
        str     r0, [sp, #12]
        b       .LBB0_1
.LBB0_1:                                @ =>This Loop Header: Depth=1
        ldr     r0, [sp, #12]
        ldr     r1, .LCPI0_0
        cmp     r0, r1
        bgt     .LBB0_12
        b       .LBB0_2
.LBB0_2:                                @   in Loop: Header=BB0_1 Depth=1
        mov     r0, #0
        str     r0, [sp, #8]
        mov     r0, #2
        str     r0, [sp, #4]
        b       .LBB0_3
.LBB0_3:                                @   Parent Loop BB0_1 Depth=1
        ldr     r0, [sp, #4]
        ldr     r1, [sp, #12]
        cmp     r0, r1
        bge     .LBB0_8
        b       .LBB0_4
.LBB0_4:                                @   in Loop: Header=BB0_3 Depth=2
        ldr     r0, [sp, #12]
        ldr     r1, [sp, #4]
        bl      __aeabi_idivmod
        cmp     r1, #0
        bne     .LBB0_6
        b       .LBB0_5
.LBB0_5:                                @   in Loop: Header=BB0_1 Depth=1
        mov     r0, #1
        str     r0, [sp, #8]
        b       .LBB0_8
.LBB0_6:                                @   in Loop: Header=BB0_3 Depth=2
        b       .LBB0_7
.LBB0_7:                                @   in Loop: Header=BB0_3 Depth=2
        ldr     r0, [sp, #4]
        add     r0, r0, #1
        str     r0, [sp, #4]
        b       .LBB0_3
.LBB0_8:                                @   in Loop: Header=BB0_1 Depth=1
        ldr     r0, [sp, #8]
        cmp     r0, #0
        bne     .LBB0_10
        b       .LBB0_9
.LBB0_9:                                @   in Loop: Header=BB0_1 Depth=1
        ldr     r0, [sp, #16]
        add     r0, r0, #1
        str     r0, [sp, #16]
        b       .LBB0_10
.LBB0_10:                               @   in Loop: Header=BB0_1 Depth=1
        b       .LBB0_11
.LBB0_11:                               @   in Loop: Header=BB0_1 Depth=1
        ldr     r0, [sp, #12]
        add     r0, r0, #1
        str     r0, [sp, #12]
        b       .LBB0_1
.LBB0_12:
        ldr     r1, [sp, #16]
        ldr     r0, .LCPI0_1
.LPC0_0:
        add     r0, pc, r0
        bl      printf
        mov     r0, #0
        mov     sp, r11
        pop     {r11, lr}
        bx      lr
.LCPI0_0:
        .long   99999                           @ 0x1869f
.LCPI0_1:
        .long   .L.str-(.LPC0_0+8)
.L.str:
        .asciz  "The number of primes=%d\n"
