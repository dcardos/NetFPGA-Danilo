#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <net/ethernet.h>
#include <netinet/ip.h>
#include <netinet/udp.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <libnet.h> 
#include <syslog.h>

#define NUM_PKTS 4
#define sport 80
#define dport 20
#define PAYLOAD_L 20

libnet_t *l;
int seq[NUM_PKTS];
char DA[18], SA[18], payload[PAYLOAD_L];
uint32_t sIP, dIP;
uint16_t sp, dp;
struct libnet_ether_addr *mac_addr;

int buildTCP(int ack, int seqn){
   uint32_t temp;
   uint16_t control;
   libnet_ptag_t tcpTag;
   if(ack){
      temp = sIP;
      sIP=dIP;
      dIP=temp;
      control = (9<<1);
   }
   else
      control = (1<<1);
   memset(payload,8,PAYLOAD_L);
   tcpTag = libnet_build_tcp(
      sp, 
      dp, 
      seqn, 
      ack, 
      control, 
      8192, 
      0x0, 
      0, 
      LIBNET_TCP_H+PAYLOAD_L, 
      payload, 
      PAYLOAD_L,
      l, 
      0);

   return tcpTag;
}

int buildUDP(int ack){
   libnet_ptag_t udpTag;
   uint32_t temp;
   if(ack){
      temp = sIP;
      sIP=dIP;
      dIP=temp;
   }
   memset(payload,8,PAYLOAD_L);
   udpTag = libnet_build_udp(
      sp, 
      dp, 
      LIBNET_UDP_H+PAYLOAD_L, 
      0, 
      NULL, 
      (long)0, 
      l, 
      0);

   return udpTag;
}

int buildIP(int ack, int proto){
   uint32_t temp;
   libnet_ptag_t ipTag;
   if(ack){
      temp = sIP;
      sIP=dIP;
      dIP=temp;
   }

   ipTag = libnet_build_ipv4(
      LIBNET_IPV4_H+LIBNET_TCP_H+PAYLOAD_L,  
      0,   //tos            
      242, //id number (zero para kernel setar endereço auto)           
      0,   //flags de fragmentação (0 -> sem frag)          
      64,  //ttl
      proto, //protocolo    
      0,     //checksum (0 para kernel ajustá-lo auto)
      sIP,       
      dIP,      
      NULL,    
      0,      
      l,     
      0); 
   
   return ipTag;
}

int buildEth(int ack){
   libnet_ptag_t etherTag;
   char temp[18];
   if(ack){
      memcpy(temp,DA,18);
      memcpy(DA,SA,18);
      memcpy(SA,temp,18);
   }
   etherTag = libnet_build_ethernet(
      DA,
      SA,
      ETHERTYPE_IP,    
      NULL,       
      0,       
      l,      
      0);    

   return etherTag;
}

void getDados(){
   sIP = libnet_get_ipaddr4(l);
   //dIP = (192<<24) | (168<<16) | (200<<8) | (2);
   dIP = (192) | (168<<8) | (200<<16) | (2<<24);
   mac_addr = libnet_get_hwaddr(l);
   sprintf(SA,"%02x:%02x:%02x:%02x:%02x:%02x", 
      mac_addr->ether_addr_octet[0],
      mac_addr->ether_addr_octet[1],
      mac_addr->ether_addr_octet[2],
      mac_addr->ether_addr_octet[3],
      mac_addr->ether_addr_octet[4],
      mac_addr->ether_addr_octet[5]);
}

int main(int argc, char **argv)
{
   int i;
   libnet_ptag_t ipTag, etherTag, tcpTag, c;
   char errbuf[LIBNET_ERRBUF_SIZE]; 
  
   sprintf(DA,"%02x:%02x:%02x:%02x:%02x:%02x",
         0x0,0xB,0xB,0xB,0xB,0xB); 
   memset(seq,0,NUM_PKTS);

   l = libnet_init(LIBNET_LINK_ADV, "nf2c0", errbuf);
   if(l == NULL)
   {
      printf("erro em init()\n");
      goto bad;
   }
   getDados();
   for(i=0;i<NUM_PKTS;i++){
      tcpTag = buildTCP(0,seq[i]);   
      if (tcpTag == -1)
         goto bad;
      ipTag = buildIP(0,IPPROTO_TCP);   
      if (ipTag == -1)
         goto bad;
      etherTag = buildEth(0);   
      if (etherTag == -1)
         goto bad;
      c = libnet_write(l);
      if(c == -1)
         goto bad;
      libnet_write(l);
      libnet_destroy(l);
      seq[i] = LIBNET_IPV4_H+LIBNET_TCP_H+PAYLOAD_L+1; 
      l = libnet_init(LIBNET_LINK_ADV, "nf2c0", errbuf);
      getDados();
   }
//ack
   for(i=0;i<NUM_PKTS;i++){
      tcpTag = buildTCP(1,seq[i]);   
      if (tcpTag == -1)
         goto bad;
      ipTag = buildIP(1,IPPROTO_TCP);   
      if (ipTag == -1)
         goto bad;
      etherTag = buildEth(1);   
      if (etherTag == -1)
         goto bad;
      c = libnet_write(l);
      if(c == -1)
         goto bad;
      libnet_write(l);
      libnet_destroy(l);
      seq[i] = seq[i]+LIBNET_IPV4_H+LIBNET_TCP_H+PAYLOAD_L+1; 
      l = libnet_init(LIBNET_LINK_ADV, "nf2c0", errbuf);
      getDados();
   }
//ack do ack   
   for(i=0;i<NUM_PKTS;i++){
      tcpTag = buildTCP(0,seq[i]);   
      if (tcpTag == -1)
         goto bad;
      ipTag = buildIP(0,IPPROTO_TCP);   
      if (ipTag == -1)
         goto bad;
      etherTag = buildEth(0);   
      if (etherTag == -1)
         goto bad;
      c = libnet_write(l);
      if(c == -1)
         goto bad;
      libnet_write(l);
      libnet_destroy(l);
      seq[i] = seq[i]+LIBNET_IPV4_H+LIBNET_TCP_H+PAYLOAD_L+1; 
      l = libnet_init(LIBNET_LINK_ADV, "nf2c0", errbuf);
      getDados();
   }

   for(i=0;i<NUM_PKTS;i++){
      tcpTag = buildUDP(0);   
      if (tcpTag == -1)
         goto bad;
      ipTag = buildIP(0,IPPROTO_UDP);   
      if (ipTag == -1)
         goto bad;
      etherTag = buildEth(0);   
      if (etherTag == -1)
         goto bad;
      c = libnet_write(l);
      if(c == -1)
         goto bad;
      libnet_write(l);
      libnet_destroy(l);
      seq[i] = seq[i]+LIBNET_IPV4_H+LIBNET_TCP_H+PAYLOAD_L+1; 
      l = libnet_init(LIBNET_LINK_ADV, "nf2c0", errbuf);
      getDados();
   }

   libnet_destroy(l);
   return 0;
bad:
   libnet_destroy(l);
   return -1;
}


