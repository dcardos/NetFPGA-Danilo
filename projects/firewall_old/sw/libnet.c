#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include <sys/socket.h>
#include <net/ethernet.h>
#include <netinet/ip.h>
#include <netinet/udp.h>
#include <netinet/in.h>
#include <libnet.h>
#include <syslog.h>

#define device "nf2c0"
#define PAYLOAD_L 8
#define NUM_ITER 5
#define TTL 64
#define NUM_TCP_PKTS 30

void getData(libnet_t *l, uint32_t *sip, uint32_t *dip,
      uint8_t *SA)
/*void getData(libnet_t *l, uint32_t *sip,
      uint8_t *SA)*/
{
   struct libnet_ether_addr * mac_addr;
   (*sip)=(uint32_t)libnet_get_ipaddr4(l);
   //*dip = (uint32_t)((192) | (168<<8) | (200<<16) | (2<<24));
   *dip = (uint32_t)((192) | (168<<8) | (101<<16) | (1<<92));
   mac_addr = libnet_get_hwaddr(l);
   sprintf((char*)SA,"%02x:%02x:%02x:%02x:%02x:%02x",
         (uint8_t)mac_addr->ether_addr_octet[0],
         (uint8_t)mac_addr->ether_addr_octet[1],
         (uint8_t)mac_addr->ether_addr_octet[2],
         (uint8_t)mac_addr->ether_addr_octet[3],
         (uint8_t)mac_addr->ether_addr_octet[4],
         (uint8_t)mac_addr->ether_addr_octet[5]);
}

