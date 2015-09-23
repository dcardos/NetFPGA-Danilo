#!/bin/env python

from NFTest import *
from NFTest import simReg
import time
#from /root/netfpga/lib/python/NFTest/simReg import regDelay

phy2loop0 = ('../connections/conn', [])

hdr=scapy.TCP()
#hdr.sport=1025
#hdr.dport=80

nftest_init(sim_loop = [], hw_config = [phy2loop0])
nftest_start()
#nftest_fpga_reset()
#delay=3*2**19
#simReg.regDelay(20000000)
#time.sleep(60)
TTL = 64

port1 = 80
port2 = 1010
#The num_pkts set here must be changed in simulacao.v(line 1054), too
NUM_PKTS = 10

eth_hdr=14
ipv4_hdr=20
tcp_hdr=20

load = ''
lengthh = 10
for genr in range(lengthh):
   load += chr(randint(0,255))

seqn=0

DA = "0xD0:0x27:0x88:0xBC:0xA8:0xE9"
SA = "0x0:0x4E:0x46:0x32:0x43:0x0"
DST_IP = '192.168.101.10'
SRC_IP = '192.168.101.20'

'''
for i in range(2**10):
   nftest_regwrite((reg_defines.SRAM_BASE_ADDR()+(i<<2)),0)
   #print 'addr: %x\n' %((reg_defines.SRAM_BASE_ADDR()+(i<<2)))
for i in range(2**17):
   nftest_regread_expect((reg_defines.SRAM_BASE_ADDR()+(i<<2)),0)
'''
nftest_barrier()

#add recently
for iter in range(1):
   for i in range(NUM_PKTS):
      hdr.dport=port1*(i+1)
      hdr.sport=port2*(i+2)
      hdr.flags = 0b00010
      DA = "0xD0:0x27:0x88:0xBC:0xA8:0x%02x"%(i)
      SA = "0x0:0x4E:0x46:0x32:0x43:0x%02x"%(i)
      DST_IP = '192.168.101.%0.3i'%(i)
      SRC_IP = '192.168.101.%0.3i'%(i+1)
      pkt = scapy.Ether(dst=DA, src=SA)/scapy.IP(dst=DST_IP, 
            src=SRC_IP, ttl=TTL)/hdr/load
      pkt.len = (len(load))+eth_hdr+ipv4_hdr+tcp_hdr
      #seqn = i*(pkt.len+1)
      seqn = i*(50)
      pkt.seq = seqn 
      print "len_packet %d"%(pkt.len)
      print "sequencenum %d"%(seqn)

      nftest_send_phy('nf2c0', pkt)
      nftest_expect_dma('nf2c0', pkt)

   #ACK+DATA
'''   for i in range(NUM_PKTS):
      hdr.dport=port2*(i+2)
      hdr.sport=port1*(i+1)
      hdr.flags = 0b10010
      DA = "0xD0:0x27:0x88:0xBC:0xA8:0x%02x"%(i)
      SA = "0x0:0x4E:0x46:0x32:0x43:0x%02x"%(i)
      DST_IP = '192.168.101.%0.3i'%(i)
      SRC_IP = '192.168.101.%0.3i'%(i+1)
      pkt = scapy.Ether(dst=SA, src=DA)/scapy.IP(dst=SRC_IP,
             src=DST_IP, ttl=TTL)/hdr/load
      pkt.len = (len(load))+eth_hdr+ipv4_hdr+tcp_hdr
      #seqn = (i+1)*(pkt.len+1)
      pkt.seq = i*(50)
      #pkt.ack = seqn+pkt.len+1
      #pkt.ack = (i+1)*(pkt.len+1)
      pkt.ack = (i)*(50)+pkt.len+1
      print "len_packet %d"%(pkt.len)
      print "acknum %d"%(pkt.ack)

      nftest_send_phy('nf2c0', pkt)
      nftest_expect_dma('nf2c0', pkt)
'''
nftest_finish()
