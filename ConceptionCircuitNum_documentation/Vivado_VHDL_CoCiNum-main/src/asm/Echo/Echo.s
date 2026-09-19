
    .set INTC_ADDRESS,        0x81000000
    .set UART_ADDRESS,        0x82000000
    .set INTC_EVENTS_UART_RX, 0x00000001
    .set INTC_EVENTS_UART_TX, 0x00000002

    .global main
main:
    li x5, INTC_ADDRESS
    li x6, UART_ADDRESS

main_rx_loop:
    lw x7, 4(x5)
    andi x7, x7, INTC_EVENTS_UART_RX
    beqz x7, main_rx_loop
    sw x7, 4(x5)

    lbu x8, (x6)
    sb x8, (x6)

main_tx_loop:
    lw x7, 4(x5)
    andi x7, x7, INTC_EVENTS_UART_TX
    beqz x7, main_tx_loop
    sw x7, 4(x5)

    j main_rx_loop
