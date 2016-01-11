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
#include <stdint.h>

#define device "nf2c0"
#define PAYLOAD_L 8
#define NUM_ITER 5
#define TTL 64
#define NUM_TCP_PKTS 30
#define NUM_TCP_PER_ITER 2

libnet_ptag_t eth_t, ip_t, tcp_t, icmp_t;
char errbuf[LIBNET_ERRBUF_SIZE];

void getData(libnet_t *l, uint32_t *sip, uint32_t *dip,
      uint8_t *SA)
{
   struct libnet_ether_addr * mac_addr;
   (*sip)=(uint32_t)libnet_get_ipaddr4(l);
   //*dip = (uint32_t)((192) | (168<<8) | (200<<16) | (2<<24));
   *dip = (uint32_t)((192) | (168<<8) | (101<<16) | (1<<92));
   mac_addr = libnet_get_hwaddr(l);
   if(mac_addr == NULL)
   {
      printf("Error get_hwaddr\n");
      exit(0);
   }
   sprintf((char*)SA,"%02x:%02x:%02x:%02x:%02x:%02x",
         (uint8_t)mac_addr->ether_addr_octet[0],
         (uint8_t)mac_addr->ether_addr_octet[1],
         (uint8_t)mac_addr->ether_addr_octet[2],
         (uint8_t)mac_addr->ether_addr_octet[3],
         (uint8_t)mac_addr->ether_addr_octet[4],
         (uint8_t)mac_addr->ether_addr_octet[5]);
}

uint16_t buildIP_h(libnet_t *l,
      uint32_t sip, uint32_t dip, uint8_t PROTO)
{
   ip_t = libnet_build_ipv4(
      LIBNET_IPV4_H+LIBNET_TCP_H+PAYLOAD_L,
      0, 0, 0, TTL, PROTO, 0,
      sip, dip, NULL, 0, l, ip_t);
   
   if(!ip_t)
   {  
      fprintf(stderr,"libnet_build_ip() failed: %s\n",errbuf);
      goto bad;
   }

   return 1;
bad:
   return -1;
}

uint16_t buildETH_h(libnet_t *l,
   uint8_t *DA, uint8_t *SA)
{
   /*struct libnet_ether_addr * mac_addr;
   mac_addr = libnet_get_hwaddr(l);
   sprintf((char*)SA,"%02x:%02x:%02x:%02x:%02x:%02x",
         (uint8_t)mac_addr->ether_addr_octet[0],
         (uint8_t)mac_addr->ether_addr_octet[1],
         (uint8_t)mac_addr->ether_addr_octet[2],
         (uint8_t)mac_addr->ether_addr_octet[3],
         (uint8_t)mac_addr->ether_addr_octet[4],
         (uint8_t)mac_addr->ether_addr_octet[5]);
   sprintf((char*)DA,"%02x:%02x:%02x:%02x:%02x:%02x",
            0xD0,0x27,0x88,0xBC,0xA8,0xE9);
*/
   /*printf("DA: ");
   for (int i=0;i<6;i++){
      printf("%c", DA[i]);
      //DA+=(uint8_t)1;
   }
   printf("\nSA: ");
   for (int i=0;i<6;i++){
      printf("%c", SA[i]);
      //SA+=(uint8_t)1;
   }
   printf("\n");*/
   eth_t = libnet_build_ethernet (
      DA, SA, ETHERTYPE_IP, NULL, 0, l, eth_t);

   if(!eth_t)
   {
      fprintf(stderr,"libnet_build_ethernet() failed: %s\n",errbuf);
      goto bad;
   }

   return 1;
bad:
   return -1;
}

uint16_t buildICMP_h(libnet_t *l, uint32_t dip, uint8_t *PAYLOAD)
{
   uint16_t seqn, id, bytes_w;
   libnet_seed_prand(l);
   id= (uint16_t)libnet_get_prand(LIBNET_PR16);
   seqn =1;
   
   icmp_t = libnet_build_icmpv4_echo(ICMP_ECHO,
      0, 0, id, seqn, PAYLOAD, PAYLOAD_L, l, icmp_t);
   if(icmp_t == -1)
   {
      fprintf(stderr,"libnet_build_ethernet() failed: %s\n",errbuf);
      goto bad;
   }
   ip_t = libnet_autobuild_ipv4(
      LIBNET_IPV4_H+LIBNET_ICMPV4_ECHO_H+PAYLOAD_L,
      IPPROTO_ICMP, dip,l);
   if(ip_t == -1)
   {
      fprintf(stderr,"libnet_autobuild_ipv4() failed: %s\n",errbuf);
      goto bad;
   }
   
   bytes_w = libnet_write(l);

   if(bytes_w == -1)
   {
      fprintf(stderr,"libnet_write() failed: %s\n",errbuf);
      goto bad;
   }
   
   return 1;
bad:
   return -1;
}

