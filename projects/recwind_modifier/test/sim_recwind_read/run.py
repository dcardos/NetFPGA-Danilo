#!/bin/env python

from NFTest import *
#from CryptoNICLib import *
#from reg_defines_crypto_nic import *

phy2loop0 = ('../connections/conn', [])

nftest_init(sim_loop = [], hw_config = [phy2loop0])
nftest_start()

hdr=scapy.TCP(sport=1025, dport=80, window=9001, chksum=0xc30a)
TTL = 64

eth_hdr=14
ipv4_hdr=20
tcp_hdr=20

load = ''
lengthh = 10
for genr in range(lengthh):
   load += 'D'

seqn=0

i = 0
port1 = 80
port2 = 1010

hdr.dport=port1+i
hdr.sport=port2+i
hdr.flags = 0b00010
DA = "0xD0:0x27:0x88:0xBC:0xA8:0x%02x"%(i)
SA = "0x0:0x4E:0x46:0x32:0x43:0x%02x"%(i)
DST_IP = '192.168.101.%0.3i'%(i)
SRC_IP = '192.168.101.%0.3i'%(i+1)
pkt = scapy.Ether(dst=DA, src=SA)/scapy.IP(dst=DST_IP, src=SRC_IP, ttl=TTL)/hdr/load
pkt.len = (len(load))+eth_hdr+ipv4_hdr+tcp_hdr
seqn = i*(50)
pkt.seq = seqn 
i = i + 1
nftest_send_phy('nf2c0', pkt)
nftest_expect_dma('nf2c0', pkt)

nftest_finish()
