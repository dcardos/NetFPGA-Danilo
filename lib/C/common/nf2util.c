/*
 * Copyright (c) 2006-2011 The Board of Trustees of The Leland Stanford Junior
 * University
 *
 * Author: Glen Gibb <grg@stanford.edu>
 *
 * We are making the NetFPGA tools and associated documentation (Software)
 * available for public use and benefit with the expectation that others will
 * use, modify and enhance the Software and contribute those enhancements back
 * to the community. However, since we would like to make the Software
 * available for broadest use, with as few restrictions as possible permission
 * is hereby granted, free of charge, to any person obtaining a copy of this
 * Software) to deal in the Software under the copyrights without restriction,
 * including without limitation the rights to use, copy, modify, merge,
 * publish, distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to the
 * following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * The name and trademarks of copyright holder(s) may NOT be used in
 * advertising or publicity pertaining to the Software or any derivatives
 * without specific, written prior permission.
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <sys/socket.h>
#include <sys/ioctl.h>

#include <net/if.h>

#include <arpa/inet.h>

#include "nf2.h"
#include "nf2util.h"

#include "reg_defines.h"

/* Function declarations */
static int readRegNet(struct nf2device *nf2, unsigned reg, unsigned *val);
static int readRegFile(struct nf2device *nf2, unsigned reg, unsigned *val);
static int writeRegNet(struct nf2device *nf2, unsigned reg, unsigned val);
static int writeRegFile(struct nf2device *nf2, unsigned reg, unsigned val);
static void readStr(struct nf2device *nf2, unsigned regStart, unsigned len, char *dst);

/*
 * readReg - read a register
 */
int readReg(struct nf2device *nf2, unsigned reg, unsigned *val)
{
	if (nf2->net_iface)
	{
		return readRegNet(nf2, reg, val);
	}
	else
	{
		return readRegFile(nf2, reg, val);
	}
}

/*
 * readRegNet - read a register, using a network socket
 */
static int readRegNet(struct nf2device *nf2, unsigned reg, unsigned *val)
{
        struct ifreq ifreq;
	struct nf2reg nf2reg;
	int ret;

	nf2reg.reg = reg;

	/* Set up the ifreq structure */
	ifreq.ifr_data = (char *)&nf2reg;
        strncpy(ifreq.ifr_ifrn.ifrn_name, nf2->device_name, IFNAMSIZ);
        /*if (setsockopt(nf2->fd, SOL_SOCKET, SO_BINDTODEVICE,
                       (char *)&ifreq, sizeof(ifreq)) < 0) {
                perror("sendpacket: setting SO_BINDTODEVICE");
                return -1;
        } */

	/* Call the ioctl */
	if ((ret = ioctl(nf2->fd, SIOCREGREAD, &ifreq)) == 0)
	{
		*val = nf2reg.val;
		return 0;
	}
	else
	{
                perror("sendpacket: ioctl failed");
                return -1;
	}
}

/*
 * readRegFile - read a register, using a file descriptor
 */
static int readRegFile(struct nf2device *nf2, unsigned reg, unsigned *val)
{
        struct ifreq ifreq;
	struct nf2reg nf2reg;
	int ret;

	nf2reg.reg = reg;

	/* Call the ioctl */
	if ((ret = ioctl(nf2->fd, SIOCREGREAD, &nf2reg)) == 0)
	{
		*val = nf2reg.val;
		return 0;
	}
	else
	{
                perror("sendpacket: ioctl failed");
                return -1;
	}
}


/*
 * writeReg - write a register
 */
int writeReg(struct nf2device *nf2, unsigned reg, unsigned val)
{
	if (nf2->net_iface)
	{
		return writeRegNet(nf2, reg, val);
	}
	else
	{
		return writeRegFile(nf2, reg, val);
	}
}


/*
 * writeRegNet - write a register, using a network socket
 */
