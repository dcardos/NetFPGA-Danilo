#!/usr/local/bin/perl -w
# make_pkts.pl
#
#
#

$delay = '@8us';
$batch = 0;

use NF::PacketGen;
use NF::PacketLib;
#use CPCI_Lib;
use SimLib;

#use reg_defines_openflow_switch;
use reg_defines_novo_reference_nic;

nf_set_environment( { PORT_MODE => 'PHYSICAL', MAX_PORTS => 4 } );
nf_add_port_rule(1, 'UNORDERED');
nf_add_port_rule(2, 'UNORDERED');
nf_add_port_rule(3, 'UNORDERED');
nf_add_port_rule(4, 'UNORDERED');

# use strict AFTER the $delay, $batch and %reg are declared
use strict;
use vars qw($delay $batch %reg);

#my %cpci_regs = CPCI_Lib::get_register_addresses();

# write 0 to CPCI_INTERRUPT_MASK_REG()
#nf_PCI_write32(0, $batch, CPCI_INTERRUPT_MASK_REG(), 0);

# Prepare the DMA and enable interrupts
prepare_DMA('@3.9us');
enable_interrupts(0);

####################################################################
# Write to the SRAM
#
#$delay = 1000;
my $var;
foreach (0..89) {
  NF::PacketGen::nf_PCI_write32($delay, 0, SRAM_BASE_ADDR() + ($_<<2), $_);
  #NF::PacketGen::nf_PCI_write32($delay, 0, (SRAM_BASE_ADDR() + ($_<<2)) | (2**18), $_);
  #$var = SRAM_BASE_ADDR()+($_<<2);
  #print "endereco escrita: $var\n"; 
}

foreach (0..89) {
  NF::PacketGen::nf_PCI_read32($delay, 0, SRAM_BASE_ADDR() + ($_<<2), $_);
  #NF::PacketGen::nf_PCI_write32($delay, 0, (SRAM_BASE_ADDR() + ($_<<2)) | (2**18), $_);
}

# *********** Finishing Up - need this in all scripts ! **********************
my $t = nf_write_sim_files();
print  "--- make_pkts.pl: Generated all configuration packets.\n";
printf "--- make_pkts.pl: Last packet enters system at approx %0d microseconds.\n",($t/1000);
if (nf_write_expected_files()) {
  die "Unable to write expected files\n";
}

nf_create_hardware_file('LITTLE_ENDIAN');
nf_write_hardware_file('LITTLE_ENDIAN');


