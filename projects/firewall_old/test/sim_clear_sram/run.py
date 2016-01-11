#!/bin/env python

from NFTest import *

phy2loop0 = ('../connections/conn', 'nf2c0')

nftest_init(sim_loop = [], hw_config = [phy2loop0])
nftest_start()
#nftest_fpga_reset()

for i in range(2**17):
   nftest_regwrite((reg_defines.SRAM_BASE_ADDR()+(i<<2)),0)
   #print 'addr: %x\n' %((reg_defines.SRAM_BASE_ADDR()+(i<<2)))

for i in range(2**17):
   nftest_regread_expect((reg_defines.SRAM_BASE_ADDR()+(i<<2)),0)

#nftest_barrier()
nftest_finish()
