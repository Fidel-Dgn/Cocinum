
    .global main
main:
    li x5, 0x80000000
    li x7, 0
main_loop:
    lhu x6, (x5)
/*
    beq x6, x7, main_loop
    xor x6, x6, x7
    xor x7, x6, x7
*/
    sh  x6, (x5)
    j main_loop
