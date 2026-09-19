SRCDIR = $(PWD)/..
VHDL_SOURCES = $(SRCDIR)/Metronome.vhd \
               $(SRCDIR)/../../EventDetector/EventDetector.vhd \
			   $(SRCDIR)/../../EventDetector/EventDetector_Debouncer.vhd
TOPLEVEL = metronome
MODULE = run
SIM = ghdl
SIM_ARGS = --wave=Metronome.ghw -gCLK_FREQUENCY_HZ=1000
export COCOTB_REDUCED_LOG_FMT = 1
export PYTHONPATH = ../../../../../scripts/

include $(shell cocotb-config --makefiles)/Makefile.sim
