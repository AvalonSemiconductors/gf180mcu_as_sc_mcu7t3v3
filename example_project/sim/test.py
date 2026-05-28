import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles

@cocotb.test()
async def test_example_proj(dut):
	dut._log.info('start')
	dut.rst_n.value = 0;
	c = Clock(dut.clk_i, 100, 'ns')
	cocotb.start_soon(c.start())
	await ClockCycles(dut.clk_i, 5)
	dut.rst_n.value = 1
	await ClockCycles(dut.clk_i, 160000)
	assert dut.halted.value == 1
