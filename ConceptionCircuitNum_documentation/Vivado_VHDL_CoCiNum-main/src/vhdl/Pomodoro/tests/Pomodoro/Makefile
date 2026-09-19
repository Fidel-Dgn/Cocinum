
SRCDIR = $(PWD)/../..
VHDL_SOURCES = $(SRCDIR)/../SegmentDisplay/SegmentDecoder.vhd \
               $(SRCDIR)/ButtonPressDetector.vhd \
               $(SRCDIR)/UpDownCounter.vhd \
               $(SRCDIR)/Pomodoro.vhd
TOPLEVEL = pomodoro
MODULE = run
SIM = ghdl
SIM_ARGS = --wave=Pomodoro.ghw
export COCOTB_REDUCED_LOG_FMT = 1

include $(shell cocotb-config --makefiles)/Makefile.inc
include $(shell cocotb-config --makefiles)/Makefile.sim
