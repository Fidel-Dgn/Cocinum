
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer

@cocotb.test()
def run(dut):
    clk = Clock(dut.clk_i, 1, "ms")
    cocotb.fork(clk.start())

    dut.reset_i  = 1
    dut.btn_i    = 0

    yield Timer(100, "us")

    dut.reset_i = 0

    yield Timer(5100, "us")

    dut.btn_i = 1

    yield Timer(7000, "us")

    dut.btn_i = 0

    yield Timer(3000, "us")
