import cocotb
from cocotb.triggers import Timer
import tkinter as tk
from datetime import timedelta
from cocotb_gui import *

class BlinkerGui(TbGui):
    def setup(self):
        self.add_canvas(100, 100, tk.BOTTOM)
        self.add_leds(1, 40, 0, 0, 10)
        self.add_clock(Timer(500, "us"), timedelta(milliseconds=10), 10)

@cocotb.test()
def run(dut):
    gui = BlinkerGui(dut)

    while not gui.closed:
        yield Timer(10, "ms")
        gui.update()
