#
# $Id: Makefile 2957 2007-11-17 00:42:42Z g9coving $
#

CFLAGS = -g -I$(COMMON)
CC = gcc

# Location of binary files
BINDIR ?= /usr/local/bin

INSTALL_PREFIX ?= /usr/local

# Location of common files
COMMON = $(NF_ROOT)/lib/C/common

all : common getkey setkey

# Add Xen proxy client library for register access
ifeq ($(TARGET),xen)

    getkey : getkey.o $(INSTALL_PREFIX)/lib/libreg_proxy.so $(COMMON)/reg_defines.h
    setkey : setkey.o $(INSTALL_PREFIX)/lib/libreg_proxy.so $(COMMON)/reg_defines.h

else

    getkey : getkey.o $(COMMON)/nf2util.o
    setkey : setkey.o $(COMMON)/nf2util.o

endif


common:
	$(MAKE) -C $(COMMON)

clean :
	rm -rf getkey setkey *.o

install: getkey setkey
	install getkey $(BINDIR)
	install setkey $(BINDIR)

.PHONY: all clean install

