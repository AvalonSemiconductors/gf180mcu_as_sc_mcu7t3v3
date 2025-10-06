import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles

@cocotb.test()
async def test_counter(dut):
	dut._log.info("start")
	clock = Clock(dut.clk_i, 40, units="ns")
	cocotb.start_soon(clock.start())
	
	dut.rst_n.value = 0
	dut.oeb.value = 0
	dut.web.value = 1
	await ClockCycles(dut.clk_i, 10)
	dut.rst_n.value = 1
	await ClockCycles(dut.clk_i, 300)
	await Timer(10, units="ps") # May need to wait for propagation delay after the final clock edge
	assert dut.count.value == 300
	dut.count_set.value = 10000
	dut.oeb.value = 1
	dut.web.value = 0
	await ClockCycles(dut.clk_i, 1)
	dut.oeb.value = 0
	dut.web.value = 1
	assert dut.count.value == 10000
	await ClockCycles(dut.clk_i, 6)
	assert dut.count.value == 10005
	dut.oeb.value = 1
	await ClockCycles(dut.clk_i, 5)
	assert dut.count.value == 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
	dut.oeb.value = 0
	await ClockCycles(dut.clk_i, 5)
	assert dut.count.value == 10015
