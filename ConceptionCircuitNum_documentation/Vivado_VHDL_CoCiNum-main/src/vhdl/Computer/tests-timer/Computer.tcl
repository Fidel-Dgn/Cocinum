
gtkwave::addSignalsFromList [list \
    clk_i \
    btn_center_i sync_reset \
    leds_o \
    core_valid core_ready core_address core_write core_wdata core_rdata core_irq \
    mem_valid mem_ready mem_rdata \
    intc_valid intc_ready intc_rdata intc_events \
    timer_valid timer_ready timer_rdata timer_evt \
    io_valid
]

gtkwave::/Time/Zoom/Zoom_Full
