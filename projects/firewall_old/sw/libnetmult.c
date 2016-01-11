#include <stdio.h>
#include <stdlib.h>
#include <libnet.h>
#include <inttypes.h>

#define NUM_PORTS

int num_pkts;
void print_ip(uint32_t ip)
{
   printf("ip: %d.%d.%d.%d\n",
      ip&0x000000ff,ip>>8&0x0000ff,ip>>16&0x00ff,ip>>24);
   return;
}

int main()
{
   int c, i, j, seqn, ack;
   libnet_t *l;
   libnet_ptag_t tcp, ip, eth;
   uint8_t *payload, SA[6], DA[6];
   uint32_t src_ip, dst_ip;
   int16_t src_prt, dst_prt;
   uint16_t *ports_to_drop;
   uint8_t payload_s;
   char errbuf[LIBNET_ERRBUF_SIZE];
   struct libnet_ether_addr *enet_src;
   FILE *arq = fopen("ports","r");
   if(!arq){
      printf("Error in open file!\n");
      exit(0);
   }
   fscanf(arq,"%d",&num_pkts);
   ports_to_drop = malloc(num_pkts*sizeof(uint16_t));
   for(i=0;i<num_pkts;i++)
      fscanf(arq,"%hd",&ports_to_drop[i]);
   fclose(arq);
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
   dst_ip = (192) | (168<<8) | (101<<16) | (92<<24); 
   sprintf((char*)SA,"%02x:%02x:%02x:%02x:%02x:%02x",
         (uint8_t)enet_src->ether_addr_octet[0],
         (uint8_t)enet_src->ether_addr_octet[1],
         (uint8_t)enet_src->ether_addr_octet[2],
         (uint8_t)enet_src->ether_addr_octet[3],
         (uint8_t)enet_src->ether_addr_octet[4],
         (uint8_t)enet_src->ether_addr_octet[5]);

   sprintf((char*)DA,"%02x:%02x:%02x:%02x:%02x:%02x",
         0xD0,0x27,0x88,0xBC,0xA8,0xE9);
   //src_ip = (192) | (164<<8)| (0<<16) | (55<<24);
   tcp = ip = eth = LIBNET_PTAG_INITIALIZER;
   for(i=0;i<num_pkts;i++){
      src_prt = 15;
      dst_prt = ports_to_drop[i]; 
      seqn=i*(LIBNET_TCP_H+payload_s+1);
      tcp = libnet_build_tcp(
         src_prt,dst_prt,seqn,seqn+LIBNET_TCP_H+payload_s+1,
         TH_SYN,32767,0,10,LIBNET_TCP_H+payload_s,
         payload, payload_s, l, tcp);
      if(tcp ==-1){
         printf("libnet_build_tcp() error\n");
         goto bad;
      }
      ip = libnet_build_ipv4(
         LIBNET_IPV4_H+LIBNET_TCP_H+payload_s,
         0,242,0,64,IPPROTO_TCP,0,src_ip,dst_ip,
         NULL,0,l,ip);
      if(ip==-1){
         printf("libnet_build_ipv4() error\n");
         goto bad;
      }
      eth = libnet_build_ethernet(
         DA,SA,ETHERTYPE_IP,NULL,0,l,eth);
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
         printf("Wrote TCP packet.Dport: %d\n", ports_to_drop[i]);
      
      sleep(1);
   }
   /*--------------ACK----------------*/
   for(j=0;j<num_pkts;j++){
      dst_prt = 15;
      src_prt = ports_to_drop[j]; 
      seqn=j*(LIBNET_TCP_H+payload_s+1);
      ack=seqn+LIBNET_TCP_H+payload_s+1;
      tcp = libnet_build_tcp(
         src_prt,dst_prt,seqn,ack,
         TH_SYN|TH_ACK,32767,0,10,LIBNET_TCP_H+payload_s,
         payload, payload_s, l, tcp);
      if(tcp ==-1){
         printf("libnet_build_tcp() error\n");
         goto bad;
      }
      ip = libnet_build_ipv4(
         LIBNET_IPV4_H+LIBNET_TCP_H+payload_s,
         0,242,0,64,IPPROTO_TCP,0,dst_ip,src_ip,
         NULL,0,l,ip);
      if(ip==-1){
         printf("libnet_build_ipv4() error\n");
         goto bad;
      }
      eth = libnet_build_ethernet(
         SA,DA,ETHERTYPE_IP,NULL,0,l,eth);
      if(eth==-1){
         printf("libnet_build_ethernet() error\n");
         goto bad;
      }
      c = libnet_write(l);
      if(c==-1){
         printf("libnet_write() error\n");
         goto bad;
      }
      else {
         printf("Wrote byte TCP packet.\n");
      }
      sleep(1);
   }
   libnet_destroy(l);
   printf("htcp: %d, hipv4: %d, heth: %d\n",LIBNET_TCP_H,LIBNET_IPV4_H,LIBNET_ETH_H);
   return 0;
bad:
   libnet_destroy(l);
   exit(EXIT_FAILURE);
}
   
