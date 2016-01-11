#
# $Id: Makefile 6042 2010-04-01 05:59:23Z grg $
#

CFLAGS = -g
CC = gcc
LDFLAGS = -lncurses

all : registers counterdump

registers:
	$(NF_ROOT)/bin/nf_register_gen.pl --project reference_nic

counterdump : counterdump.o ../../../lib/C/common/nf2util.o ../../../lib/C/common/nf2util_proxy_common.o ../lib/C/reg_defines_reference_nic.h

clean :
	rm -f counterdump *.o ../../../lib/C/common/nf2util.o ../../../lib/C/common/nf2util_proxy_common.o
	rm -f libnetuno libnetunoack

libnetuno : libnetuno.c
	gcc libnetuno.c -I/usr/include/libnet -o libnetuno /usr/lib/libnet.so

libnetunoack : libnetunoack.c
	gcc libnetunoack.c -I/usr/include/libnet -o libnetunoack /usr/lib/libnet.so

libnetquad : libnetquad.c
	gcc libnetquad.c -I/usr/include/libnet -o libnetquad /usr/lib/libnet.so

libnetquadack : libnetquadack.c
	gcc libnetquadack.c -I/usr/include/libnet -o libnetquadack /usr/lib/libnet.so

libnetmult : libnetmult.c
	gcc libnetmult.c -Wall -I/usr/include/libnet -o libnetmult /usr/lib/libnet.so

codump : counterdump.c
	gcc -Wall counterdump.c -I/usr/include/ -o counterdump /root/netfpga/lib/C/common/libnf2.so

cdump : cdump.c
	gcc -Wall cdump.c -I/usr/include/ -o cdump /root/netfpga/lib/C/common/libnf2.so

nffw : nffw.c
	gcc -Wall nffw.c -std=gnu99 -I/usr/include/ -o nffw /root/netfpga/lib/C/common/libnf2.so

install:

.PHONY: all clean install
