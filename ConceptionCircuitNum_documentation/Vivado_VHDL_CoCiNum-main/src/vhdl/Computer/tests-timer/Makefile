SRCDIR = $(PWD)/..
VHDL_SOURCES = $(SRCDIR)/../InputSynchronizer/InputSynchronizer.vhd \
			   $(SRCDIR)/../Virgule/Virgule_pkg.vhd \
			   $(SRCDIR)/../Virgule/Virgule-precompiled.vhd \
			   $(SRCDIR)/../Virgule/VMemory.vhd \
			   $(SRCDIR)/../Virgule/VInterruptController.vhd \
			   $(SRCDIR)/../UART/SerialReceiver.vhd \
			   $(SRCDIR)/../UART/SerialTransmitter.vhd \
			   $(SRCDIR)/../UART/UART.vhd \
			   $(SRCDIR)/../Timer/Timer.vhd \
			   $(SRCDIR)/../../asm/Blink/Blink_pkg.vhd \
			   $(PWD)/Computer_pkg.vhd \
			   $(SRCDIR)/Computer.vhd

TOPLEVEL = computer
MODULE = run
SIM = ghdl
SIM_ARGS = --wave=Computer.ghw
export COCOTB_REDUCED_LOG_FMT = 1
export PYTHONPATH = ../../../../scripts/

include $(shell cocotb-config --makefiles)/Makefile.sim

%_pkg.vhd: %.s
	$(MAKE) -C $(dir $@)
