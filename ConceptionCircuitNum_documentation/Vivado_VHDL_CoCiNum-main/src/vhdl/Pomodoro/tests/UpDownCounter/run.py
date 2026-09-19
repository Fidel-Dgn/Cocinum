
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer

@cocotb.test()
def run(dut):
    clk = Clock(dut.clk_i, 1, "ms")
    cocotb.fork(clk.start())

    dut.reset_i = 1
    dut.up_i    = 1
    dut.down_i  = 0

    yield Timer(100, "us")

    dut.reset_i  = 0

    yield Timer(15, "ms")

    dut.up_i = 0

    yield Timer(5, "ms")

    dut.down_i = 1

    yield Timer(20, "ms")
