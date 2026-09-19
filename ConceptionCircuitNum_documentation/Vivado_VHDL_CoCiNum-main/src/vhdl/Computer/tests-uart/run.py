import cocotb
from cocotb.triggers import Timer, RisingEdge
import tkinter as tk
from datetime import timedelta
from queue import SimpleQueue
from cocotb_gui import *

led_count  = 16
led_radius = 10
led_spacing = 5

sw_count         = led_count
sw_width         = 2 * led_radius
sw_height        = 30
sw_cursor_height = 16
sw_spacing       = led_spacing

class ComputerGui(TbGui):
    def setup(self):
        self.add_button("btn_center_i", "Reset", side=tk.TOP)
        self.add_text_field("Input")
        self.add_text_field("Output", editable=False)
        self.add_clock(Timer(50, "us"), timedelta(microseconds=10), 10)
        self.rx_queue = SimpleQueue()

    def on_key_press(self, evt):
        if evt.char and ord(evt.char) < 256:
            self.rx_queue.put(ord(evt.char))

    @cocotb.coroutine
    def rx(self):
        while True:
            yield RisingEdge(self.dut.clk_i)
            if not self.rx_queue.empty():
                self.dut.rx_data_i <= self.rx_queue.get()
                self.dut.rx_write_i <= 1
                yield RisingEdge(self.dut.clk_i)
                self.dut.rx_write_i <= 0
                yield RisingEdge(self.dut.rx_evt_o)

    @cocotb.coroutine
    def tx(self):
        while True:
            yield RisingEdge(self.dut.tx_evt_o)
            txt = self.txts["Output"]
            txt.config(state=tk.NORMAL)
            txt.insert(tk.END, chr(self.dut.tx_data_o.value.integer))
            txt.config(state=tk.DISABLED)

@cocotb.test()
def run(dut):
    gui = ComputerGui(dut)
    cocotb.fork(gui.tx())
    cocotb.fork(gui.rx())

    while not gui.closed:
        yield Timer(10, "ms")
        gui.update()
