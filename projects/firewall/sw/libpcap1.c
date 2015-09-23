#include <stdio.h>
#include <pcap.h>

int main(int argc, char **argv)
{
   pcap_t *handle;
   char *dev = argv[1], errbuf[PCAP_ERRBUF_SIZE];
   dev=pcap_lookupdev(errbuf);
   if(dev == NULL)
   {
      return(-2);
   }
   printf("Device: %s\n", dev);
   handle=pcap_open_live(dev,BUFSIZ,1,1000,errbuf);
   if(handle == NULL)
   {
      fprintf("Error in pcap_open\n");
      goto bad;
   }
   
   return 0;

bad:
   return -1;
}
