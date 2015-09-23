#include <stdio.h>
#include <stdlib.h>
#include <libnet.h>
#include <inttypes.h>

int main()
{
   int c, i, seqn;
   libnet_t *l;
   libnet_ptag_t tcp, ip, eth;
   uint8_t *payload, SA[6], DA[6];
   ushort payload_s;
   uint32_t src_ip, dst_ip;
   uint16_t src_prt, dst_prt;
   char errbuf[LIBNET_ERRBUF_SIZE];
   struct libnet_ether_addr *enet_src;
   payload_s = 10;
   payload = malloc(payload_s*sizeof(uint8_t));
   memset(payload,0,payload_s);
   l = libnet_init(LIBNET_LINK, "nf2c0", errbuf);
   if(l == NULL){
      printf("libnet_init() error\n");
      goto bad;
   }
   enet_src = libnet_get_hwaddr(l);
   src_ip = libnet_get_ipaddr4(l);
   dst_ip = (192) | (168<<8) | (101<<16) | (20); 
   //char *srcip;
   //srcip = libnet_addr2name4(dst_ip,LIBNET_DONT_RESOLVE);
   //printf("conversion: %s %d\n", srcip,LIBNET_IPV4_H+LIBNET_TCP_H+LIBNET_ETH_H+payload_s);
   //return 0;
   sprintf((char*)SA,"%02x:%02x:%02x:%02x:%02x:%02x",
         (uint8_t)enet_src->ether_addr_octet[0],
         (uint8_t)enet_src->ether_addr_octet[1],
         (uint8_t)enet_src->ether_addr_octet[2],
         (uint8_t)enet_src->ether_addr_octet[3],
         (uint8_t)enet_src->ether_addr_octet[4],
         (uint8_t)enet_src->ether_addr_octet[5]);

   sprintf((char*)DA,"%02x:%02x:%02x:%02x:%02x:%02x",
         0x0,0x4E,0x46,0x32,0x43,0x0);

   src_prt = 80;
   dst_prt = 1010; 
   //src_ip = (192) | (164<<8)| (0<<16) | (55<<24);
   tcp = ip = eth = LIBNET_PTAG_INITIALIZER;
   //for(i=1;i<11;i++){
   for(i=0;i<10;i++){
      seqn=i*(LIBNET_TCP_H+payload_s+1);
      tcp = libnet_build_tcp(
         src_prt, 
         dst_prt, 
         seqn, 
         seqn+LIBNET_TCP_H+payload_s+1,
         TH_SYN | TH_ACK, 
         0, 
         0, 
         10, 
         LIBNET_TCP_H+payload_s,
         payload, payload_s, l, tcp);
      if(tcp ==-1){
         printf("libnet_build_tcp() error\n");
         goto bad;
      }
      ip = libnet_build_ipv4(
         LIBNET_IPV4_H+LIBNET_TCP_H+payload_s,
         0,
         242,
         0,
         64,
         IPPROTO_TCP,
         0, 
         src_ip,
         dst_ip,
         NULL,
         0,
         l,
         ip);
      if(ip==-1){
         printf("libnet_build_ipv4() error\n");
         goto bad;
      }
      eth = libnet_build_ethernet(
         DA,
         SA,
         ETHERTYPE_IP,
         NULL,
         0,
         l,
         eth);
      if(eth==-1){
         printf("libnet_build_ethernet() error\n");
         goto bad;
      }
      c = libnet_write(l);
      if(c==-1){
         printf("libnet_write() error\n");
         goto bad;
      }
      else
         printf("Wrote %d byte TCP packet.\nSeqNum: %d, ackNum: %d\n\n",c,seqn,seqn+LIBNET_TCP_H+payload_s+1);

         //printf("Wrote %d byte TCP packet.\n",c);
      
      sleep(1);
   }
   libnet_destroy(l);
   return 0;
bad:
   libnet_destroy(l);
   exit(EXIT_FAILURE);
}
   
