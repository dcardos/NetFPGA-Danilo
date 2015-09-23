/* ****************************************************************************
 * vim:set shiftwidth=2 softtabstop=2 expandtab:
 * $Id: counterdump.c 5455 2009-05-05 18:18:16Z g9coving $
 *
 * Module:  counterdump.c
 * Project: NetFPGA NIC
 * Description: dumps the MAC Rx/Tx counters to stdout
 * Author: Jad Naous
 *
 * Change history:
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <net/if.h>

#include "../lib/C/reg_defines_novo_reference_nic.h"
#include "../../../lib/C/common/nf2.h"
#include "../../../lib/C/common/nf2util.h"

#define PATHLEN		80

#define DEFAULT_IFACE	"nf2c0"

/* Global vars */
static struct nf2device nf2;

/* Function declarations */
void dumpCounts();
void processArgs (int , char **);
void usage (void);

int main(int argc, char *argv[])
{
  nf2.device_name = DEFAULT_IFACE;

  processArgs(argc, argv);

  // Open the interface if possible
  if (check_iface(&nf2))
    {
      exit(1);
    }
  if (openDescriptor(&nf2))
    {
      exit(1);
    }

  dumpCounts();

  closeDescriptor(&nf2);

  return 0;
}

void dumpCounts()
{
  unsigned val;

  /*writeReg(&nf2, SIMULACAO_RD_0_DATA_REG, 0x45460);
  readReg(&nf2, SIMULACAO_RD_0_DATA_REG, &val);
  printf("EscritaPosicaoSRAM:            %x\n\n", val);
  writeReg(&nf2, SIMULACAO_RD_1_DATA_REG, 0x89890);
  writeReg(&nf2, SIMULACAO_TUPLE_PDST_GEN_REG, 0x0);
  writeReg(&nf2, SIMULACAO_TUPLE_IPSRC_GEN_REG, 0x0);
  writeReg(&nf2, 0x100000c, 0x00001234);*/

/*  writeReg(&nf2, ((0x1000008<<1)|1), 0x123465);
  sleep(1);
  readReg(&nf2, ((0x1000008<<1)|1), &val);
  printf("EscritaPosicaoSRAM:            %x\n\n", val);*/
  
  /*readReg(&nf2, 0x100000c, &val);
  printf("EscritaPosicaoSRAM:            %x\n\n", val);

  readReg(&nf2, 0x1000000, &val);
  printf("1PosicaoSRAM:            %x\n\n", val);

  readReg(&nf2, 0x1000040, &val);
  printf("SegudnaPosicaoSRAM:            %x\n\n", val);

  readReg(&nf2, 0x1000080, &val);
  printf("TerceiranaPosicaoSRAM:            %x\n\n", val);
*/

  /*for(int i=0;i<100000;i++){
     readReg(&nf2, (0x1000000+i*0xf), &val);
     printf("SRAM %d:            %x\n",i*0xf,val);

     readReg(&nf2, (0x1000004+i*0xf), &val);
     printf("SRAM %d:            %x\n",0x4+i*0xf,val);

     readReg(&nf2, (0x1000008+i*0xf),&val);
     printf("SRAM %d:            %x\n",0x8+i*0xf,val);

     readReg(&nf2, (0x100000c+i*0xf),&val);
     printf("SRAM %d:            %x\n",0xc+i*0xf,val);
   }*/
  readReg(&nf2, SIMULACAO_TUPLE_PSRC_GEN_REG, &val);
  printf("Source port:            %x\n\n", val);

  readReg(&nf2, SIMULACAO_TUPLE_PDST_GEN_REG, &val);
  printf("Destiny port:            %x\n\n", val);

  readReg(&nf2, SIMULACAO_TUPLE_IPSRC_GEN_REG, &val);
  printf("Source IP:            %x\n\n", val);

  readReg(&nf2, SIMULACAO_TUPLE_IPDST_GEN_REG, &val);
  printf("Destiny IP:            %x\n\n", val);

  readReg(&nf2, SIMULACAO_TUPLE_ACKNUM_GEN_REG, &val);
  printf("Acknowledgement number:            %x\n\n", val);

  readReg(&nf2, SIMULACAO_NUM_ESCRITA_GEN_REG, &val);
  printf("NUM ESCRITA:            %u\n\n", val);

  readReg(&nf2, SIMULACAO_NUM_LEITURA_GEN_REG, &val);
  printf("NUM LEITURA:            %u\n\n", val);

/*  readReg(&nf2, SIMULACAO_RD_1_DATA_GEN_REG, &val);
  printf("RD_1_DATA:            %x\n\n", val);*/

  readReg(&nf2, SIMULACAO_RD_0_DATA_REG, &val);
  printf("RD_0_DATA:            %x\n\n", val);

  readReg(&nf2, SIMULACAO_RD_1_DATA_REG, &val);
  printf("RD_1_DATA:            %x\n\n", val);

  readReg(&nf2, SIMULACAO_NUM_ICMP_PKTS_GEN_REG, &val);
  printf("Num pkts ICMP processed:            %u\n\n", val);

  readReg(&nf2, SIMULACAO_NUM_UDP_PKTS_GEN_REG, &val);
  printf("Num pkts UDP processed:            %u\n\n", val);

  readReg(&nf2, SIMULACAO_NUM_ACK_PKTS_GEN_REG, &val);
  printf("Num pkts ACK processed:            %u\n\n", val);

  readReg(&nf2, SIMULACAO_NUM_TCP_PKTS_GEN_REG, &val);
  printf("Num pkts TCP processed:            %u\n\n", val);
  
  readReg(&nf2, SIMULACAO_NUM_PKTS_GEN_REG, &val);
  printf("Num pkts processed:            %u\n\n", val);

  /*readReg(&nf2, MAC_GRP_0_RX_QUEUE_NUM_PKTS_STORED_REG, &val);
  printf("Num pkts received on port 0:           %u\n", val);
  readReg(&nf2, MAC_GRP_0_RX_QUEUE_NUM_PKTS_DROPPED_FULL_REG, &val);
  printf("Num pkts dropped (rx queue 0 full):    %u\n", val);
  readReg(&nf2, MAC_GRP_0_RX_QUEUE_NUM_PKTS_DROPPED_BAD_REG, &val);
  printf("Num pkts dropped (bad fcs q 0):        %u\n", val);
  readReg(&nf2, MAC_GRP_0_RX_QUEUE_NUM_BYTES_PUSHED_REG, &val);
  printf("Num bytes received on port 0:          %u\n", val);
  readReg(&nf2, MAC_GRP_0_TX_QUEUE_NUM_PKTS_SENT_REG, &val);
  printf("Num pkts sent from port 0:             %u\n", val);
  readReg(&nf2, MAC_GRP_0_TX_QUEUE_NUM_BYTES_PUSHED_REG, &val);
  printf("Num bytes sent from port 0:            %u\n\n", val);

  readReg(&nf2, MAC_GRP_1_RX_QUEUE_NUM_PKTS_STORED_REG, &val);
  printf("Num pkts received on port 1:           %u\n", val);
  readReg(&nf2, MAC_GRP_1_RX_QUEUE_NUM_PKTS_DROPPED_FULL_REG, &val);
  printf("Num pkts dropped (rx queue 1 full):    %u\n", val);
  readReg(&nf2, MAC_GRP_1_RX_QUEUE_NUM_PKTS_DROPPED_BAD_REG, &val);
  printf("Num pkts dropped (bad fcs q 1):        %u\n", val);
  readReg(&nf2, MAC_GRP_1_RX_QUEUE_NUM_BYTES_PUSHED_REG, &val);
  printf("Num bytes received on port 1:          %u\n", val);
  readReg(&nf2, MAC_GRP_1_TX_QUEUE_NUM_PKTS_SENT_REG, &val);
  printf("Num pkts sent from port 1:             %u\n", val);
  readReg(&nf2, MAC_GRP_1_TX_QUEUE_NUM_BYTES_PUSHED_REG, &val);
  printf("Num bytes sent from port 1:            %u\n\n", val);

  readReg(&nf2, MAC_GRP_2_RX_QUEUE_NUM_PKTS_STORED_REG, &val);
  printf("Num pkts received on port 2:           %u\n", val);
  readReg(&nf2, MAC_GRP_2_RX_QUEUE_NUM_PKTS_DROPPED_FULL_REG, &val);
  printf("Num pkts dropped (rx queue 2 full):    %u\n", val);
  readReg(&nf2, MAC_GRP_2_RX_QUEUE_NUM_PKTS_DROPPED_BAD_REG, &val);
  printf("Num pkts dropped (bad fcs q 2):        %u\n", val);
  readReg(&nf2, MAC_GRP_2_RX_QUEUE_NUM_BYTES_PUSHED_REG, &val);
  printf("Num bytes received on port 2:          %u\n", val);
  readReg(&nf2, MAC_GRP_2_TX_QUEUE_NUM_PKTS_SENT_REG, &val);
  printf("Num pkts sent from port 2:             %u\n", val);
  readReg(&nf2, MAC_GRP_2_TX_QUEUE_NUM_BYTES_PUSHED_REG, &val);
  printf("Num bytes sent from port 2:            %u\n\n", val);

  readReg(&nf2, MAC_GRP_3_RX_QUEUE_NUM_PKTS_STORED_REG, &val);
  printf("Num pkts received on port 3:           %u\n", val);
  readReg(&nf2, MAC_GRP_3_RX_QUEUE_NUM_PKTS_DROPPED_FULL_REG, &val);
  printf("Num pkts dropped (rx queue 3 full):    %u\n", val);
  readReg(&nf2, MAC_GRP_3_RX_QUEUE_NUM_PKTS_DROPPED_BAD_REG, &val);
  printf("Num pkts dropped (bad fcs q 3):        %u\n", val);
  readReg(&nf2, MAC_GRP_3_RX_QUEUE_NUM_BYTES_PUSHED_REG, &val);
  printf("Num bytes received on port 3:          %u\n", val);
  readReg(&nf2, MAC_GRP_3_TX_QUEUE_NUM_PKTS_SENT_REG, &val);
  printf("Num pkts sent from port 3:             %u\n", val);
  readReg(&nf2, MAC_GRP_3_TX_QUEUE_NUM_BYTES_PUSHED_REG, &val);
  printf("Num bytes sent from port 3:            %u\n\n", val);*/
}

/*
 *  Process the arguments.
 */
void processArgs (int argc, char **argv )
{
  char c;

  /* don't want getopt to moan - I can do that just fine thanks! */
  opterr = 0;

  while ((c = getopt (argc, argv, "i:h")) != -1)
    {
      switch (c)
	{
	case 'i':	/* interface name */
	  nf2.device_name = optarg;
	  break;
	case '?':
	  if (isprint (optopt))
	    fprintf (stderr, "Unknown option `-%c'.\n", optopt);
	  else
	    fprintf (stderr,
		     "Unknown option character `\\x%x'.\n",
		     optopt);
	case 'h':
	default:
	  usage();
	  exit(1);
	}
    }
}


/*
 *  Describe usage of this program.
 */
void usage (void)
{
  printf("Usage: ./counterdump <options> \n\n");
  printf("Options: -i <iface> : interface name (default nf2c0)\n");
  printf("         -h : Print this message and exit.\n");
}
