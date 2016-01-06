#!/bin/env python

from NFTest import *
#from CryptoNICLib import *
#from reg_defines_crypto_nic import *

phy2loop0 = ('../connections/conn', [])

nftest_init(sim_loop = [], hw_config = [phy2loop0])
nftest_start()

nftest_finish()
