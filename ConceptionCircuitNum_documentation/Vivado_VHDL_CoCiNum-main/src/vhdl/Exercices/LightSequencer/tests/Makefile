SRCDIR = $(PWD)/..
VHDL_SOURCES = $(SRCDIR)/LightSequencer.vhd
TOPLEVEL = lightsequencer
MODULE = run
SIM = ghdl
SIM_ARGS = --wave=LightSequencer.ghw -gCLK_FREQUENCY_HZ=1000
export COCOTB_REDUCED_LOG_FMT = 1
export PYTHONPATH = ../../../../../scripts/

include $(shell cocotb-config --makefiles)/Makefile.sim
