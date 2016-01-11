#include <stdio.h>
#include <stdlib.h>
#include <libnet.h>
#include <inttypes.h>

#define NUM_PKTS 1

int main()
{
   int c, i, seqn;
   libnet_t *l;
   libnet_ptag_t udp, ip, eth;
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
   dst_ip = (192) | (168<<18) | (101<<16) | (92); 
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
         0xD0,0x27,0x88,0xBC,0xA8,0xE9);
   src_prt = 80;
   dst_prt = 1010; 
   //src_ip = (192) | (164<<8)| (0<<16) | (55<<24);
   udp = ip = eth = LIBNET_PTAG_INITIALIZER;
   for(i=0;i<NUM_PKTS;i++){
      seqn=i*(LIBNET_TCP_H+payload_s+1);
      udp = libnet_build_udp(
         src_prt, 
         dst_prt, 
         LIBNET_UDP_H+payload_s,
         0, 
         payload, payload_s, l, udp);
      if(udp ==-1){
         printf("libnet_build_udp() error\n");
         goto bad;
      }
      ip = libnet_build_ipv4(
         LIBNET_IPV4_H+LIBNET_UDP_H+payload_s,
         0,
         242,
         0,
         64,
         IPPROTO_UDP,
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
         printf("Wrote byte UDP packet.\n");
      
      sleep(1);
   }
   libnet_destroy(l);
   return 0;
bad:
   libnet_destroy(l);
   exit(EXIT_FAILURE);
}
   
