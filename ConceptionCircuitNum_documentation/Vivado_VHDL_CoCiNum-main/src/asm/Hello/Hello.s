
    .set INTC_ADDRESS,        0x81000000
    .set UART_ADDRESS,        0x82000000
    .set INTC_EVENTS_UART_RX, 0x00000001
    .set INTC_EVENTS_UART_TX, 0x00000002

    .global main
main:
    li x5, INTC_ADDRESS
    li x6, UART_ADDRESS
    la x7, str

main_loop:
    lbu x8, (x7)
    beqz x8, main_end

    sb x8, (x6)

main_tx_loop:
    lw x8, 4(x5)
    andi x8, x8, INTC_EVENTS_UART_TX
    beqz x8, main_tx_loop
    sw x8, 4(x5)

    addi x7, x7, 1
    j main_loop

main_end:
    ret

str:
    .asciz "Virgule says << Hello! >>"
