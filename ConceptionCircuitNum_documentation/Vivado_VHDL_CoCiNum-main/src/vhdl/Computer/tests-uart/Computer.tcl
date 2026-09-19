
gtkwave::addSignalsFromList [list \
    clk_i \
    btn_center_i sync_reset \
    uart_rx_i sync_uart_rx \
    uart_tx_o \
    core_valid core_ready core_address core_write core_wdata core_rdata \
    mem_valid mem_ready mem_rdata \
    intc_valid intc_ready intc_rdata intc_events \
    uart_valid uart_ready uart_rdata uart_tx_evt uart_rx_evt \
]

gtkwave::/Time/Zoom/Zoom_Full

