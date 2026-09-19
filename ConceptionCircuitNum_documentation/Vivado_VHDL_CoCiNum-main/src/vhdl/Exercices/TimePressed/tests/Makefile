SRCDIR = $(PWD)/..
VHDL_SOURCES = $(SRCDIR)/TimePressed.vhd
TOPLEVEL = timepressed
MODULE = run
SIM = ghdl
SIM_ARGS = --wave=TimePressed.ghw -gCLK_FREQUENCY_HZ=1000
export COCOTB_REDUCED_LOG_FMT = 1
export PYTHONPATH = ../../../../../scripts/

include $(shell cocotb-config --makefiles)/Makefile.sim
