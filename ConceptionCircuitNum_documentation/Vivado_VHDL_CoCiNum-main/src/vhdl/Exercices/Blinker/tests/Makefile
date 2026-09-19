SRCDIR = $(PWD)/..
VHDL_SOURCES = $(SRCDIR)/Blinker.vhd
TOPLEVEL = blinker
MODULE = run
SIM = ghdl
SIM_ARGS = --wave=Blinker.ghw -gCLK_FREQUENCY_HZ=1000
export COCOTB_REDUCED_LOG_FMT = 1
export PYTHONPATH = ../../../../../scripts/

include $(shell cocotb-config --makefiles)/Makefile.sim
