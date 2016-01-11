#!/bin/env python

from NFTest import *
from NFTest import simReg

phy2loop0 = ('../connections/conn', 'nf2c0')

nftest_init(sim_loop = [], hw_config = [phy2loop0])
nftest_start()
#nftest_fpga_reset()

'''for i in range(2**10*2):
   nftest_regwrite((reg_defines.SRAM_BASE_ADDR()+(i<<2)),i<<4)
   #print 'addr: %x\n' %((reg_defines.SRAM_BASE_ADDR()+(i<<2)))

for i in range(2**10*2):
   nftest_regread_expect((reg_defines.SRAM_BASE_ADDR()+(i<<2)),i<<4)
'''
pdrop = [1210, 80, 22, 667]

#Ports to drop 1010, 80, 22, 667 
#1,2,3 and 4 tell to sram_arbiter which 18 bit set it must write the value
nftest_regwrite((reg_defines.MINIFIREWALL_DPORT1_REG()),pdrop[0])
nftest_regread_expect((reg_defines.MINIFIREWALL_DPORT1_REG()),pdrop[0])
nftest_regread_expect((reg_defines.SRAM_BASE_ADDR()+4),pdrop[0]<<16)

nftest_regwrite((reg_defines.MINIFIREWALL_DPORT2_REG()),pdrop[1])
nftest_regread_expect((reg_defines.MINIFIREWALL_DPORT2_REG()),pdrop[1])
nftest_regread_expect((reg_defines.SRAM_BASE_ADDR())+4,pdrop[0]<<16|pdrop[1])

nftest_regwrite((reg_defines.MINIFIREWALL_DPORT3_REG()),pdrop[2])
nftest_regread_expect((reg_defines.MINIFIREWALL_DPORT3_REG()),pdrop[2])
nftest_regread_expect((reg_defines.SRAM_BASE_ADDR()),pdrop[2]<<16)

nftest_regwrite((reg_defines.MINIFIREWALL_DPORT4_REG()),pdrop[3])
nftest_regread_expect((reg_defines.MINIFIREWALL_DPORT4_REG()),pdrop[3])
nftest_regread_expect((reg_defines.SRAM_BASE_ADDR()),pdrop[2]<<16|pdrop[3])

nftest_finish()
