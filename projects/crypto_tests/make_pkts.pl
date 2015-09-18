#!/usr/local/bin/perl -w
# make_pkts.pl
#
#
# 

use NF:PacketGen;
use NF::PacketLib;
use SimLib;
use CryptoNICLib;

use reg_defines_crypto_nic;

$delay = 2000;
$batch = 0;
nf_set_environment( { PORT_MODE => 'PHYSICAL', MAX_PORTS => 4 } );

# use strict AFTER the $delay, $batch and %reg are declared
use strict;
use vars qw($delay $batch %reg);

my $MAC_1 = '00:ca:fe:00:00:01';
my $MAC_2 = '00:ca:fe:00:00:02';
my $MAC_3 = '00:ca:fe:00:00:03';
my $MAC_4 = '00:ca:fe:00:00:04';

my $IP_1 = '192.168.1.1';
my $IP_2 = '192.168.2.1';
my $IP_3 = '192.168.3.1';
my $IP_4 = '192.168.4.1';

# Prepare the DMA and enable interrupts
prepare_DMA('@3.9us');
enable_interrupts(0);

my $length = 100;
my $TTL = 30;
my $DA = 0;
my $SA = 0;
my $dst_ip = 0;
my $src_ip = 0;
my $pkt;

#
###############################
#

# Enable encryption
my $key = 0x55aaff33;

$delay = 0;
nf_PCI_write32($delay, 0, CRYPTO_KEY_REG(), $key);

#
###############################
#

# Send an IP packet in port 1
$delay = '@10us';
$length = 64;
$DA = $MAC_1;
$SA = $MAC_2;
$dst_ip = $IP_1;
$src_ip = $IP_2;
$pkt = make_IP_pkt($length, $DA, $SA, $TTL, $dst_ip, $src_ip);
nf_dma_data_in($length, $delay, 1,  $pkt);

# Expect the packet on all other ports
my $encrypted_pkt = encrypt_pkt($key, $pkt);
nf_expected_packet(1, $length, $encrypted_pkt);

# *********** Finishing Up - need this in all scripts ! ****************************
my $t = nf_write_sim_files();
print  "--- make_pkts.pl: Generated all configuration packets.\n";
printf "--- make_pkts.pl: Last packet enters system at approx %0d microseconds.\n",($t/1000);
if (nf_write_expected_files()) {
  die "Unable to write expected files\n";
}

nf_create_hardware_file('LITTLE_ENDIAN');
nf_write_hardware_file('LITTLE_ENDIAN');
