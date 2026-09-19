
SRCDIR = $(PWD)/../..
VHDL_SOURCES = $(SRCDIR)/UpDownCounter.vhd
TOPLEVEL = updowncounter
MODULE = run
SIM = ghdl
SIM_ARGS = --wave=UpDownCounter.ghw -gVALUE_MAX=9
export COCOTB_REDUCED_LOG_FMT = 1

include $(shell cocotb-config --makefiles)/Makefile.inc
include $(shell cocotb-config --makefiles)/Makefile.sim
