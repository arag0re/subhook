.global foo

.section .data
message:
    .ascii "foo() called\0"

.section .text
foo:
    nop
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x0, message
    add x0, x0, :lo12:message
    bl puts
    ldp x29, x30, [sp], #16
    ret