uint16_t makeTCP(libnet_t *l, uint8_t *SA, uint8_t *DA,
   uint16_t seqn, uint16_t sport, uint16_t dport, 
   uint32_t sip, uint32_t dip, uint8_t *PAYLOAD, int ack)
{
   uint16_t tag_t, bytes_w, control;

   if(ack)
      control = (9<<1);
   else
      control = (1<<1);

   tcp_t = libnet_build_tcp (
         sport, dport, seqn, 0,
         control, 8192, 0x0, 0,
         LIBNET_TCP_H+PAYLOAD_L,
         PAYLOAD,
         PAYLOAD_L,
         l,
         tcp_t
   );
   if(!tcp_t)
   {
      fprintf(stderr,"libnet_build_tcp() failed: %s\n",errbuf);
      goto bad;
   }
   tag_t = buildIP_h(l,
      sip, dip,IPPROTO_TCP);
   if(!tag_t)
   {
      fprintf(stderr,"libnet_build_ip() failed: %s\n",errbuf);
      goto bad;
   }
   
   tag_t = buildETH_h(l,DA, SA);
   if(!tag_t)
   {
      fprintf(stderr,"libnet_build_eth() failed: %s\n",errbuf);
      goto bad;
   }

   bytes_w = libnet_write(l);
   if(bytes_w == -1)
   {
      fprintf(stderr,"libnet_write() failed: %s\n",errbuf);
      goto bad;
   }

   return (seqn=LIBNET_IPV4_H+LIBNET_TCP_H+PAYLOAD_L+1);
bad:
   return -1;
}

void printData(uint8_t *DA, uint8_t *SA, 
      uint32_t dip, uint32_t sip)
{
   uint32_t res = 0xffffffff; 
   printf("SA: ");
   for(int i=0;i<6;i++)
   {
      printf("%02x:",*SA);
      SA+=(uint8_t)1;
   }
   printf("DA: ");
   for(int i=0;i<6;i++)
   {
      printf("%02x:",*DA);
      DA+=(uint8_t)1;
   }
   printf("dip: %3d.%3d.%3d.%3d\n",
      (uint8_t)(dip&res>>24),
      (uint8_t)((dip&(res>>16))>>8), 
      (uint8_t)((dip&(res>>8))>>16),
      (uint8_t)(dip>>24));
   printf("sip: %3d.%3d.%3d.%3d\n",
      (uint8_t)(sip&res>>24),
      (uint8_t)((sip&(res>>16))>>8), 
      (uint8_t)((sip&(res>>8))>>16),
      (uint8_t)(sip>>24));

   printf("ip_t: %d, tcp_t: %d, eth_t: %d\n",
      ip_t, tcp_t, eth_t);

   return;
}

int main()
{
   libnet_t *l;
   uint32_t sip, dip;
   uint16_t sp = 80, dp=8080, seq[2*NUM_TCP_PKTS],seqn=0, seqnack=0;
   uint8_t SA[6], DA[6];
   uint8_t PAYLOAD[PAYLOAD_L];
   int iter = 0;
   uint16_t tag_t;
   //libnet_ptag_t icmp_eth_t, icmp_ip_t, icmp_t;
   //uint8_t *packet;
   //int packet_icmp_s = LIBNET_ETH_H+LIBNET_IPV4_H+LIBNET_ICMP_MASK_H;
   //struct libnet_link_int *network;
   //libnet_ptag_t arp_t;
  
   memset(seq,0,NUM_TCP_PKTS*sizeof(uint16_t));
   memset(PAYLOAD,0,PAYLOAD_L);

   sprintf((char*)DA,"%02x:%02x:%02x:%02x:%02x:%02x",
            0xD0,0x27,0x88,0xBC,0xA8,0xE9);
            //0x0,0x4E,0x46,0x32,0x43,0x0);
   l=libnet_init(LIBNET_LINK, device, errbuf);
   if(!l)
   {  
      fprintf(stderr,"libnet_init() failed: %s\n",errbuf);
      goto bad;
   }

   getData(l,&sip,&dip,SA);
   printData(SA,DA,dip,sip);
   return 0;

   //icmp_eth_t=icmp_ip_t=icmp_t=tcp_t=ip_t=eth_t= LIBNET_PTAG_INITIALIZER;
   tcp_t=ip_t=eth_t= LIBNET_PTAG_INITIALIZER;
   do
   {
      for(int i=0;i<NUM_TCP_PER_ITER;i++)
      {
         seq[seqn] = makeTCP(l, SA, DA,
            seq[seqn], sp, dp, sip, dip, PAYLOAD, 0);
         if(seq[seqn] == -1)
            goto bad;
         seqn++;
         sleep(1);
      }
      /*seq[seqnack] = makeTCP(l, SA, DA,
         seq[seqn], sp, dp, sip, dip, PAYLOAD, 1);*/
      seq[seqnack] = makeTCP(l, DA, SA,
         seq[seqn], dp, sp, dip, sip, PAYLOAD, 1);
      if(seq[seqnack] == -1)
         goto bad;
      seqnack++;
      sleep(1);
   } while(iter++ < NUM_ITER);

   libnet_destroy(l);

   l=libnet_init(LIBNET_LINK, device, errbuf);
   if(!l)
   {  
      fprintf(stderr,"libnet_init() failed: %s\n",errbuf);
      goto bad;
   }
   tag_t = buildICMP_h(l, dip, PAYLOAD); 
   if(!tag_t)
   {
      fprintf(stderr,"libnet_buildIP_h() failed: %s\n",errbuf);
      goto bad;
   }
   tag_t = buildIP_h(l,sip,dip,IPPROTO_TCP); 
   if(!tag_t)
   {
      fprintf(stderr,"libnet_buildIP_h() failed: %s\n",errbuf);
      goto bad;
   }
   tag_t = buildETH_h(l,SA,DA); 
   if(!tag_t)
   {
      fprintf(stderr,"libnet_buildETH_h() failed: %s\n",errbuf);
      goto bad;
   }

   libnet_destroy(l);
   return 0;
   
bad:
   libnet_destroy(l);
   return -1;
}
