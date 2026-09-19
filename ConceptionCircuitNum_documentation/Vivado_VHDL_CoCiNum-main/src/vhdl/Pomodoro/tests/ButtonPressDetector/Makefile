
SRCDIR = $(PWD)/../..
VHDL_SOURCES = $(SRCDIR)/ButtonPressDetector.vhd
TOPLEVEL = buttonpressdetector
MODULE = run
SIM = ghdl
SIM_ARGS = --wave=ButtonPressDetector.ghw
export COCOTB_REDUCED_LOG_FMT = 1

include $(shell cocotb-config --makefiles)/Makefile.inc
include $(shell cocotb-config --makefiles)/Makefile.sim
