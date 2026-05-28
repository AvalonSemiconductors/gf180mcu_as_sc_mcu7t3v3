PWD=$(shell pwd)
SIM ?= icarus
TOPLEVEL_LANG ?= verilog
PDK_ROOT ?= $(PWD)/../gf180mcu_pdk
WAVES = 1

COMPILE_ARGS += -DSIM
VERILOG_SOURCES += $(PWD)/tb.v
VERILOG_SOURCES += $(PDK_ROOT)/gf180mcuD/libs.ref/gf180mcu_as_sc_mcu7t3v3/verilog/gf180mcu_as_sc_mcu7t3v3.v

COMPILE_ARGS += -DUSE_POWER_PINS

ifneq ($(GL),yes)
VERILOG_SOURCES += $(PWD)/../src/spi.v
VERILOG_SOURCES += $(PWD)/../src/tholin_riscv.v
VERILOG_SOURCES += $(PWD)/../src/uart.v
VERILOG_SOURCES += $(PWD)/../src/user_project_example.v
else
COMPILE_ARGS += -DGL_TEST
COMPILE_ARGS += -DFUNCTIONAL
VERILOG_SOURCES += $(PWD)/../runs/latest/52-openroad-fillinsertion/user_project_example.pnl.v
endif

COCOTB_TOPLEVEL = tb

COCOTB_TEST_MODULES = test

include $(shell cocotb-config --makefiles)/Makefile.sim

.PHONY: clean sim