static int writeRegNet(struct nf2device *nf2, unsigned reg, unsigned val)
{
        struct ifreq ifreq;
	struct nf2reg nf2reg;
	int ret;

	nf2reg.reg = reg;
	nf2reg.val = val;

	/* Set up the ifreq structure */
	ifreq.ifr_data = (char *)&nf2reg;
        strncpy(ifreq.ifr_ifrn.ifrn_name, nf2->device_name, IFNAMSIZ);
        /*if (setsockopt(nf2->fd, SOL_SOCKET, SO_BINDTODEVICE,
                       (char *)&ifreq, sizeof(ifreq)) < 0) {
                perror("sendpacket: setting SO_BINDTODEVICE");
                return -1;
        } */

	/* Call the ioctl */
	if ((ret = ioctl(nf2->fd, SIOCREGWRITE, &ifreq)) == 0)
	{
		return 0;
	}
	else
	{
                perror("sendpacket: ioctl failed");
                return -1;
	}
}


/*
 * writeRegFile - write a register, using a file descriptor
 */
static int writeRegFile(struct nf2device *nf2, unsigned reg, unsigned val)
{
        struct ifreq ifreq;
	struct nf2reg nf2reg;
	int ret;

	nf2reg.reg = reg;
	nf2reg.val = val;

	/* Call the ioctl */
	if ((ret = ioctl(nf2->fd, SIOCREGWRITE, &nf2reg)) == 0)
	{
		return 0;
	}
	else
	{
                perror("sendpacket: ioctl failed");
                return -1;
	}
}

/*
 * Check the iface name to make sure we can find the interface
 */
int check_iface(struct nf2device *nf2)
{
	struct stat buf;
	char filename[PATHLEN];

	/* See if we can find the interface name as a network device */

	/* Test the length first of all */
	if (strlen(nf2->device_name) > IFNAMSIZ)
	{
		fprintf(stderr, "Interface name is too long: %s\n", nf2->device_name);
		return -1;
	}

	/* Check for /sys/class/net/iface_name */
	strcpy(filename, "/sys/class/net/");
	strcat(filename, nf2->device_name);
	if (stat(filename, &buf) == 0)
	{
		fprintf(stderr, "Found net device: %s\n", nf2->device_name);
		nf2->net_iface = 1;
		return 0;
	}

	/* Check for /dev/iface_name */
	strcpy(filename, "/dev/");
	strcat(filename, nf2->device_name);
	if (stat(filename, &buf) == 0)
	{
		fprintf(stderr, "Found dev device: %s\n", nf2->device_name);
		nf2->net_iface = 0;
		return 0;
	}

	fprintf(stderr, "Can't find device: %s\n", nf2->device_name);
	return -1;
}

/*
 * Open the descriptor associated with the device name
 */
int openDescriptor(struct nf2device *nf2)
{
        struct ifreq ifreq;
	char filename[PATHLEN];
	struct sockaddr_in address;
	int i;
	struct sockaddr_in *sin = (struct sockaddr_in *) &ifreq.ifr_addr;
	int found = 0;

	if (nf2->net_iface)
	{
		/* Open a network socket */
		nf2->fd = socket(AF_INET, SOCK_DGRAM, 0);
		if (nf2->fd == -1)
		{
                	perror("socket: creating socket");
                	return -1;
		}
		else
		{
			/* Root can bind to a network interface.
			   Non-root has to bind to a network address. */
			if (geteuid() == 0)
			{
				strncpy(ifreq.ifr_ifrn.ifrn_name, nf2->device_name, IFNAMSIZ);
				if (setsockopt(nf2->fd, SOL_SOCKET, SO_BINDTODEVICE,
					(char *)&ifreq, sizeof(ifreq)) < 0) {
					perror("setsockopt: setting SO_BINDTODEVICE");
					return -1;
				}

			}
		}
	}
	else
	{
		strcpy(filename, "/dev/");
		strcat(filename, nf2->device_name);
		nf2->fd = fileno(fopen(filename, "w+"));
		if (nf2->fd == -1)
		{
                	perror("fileno: creating descriptor");
                	return -1;
		}
	}

	return 0;
}

/*
 * Close the descriptor associated with the device name
 */
int closeDescriptor(struct nf2device *nf2)
{
        struct ifreq ifreq;
	char filename[PATHLEN];

	if (nf2->net_iface)
	{
		close(nf2->fd);
	}
	else
	{
		close(nf2->fd);
	}

	return 0;
}