int main()
{
   libnet_t *l;
   char errbuf1[LIBNET_ERRBUF_SIZE];
   //char errbuf2[LIBNET_ERRBUF_SIZE];
   uint32_t sip, dip;
   uint16_t sp = 80, dp=8080, seq[2*NUM_TCP_PKTS],seqn=0, seqnack=0, control;
   uint8_t SA[6], DA[6], PAYLOAD[PAYLOAD_L];
   int iter = 0, i, bytes_w;
   libnet_ptag_t eth_t, ip_t, tcp_t;
   //libnet_ptag_t icmp_eth_t, icmp_ip_t, icmp_t;
   //uint8_t *packet;
   //int packet_icmp_s = LIBNET_ETH_H+LIBNET_IPV4_H+LIBNET_ICMP_MASK_H;
   //struct libnet_link_int *network;
   //libnet_ptag_t arp_t;
  
   memset(seq,0,NUM_TCP_PKTS*sizeof(uint16_t));
   memset(PAYLOAD,0,PAYLOAD_L);

   sprintf((char*)DA,"%02x:%02x:%02x:%02x:%02x:%02x",
            0x0,0x4E,0x46,0x32,0x43,0x0);

   l=libnet_init(LIBNET_LINK, device, errbuf1);
   if(!l)
   {  
      fprintf(stderr,"libnet_init() failed: %s\n",errbuf1);
      goto bad;
   }

   /*if(libnet_init_packet(packet_icmp_s,&packet) == -1)
   {
      fprintf(stderr,"libnet_init_packet() failed: %s\n",errbuf2);
      goto bad;
   }
   if(!(network = libnet_open_link_interface(device,errbuf2)))
   {
      fprintf(stderr,"libnet_open_link_interface() failed: %s\n",errbuf2);
      goto bad;
   }*/
      
   getData(l,&sip,&dip,SA);

   /*getData(l,&sip,SA);
   arp_t = 0;
   eth_t = 0; 

   arp_t = libnet_autobuild_arp (
      ARPOP_REPLY, (uint8_t *)SA,
      (uint8_t *)&sip,(uint8_t *)DA, (uint8_t *)&dip, l);
   
   if(arp_t == -1)
   {
      fprintf(stderr,"libnet_autobuild_arp() failed: %s\n",errbuf);
      goto bad;
   }

   eth_t = libnet_build_ethernet (DA,
      (uint8_t*)SA,
      ETHERTYPE_ARP,
      (uint8_t*)NULL,0,l,0);
            
   if(eth_t == -1)
   {
      fprintf(stderr,"libnet_autobuild_arp() failed: %s\n",errbuf);
      goto bad;
   }
   if(libnet_write(l) == -1)
   {
      fprintf(stderr,"libnet_write() failed: %s\n",errbuf);
      goto bad;
   }
   libnet_destroy(l);*/

   /*l=libnet_init(LIBNET_LINK, device, errbuf);
   if(!l)
   {  
      fprintf(stderr,"libnet_init() failed: %s\n",errbuf);
      goto bad;
   }*/

   /*uint32_t res = 0xffffffff; 
   printf("DA: %s\n",DA);
   printf("dip: %d\n",dip);
   printf("dip: %3d.%3d.%3d.%3d\n",
      (uint8_t)(dip&res>>24),
      (uint8_t)((dip&(res>>16))>>8), 
      (uint8_t)((dip&(res>>8))>>16),
      (uint8_t)(dip>>24));

   return 0;*/

   //icmp_eth_t=icmp_ip_t=icmp_t=tcp_t=ip_t=eth_t= LIBNET_PTAG_INITIALIZER;
   tcp_t=ip_t=eth_t= LIBNET_PTAG_INITIALIZER;

   do
   {
      for(i=0;i<2;i++)
      {
         control = (1<<1);
         tcp_t = libnet_build_tcp (
               sp, dp, seq[seqn],0,
               control, 8192, 0x0, 0,
               LIBNET_TCP_H+PAYLOAD_L,
               PAYLOAD,
               PAYLOAD_L,
               l,
               tcp_t
         );
         if(!tcp_t)
         {
            fprintf(stderr,"libnet_build_tcp() failed: %s\n",errbuf1);
            goto bad;
         }

         ip_t = libnet_build_ipv4(
            LIBNET_IPV4_H,
            0,0,0,TTL,IPPROTO_TCP,0,
            sip, dip,NULL,0,l,ip_t
         );
         
         if(!ip_t)
         {  
            fprintf(stderr,"libnet_build_ip() failed: %s\n",errbuf1);
            goto bad;
         }
         eth_t = libnet_build_ethernet (
            DA, SA, ETHERTYPE_IP, NULL, 0, l, eth_t
         );

         if(!eth_t)
         {
            fprintf(stderr,"libnet_build_ethernet() failed: %s\n",errbuf1);
            goto bad;
         }

         bytes_w = libnet_write(l);
         if(bytes_w == -1)
         {
            fprintf(stderr,"libnet_write() failed: %s\n",errbuf1);
            goto bad;
         }

         seq[seqn] += LIBNET_IPV4_H+LIBNET_TCP_H+PAYLOAD_L+1;
         seqn++;

         sleep(1);
      }

      control = (9<<1);
      tcp_t = libnet_build_tcp (
         dp, sp, seqn, 0,
         control, 8192, 0x0, 0, LIBNET_TCP_H+PAYLOAD_L,
         PAYLOAD,
         PAYLOAD_L,
         l,
         tcp_t
      );
      if(!tcp_t)
      {
         fprintf(stderr,"libnet_build_tcp() failed: %s\n",errbuf1);
         goto bad;
      }

      ip_t = libnet_build_ipv4(
         LIBNET_IPV4_H+LIBNET_TCP_H+PAYLOAD_L,
         0,0,0,TTL,IPPROTO_TCP,0,
         dip, sip, NULL,0,l,ip_t
      );
      
      if(!ip_t)
      {  
         fprintf(stderr,"libnet_build_ip() failed: %s\n",errbuf1);
         goto bad;
      }

      eth_t = libnet_build_ethernet (
         SA, DA, ETHERTYPE_IP, NULL, 0, l, eth_t
      );

      if(!eth_t)
      {
         fprintf(stderr,"libnet_autobuild_ethernet() failed: %s\n",errbuf1);
         goto bad;
      }

      seq[seqnack] += LIBNET_IPV4_H+LIBNET_TCP_H+PAYLOAD_L+1;
      seqnack++;

      /*icmp_eth_t = libnet_build_ethernet(DA, SA,
         ETHERTYPE_IP,
         NULL,
         0,
         packet,
         icmp_eth_t);

      icmp_ip_t = libnet_build_ip(LIBNET_ICMP_MASK_H, 0, 242, 0, 64,
         IPPROTO_ICMP, sip, dip, NULL, 0, 
         packet+LIBNET_ETH_H,icmp_ip_t);   
      
      icmp_t = libnet_build_icmp_mask(ICMP_MASKREPLY, 0, 
         242, 0, 0xffffffff, NULL, 0, 
         packet+LIBNET_ETH_H+LIBNET_IPV4_H,
         icmp_t);

      if(libnet_write_link_layer(device, packet, 
         packet_icmp_s)==-1)
      {
         fprintf(stderr,"libnet_write_llayer() failed: %s\n",errbuf2);
         goto bad;
      }*/

   } while(iter++ < NUM_ITER);

bad:

   libnet_destroy(l);
   //libnet_destroy_packet(packet);
   return 0;
}
