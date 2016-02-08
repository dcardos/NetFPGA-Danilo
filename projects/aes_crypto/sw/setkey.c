/* ****************************************************************************
 * $Id: regwrite.c 2267 2007-09-18 00:09:14Z grg $
 *
 * Module: regwrite.c
 * Project: NetFPGA 2 Register Access
 * Description: Write a register
 *
 * Change history:
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#include <net/if.h>

#include "nf2.h"
#include "nf2util.h"

#define PATHLEN		80

#define DEFAULT_IFACE	"nf2c0"

#include "../lib/C/reg_defines_crypto_nic.h"

/* Global vars */
static struct nf2device nf2;

int main(int argc, char *argv[])
{
	unsigned value;

	nf2.device_name = DEFAULT_IFACE;

	// Open the interface if possible
	if (check_iface(&nf2))
	{
		exit(1);
	}
	if (openDescriptor(&nf2))
	{
		exit(1);
	}

	// FIXME: Write the key -- FIXED(?)
	sscanf(argv[1], "%x", &value);
	writeReg(&nf2, CRYPTO_KEY_REG, value);

	closeDescriptor(&nf2);

	return 0;
}
