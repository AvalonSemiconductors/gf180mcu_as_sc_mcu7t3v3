SIM ?= vicarus
TOPLEVEL_LANG ?= verilog

COMPILE_ARGS += -DSIM
VERILOG_SOURCES += $(PWD)/tb.v
VERILOG_SOURCES += $(PWD)/../src/fpga_wrapper.v $(PWD)/../src/user_project_example.v

TOPLEVEL = tb

MODULE = test

include $(shell cocotb-config --makefiles)/simulators/Makefile.icarus

.PHONY: clean sim
