/********************************************************
 *
 * C register defines file
 * Project: Selftest (selftest)
 * Description: NetFPGA selftest -- exercises all major subsystems of the board
 *
 ********************************************************/

#ifndef _REG_DEFINES_SELFTEST_
#define _REG_DEFINES_SELFTEST_

/* ========= Version Information ========= */

#define DEVICE_ID          5
#define DEVICE_MAJOR       1
#define DEVICE_MINOR       1
#define DEVICE_REVISION    0
#define DEVICE_PROJ_DIR    "selftest"
#define DEVICE_PROJ_NAME   "Selftest"
#define DEVICE_PROJ_DESC   "NetFPGA selftest -- exercises all major subsystems of the board"


/* ========= Constants ========= */

// ===== File: lib/verilog/core/common/xml/global.xml =====

// Maximum number of phy ports
#define MAX_PHY_PORTS                  4

// PCI address bus width
#define PCI_ADDR_WIDTH                 32

// PCI data bus width
#define PCI_DATA_WIDTH                 32

// PCI byte enable bus width
#define PCI_BE_WIDTH                   4

// CPCI--CNET address bus width. This is byte addresses even though bottom bits are zero.
#define CPCI_CNET_ADDR_WIDTH           27

// CPCI--CNET data bus width
#define CPCI_CNET_DATA_WIDTH           32

// CPCI--Virtex address bus width. This is byte addresses even though bottom bits are zero.
#define CPCI_NF2_ADDR_WIDTH            27

// CPCI--Virtex data bus width
#define CPCI_NF2_DATA_WIDTH            32

// DMA data bus width
#define DMA_DATA_WIDTH                 32

// DMA control bus width
#define DMA_CTRL_WIDTH                 4

// CPCI debug bus width
#define CPCI_DEBUG_DATA_WIDTH          29

// SRAM address width
#define SRAM_ADDR_WIDTH                19

// SRAM data width
#define SRAM_DATA_WIDTH                36

// DRAM address width
#define DRAM_ADDR_WIDTH                24


// ===== File: lib/verilog/core/common/xml/nf_defines.xml =====

// Clock period of 125 MHz clock in ns
#define FAST_CLK_PERIOD                8

// Clock period of 62.5 MHz clock in ns
#define SLOW_CLK_PERIOD                16

// Header value used by the IO queues
#define IO_QUEUE_STAGE_NUM             0xff

// Data path data width
#define DATA_WIDTH                     64

// Data path control width
#define CTRL_WIDTH                     8


// ===== File: lib/verilog/core/utils/xml/device_id_reg.xml =====

// Total number of registers
#define DEV_ID_NUM_REGS                64

// Number of non string registers
#define DEV_ID_NON_STR_REGS            7

// Length of MD5 sum (bits)
#define DEV_ID_MD5SUM_LENGTH           128

// Project directory length (in words, not chars)
#define DEV_ID_PROJ_DIR_WORD_LEN       16

// Project directory length (in bytes/chars)
#define DEV_ID_PROJ_DIR_BYTE_LEN       64

// Project directory length (in bits)
#define DEV_ID_PROJ_DIR_BIT_LEN        512

// Project name length (in words, not chars)
#define DEV_ID_PROJ_NAME_WORD_LEN      16

// Project name length (in bytes/chars)
#define DEV_ID_PROJ_NAME_BYTE_LEN      64

// Project name length (in bits)
#define DEV_ID_PROJ_NAME_BIT_LEN       512

// Device description length (in words, not chars)
#define DEV_ID_PROJ_DESC_WORD_LEN      25

// Device description length (in bytes/chars)
#define DEV_ID_PROJ_DESC_BYTE_LEN      100

// Device description length (in bits)
#define DEV_ID_PROJ_DESC_BIT_LEN       800

// MD5 identifier (v1): MD5 sum of the string "device_id.v"
#define DEV_ID_MD5_VALUE_V1            0x4071736d8a603d2b4d55f62989a73c95
#define DEV_ID_MD5_VALUE_V1_0          0x4071736d
#define DEV_ID_MD5_VALUE_V1_1          0x8a603d2b
#define DEV_ID_MD5_VALUE_V1_2          0x4d55f629
#define DEV_ID_MD5_VALUE_V1_3          0x89a73c95

// MD5 identifier (v2): MD5 sum of the string "device_id.v:v2"
#define DEV_ID_MD5_VALUE_V2            0x5e461ffe439725c9279a22a1855f6c53
#define DEV_ID_MD5_VALUE_V2_0          0x5e461ffe
#define DEV_ID_MD5_VALUE_V2_1          0x439725c9
#define DEV_ID_MD5_VALUE_V2_2          0x279a22a1
#define DEV_ID_MD5_VALUE_V2_3          0x855f6c53

// Total number of registers (v1)
#define DEV_ID_NUM_REGS_V1             64

// Number of non string registers (v1)
#define DEV_ID_NON_STR_REGS_V1         7

// Project name length (v1: in words, not chars)
#define DEV_ID_PROJ_NAME_WORD_LEN_V1   25

// Project name length (v1: in bytes/chars)
#define DEV_ID_PROJ_NAME_BYTE_LEN_V1   100

// Project name length (v1: in bits)
#define DEV_ID_PROJ_NAME_BIT_LEN_V1    800


// ===== File: projects/selftest/include/dram_test.xml =====

// Offset between consecutive error log entries
#define DRAM_TEST_LOG_OFFSET           0x00000020

// Number of DRAM test patterns
#define DRAM_TEST_NUM_PATTERNS         5


// ===== File: projects/selftest/include/phy_test.xml =====

// Number of different test patterns
#define PHY_TEST_NUM_PATTERNS          5


// ===== File: projects/selftest/include/serial_test.xml =====

// Mask to select only the error count (after shifting)
#define SERIAL_TEST_ERROR_COUNT_MASK   0x0000ffff


// ===== File: projects/selftest/include/sram_test.xml =====

#define SRAM_TEST_LOG_OFFSET           0x00000020

// Number of SRAM test patterns
#define SRAM_TEST_NUM_PATTERNS         5

// Number of SRAM devices on the board
#define SRAM_TEST_NUM_SRAMS            2


/* ========= Modules ========= */

// Module tags
#define CORE_BASE_ADDR              0x0000000
#define DEV_ID_BASE_ADDR            0x0400000
#define MDIO_BASE_ADDR              0x0440000
#define DMA_BASE_ADDR               0x0500000
#define REG_FILE_BASE_ADDR          0x0800000
#define REG_REFLECT_TEST_BASE_ADDR  0x0840000
#define CLOCK_TEST_BASE_ADDR        0x0880000
#define SERIAL_TEST_BASE_ADDR       0x08c0000
#define SRAM_TEST_BASE_ADDR         0x0900000
#define SRAM_MSB_BASE_ADDR          0x0940000
#define DRAM_TEST_BASE_ADDR         0x0980000
#define PHY_TEST_BASE_ADDR          0x09c0000
#define SRAM_BASE_ADDR              0x1000000
#define UDP_BASE_ADDR               0x2000000
#define DRAM_BASE_ADDR              0x4000000



/* ========== Registers ========== */

// Name: device_id (DEV_ID)
// Description: Device identification
// File: lib/verilog/core/utils/xml/device_id_reg.xml
#define DEV_ID_MD5_0_REG          0x0400000
#define DEV_ID_MD5_1_REG          0x0400004
#define DEV_ID_MD5_2_REG          0x0400008
#define DEV_ID_MD5_3_REG          0x040000c
#define DEV_ID_DEVICE_ID_REG      0x0400010
#define DEV_ID_VERSION_REG        0x0400014
#define DEV_ID_CPCI_ID_REG        0x0400018
#define DEV_ID_PROJ_DIR_0_REG     0x040001c
#define DEV_ID_PROJ_DIR_1_REG     0x0400020
#define DEV_ID_PROJ_DIR_2_REG     0x0400024
#define DEV_ID_PROJ_DIR_3_REG     0x0400028
#define DEV_ID_PROJ_DIR_4_REG     0x040002c
#define DEV_ID_PROJ_DIR_5_REG     0x0400030
#define DEV_ID_PROJ_DIR_6_REG     0x0400034
#define DEV_ID_PROJ_DIR_7_REG     0x0400038
#define DEV_ID_PROJ_DIR_8_REG     0x040003c
#define DEV_ID_PROJ_DIR_9_REG     0x0400040
#define DEV_ID_PROJ_DIR_10_REG    0x0400044
#define DEV_ID_PROJ_DIR_11_REG    0x0400048
#define DEV_ID_PROJ_DIR_12_REG    0x040004c
#define DEV_ID_PROJ_DIR_13_REG    0x0400050
#define DEV_ID_PROJ_DIR_14_REG    0x0400054
#define DEV_ID_PROJ_DIR_15_REG    0x0400058
#define DEV_ID_PROJ_NAME_0_REG    0x040005c
#define DEV_ID_PROJ_NAME_1_REG    0x0400060
#define DEV_ID_PROJ_NAME_2_REG    0x0400064
#define DEV_ID_PROJ_NAME_3_REG    0x0400068
#define DEV_ID_PROJ_NAME_4_REG    0x040006c
#define DEV_ID_PROJ_NAME_5_REG    0x0400070
#define DEV_ID_PROJ_NAME_6_REG    0x0400074
#define DEV_ID_PROJ_NAME_7_REG    0x0400078
#define DEV_ID_PROJ_NAME_8_REG    0x040007c
#define DEV_ID_PROJ_NAME_9_REG    0x0400080
#define DEV_ID_PROJ_NAME_10_REG   0x0400084
#define DEV_ID_PROJ_NAME_11_REG   0x0400088
#define DEV_ID_PROJ_NAME_12_REG   0x040008c
#define DEV_ID_PROJ_NAME_13_REG   0x0400090
#define DEV_ID_PROJ_NAME_14_REG   0x0400094
#define DEV_ID_PROJ_NAME_15_REG   0x0400098
#define DEV_ID_PROJ_DESC_0_REG    0x040009c
#define DEV_ID_PROJ_DESC_1_REG    0x04000a0
#define DEV_ID_PROJ_DESC_2_REG    0x04000a4
#define DEV_ID_PROJ_DESC_3_REG    0x04000a8
#define DEV_ID_PROJ_DESC_4_REG    0x04000ac
#define DEV_ID_PROJ_DESC_5_REG    0x04000b0
#define DEV_ID_PROJ_DESC_6_REG    0x04000b4
#define DEV_ID_PROJ_DESC_7_REG    0x04000b8
#define DEV_ID_PROJ_DESC_8_REG    0x04000bc
#define DEV_ID_PROJ_DESC_9_REG    0x04000c0
#define DEV_ID_PROJ_DESC_10_REG   0x04000c4
#define DEV_ID_PROJ_DESC_11_REG   0x04000c8
#define DEV_ID_PROJ_DESC_12_REG   0x04000cc
#define DEV_ID_PROJ_DESC_13_REG   0x04000d0
#define DEV_ID_PROJ_DESC_14_REG   0x04000d4
#define DEV_ID_PROJ_DESC_15_REG   0x04000d8
#define DEV_ID_PROJ_DESC_16_REG   0x04000dc
#define DEV_ID_PROJ_DESC_17_REG   0x04000e0
#define DEV_ID_PROJ_DESC_18_REG   0x04000e4
#define DEV_ID_PROJ_DESC_19_REG   0x04000e8
#define DEV_ID_PROJ_DESC_20_REG   0x04000ec
#define DEV_ID_PROJ_DESC_21_REG   0x04000f0
#define DEV_ID_PROJ_DESC_22_REG   0x04000f4
#define DEV_ID_PROJ_DESC_23_REG   0x04000f8
#define DEV_ID_PROJ_DESC_24_REG   0x04000fc

// Name: mdio (MDIO)
// Description: MDIO interface
// File: lib/verilog/core/io/mdio/xml/mdio.xml
#define MDIO_PHY_0_CONTROL_REG                                  0x0440000
#define MDIO_PHY_0_STATUS_REG                                   0x0440004
#define MDIO_PHY_0_PHY_ID_HI_REG                                0x0440008
#define MDIO_PHY_0_PHY_ID_LO_REG                                0x044000c
#define MDIO_PHY_0_AUTONEGOTIATION_ADVERT_REG                   0x0440010
#define MDIO_PHY_0_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG   0x0440014
#define MDIO_PHY_0_AUTONEG_EXPANSION_REG                        0x0440018
#define MDIO_PHY_0_AUTONEG_NEXT_PAGE_TX_REG                     0x044001c
#define MDIO_PHY_0_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG      0x0440020
#define MDIO_PHY_0_MASTER_SLAVE_CTRL_REG                        0x0440024
#define MDIO_PHY_0_MASTER_SLAVE_STATUS_REG                      0x0440028
#define MDIO_PHY_0_PSE_CTRL_REG                                 0x044002c
#define MDIO_PHY_0_PSE_STATUS_REG                               0x0440030
#define MDIO_PHY_0_MMD_ACCESS_CTRL_REG                          0x0440034
#define MDIO_PHY_0_MMD_ACCESS_STATUS_REG                        0x0440038
#define MDIO_PHY_0_EXTENDED_STATUS_REG                          0x044003c
#define MDIO_PHY_0_PHY_EXTENDED_CTRL_REG                        0x0440040
#define MDIO_PHY_0_PHY_EXTENDED_STATUS_REG                      0x0440044
#define MDIO_PHY_0_RX_ERROR_COUNT_REG                           0x0440048
#define MDIO_PHY_0_FALSE_CARRIER_SENSE_COUNT_REG                0x044004c
#define MDIO_PHY_0_RX_NOT_OK_COUNT_REG                          0x0440050
#define MDIO_PHY_0_EXPANSION_1_REG                              0x0440054
#define MDIO_PHY_0_EXPANSION_2_REG                              0x0440058
#define MDIO_PHY_0_EXPANSION_REG_ACCESS_REG                     0x044005c
#define MDIO_PHY_0_SHADOW_18_REG                                0x0440060
#define MDIO_PHY_0_AUX_STATUS_REG                               0x0440064
#define MDIO_PHY_0_INT_STATUS_REG                               0x0440068
#define MDIO_PHY_0_INT_MASK_REG                                 0x044006c
#define MDIO_PHY_0_SHADOW_1C_REG                                0x0440070
#define MDIO_PHY_0_SHADOW_1D_REG                                0x0440074
#define MDIO_PHY_0_TEST_REG                                     0x0440078
#define MDIO_PHY_0_RESERVED_REG                                 0x044007c
#define MDIO_PHY_1_CONTROL_REG                                  0x0440080
#define MDIO_PHY_1_STATUS_REG                                   0x0440084
#define MDIO_PHY_1_PHY_ID_HI_REG                                0x0440088
#define MDIO_PHY_1_PHY_ID_LO_REG                                0x044008c
#define MDIO_PHY_1_AUTONEGOTIATION_ADVERT_REG                   0x0440090
#define MDIO_PHY_1_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG   0x0440094
#define MDIO_PHY_1_AUTONEG_EXPANSION_REG                        0x0440098
#define MDIO_PHY_1_AUTONEG_NEXT_PAGE_TX_REG                     0x044009c
#define MDIO_PHY_1_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG      0x04400a0
#define MDIO_PHY_1_MASTER_SLAVE_CTRL_REG                        0x04400a4
#define MDIO_PHY_1_MASTER_SLAVE_STATUS_REG                      0x04400a8
#define MDIO_PHY_1_PSE_CTRL_REG                                 0x04400ac
#define MDIO_PHY_1_PSE_STATUS_REG                               0x04400b0
#define MDIO_PHY_1_MMD_ACCESS_CTRL_REG                          0x04400b4
#define MDIO_PHY_1_MMD_ACCESS_STATUS_REG                        0x04400b8
#define MDIO_PHY_1_EXTENDED_STATUS_REG                          0x04400bc
#define MDIO_PHY_1_PHY_EXTENDED_CTRL_REG                        0x04400c0
#define MDIO_PHY_1_PHY_EXTENDED_STATUS_REG                      0x04400c4
#define MDIO_PHY_1_RX_ERROR_COUNT_REG                           0x04400c8
#define MDIO_PHY_1_FALSE_CARRIER_SENSE_COUNT_REG                0x04400cc
#define MDIO_PHY_1_RX_NOT_OK_COUNT_REG                          0x04400d0
#define MDIO_PHY_1_EXPANSION_1_REG                              0x04400d4
#define MDIO_PHY_1_EXPANSION_2_REG                              0x04400d8
#define MDIO_PHY_1_EXPANSION_REG_ACCESS_REG                     0x04400dc
#define MDIO_PHY_1_SHADOW_18_REG                                0x04400e0
#define MDIO_PHY_1_AUX_STATUS_REG                               0x04400e4
#define MDIO_PHY_1_INT_STATUS_REG                               0x04400e8
#define MDIO_PHY_1_INT_MASK_REG                                 0x04400ec
#define MDIO_PHY_1_SHADOW_1C_REG                                0x04400f0
#define MDIO_PHY_1_SHADOW_1D_REG                                0x04400f4
#define MDIO_PHY_1_TEST_REG                                     0x04400f8
#define MDIO_PHY_1_RESERVED_REG                                 0x04400fc
#define MDIO_PHY_2_CONTROL_REG                                  0x0440100
#define MDIO_PHY_2_STATUS_REG                                   0x0440104
#define MDIO_PHY_2_PHY_ID_HI_REG                                0x0440108
#define MDIO_PHY_2_PHY_ID_LO_REG                                0x044010c
#define MDIO_PHY_2_AUTONEGOTIATION_ADVERT_REG                   0x0440110
#define MDIO_PHY_2_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG   0x0440114
#define MDIO_PHY_2_AUTONEG_EXPANSION_REG                        0x0440118
#define MDIO_PHY_2_AUTONEG_NEXT_PAGE_TX_REG                     0x044011c
#define MDIO_PHY_2_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG      0x0440120
#define MDIO_PHY_2_MASTER_SLAVE_CTRL_REG                        0x0440124
#define MDIO_PHY_2_MASTER_SLAVE_STATUS_REG                      0x0440128
#define MDIO_PHY_2_PSE_CTRL_REG                                 0x044012c
#define MDIO_PHY_2_PSE_STATUS_REG                               0x0440130
#define MDIO_PHY_2_MMD_ACCESS_CTRL_REG                          0x0440134
#define MDIO_PHY_2_MMD_ACCESS_STATUS_REG                        0x0440138
#define MDIO_PHY_2_EXTENDED_STATUS_REG                          0x044013c
#define MDIO_PHY_2_PHY_EXTENDED_CTRL_REG                        0x0440140
#define MDIO_PHY_2_PHY_EXTENDED_STATUS_REG                      0x0440144
#define MDIO_PHY_2_RX_ERROR_COUNT_REG                           0x0440148
#define MDIO_PHY_2_FALSE_CARRIER_SENSE_COUNT_REG                0x044014c
#define MDIO_PHY_2_RX_NOT_OK_COUNT_REG                          0x0440150
#define MDIO_PHY_2_EXPANSION_1_REG                              0x0440154
#define MDIO_PHY_2_EXPANSION_2_REG                              0x0440158
#define MDIO_PHY_2_EXPANSION_REG_ACCESS_REG                     0x044015c
#define MDIO_PHY_2_SHADOW_18_REG                                0x0440160
#define MDIO_PHY_2_AUX_STATUS_REG                               0x0440164
#define MDIO_PHY_2_INT_STATUS_REG                               0x0440168
#define MDIO_PHY_2_INT_MASK_REG                                 0x044016c
#define MDIO_PHY_2_SHADOW_1C_REG                                0x0440170
#define MDIO_PHY_2_SHADOW_1D_REG                                0x0440174
#define MDIO_PHY_2_TEST_REG                                     0x0440178
#define MDIO_PHY_2_RESERVED_REG                                 0x044017c
#define MDIO_PHY_3_CONTROL_REG                                  0x0440180
#define MDIO_PHY_3_STATUS_REG                                   0x0440184
#define MDIO_PHY_3_PHY_ID_HI_REG                                0x0440188
#define MDIO_PHY_3_PHY_ID_LO_REG                                0x044018c
#define MDIO_PHY_3_AUTONEGOTIATION_ADVERT_REG                   0x0440190
#define MDIO_PHY_3_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG   0x0440194
#define MDIO_PHY_3_AUTONEG_EXPANSION_REG                        0x0440198
#define MDIO_PHY_3_AUTONEG_NEXT_PAGE_TX_REG                     0x044019c
#define MDIO_PHY_3_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG      0x04401a0
#define MDIO_PHY_3_MASTER_SLAVE_CTRL_REG                        0x04401a4
#define MDIO_PHY_3_MASTER_SLAVE_STATUS_REG                      0x04401a8
#define MDIO_PHY_3_PSE_CTRL_REG                                 0x04401ac
#define MDIO_PHY_3_PSE_STATUS_REG                               0x04401b0
#define MDIO_PHY_3_MMD_ACCESS_CTRL_REG                          0x04401b4
#define MDIO_PHY_3_MMD_ACCESS_STATUS_REG                        0x04401b8
#define MDIO_PHY_3_EXTENDED_STATUS_REG                          0x04401bc
#define MDIO_PHY_3_PHY_EXTENDED_CTRL_REG                        0x04401c0
#define MDIO_PHY_3_PHY_EXTENDED_STATUS_REG                      0x04401c4
#define MDIO_PHY_3_RX_ERROR_COUNT_REG                           0x04401c8
#define MDIO_PHY_3_FALSE_CARRIER_SENSE_COUNT_REG                0x04401cc
#define MDIO_PHY_3_RX_NOT_OK_COUNT_REG                          0x04401d0
#define MDIO_PHY_3_EXPANSION_1_REG                              0x04401d4
#define MDIO_PHY_3_EXPANSION_2_REG                              0x04401d8
#define MDIO_PHY_3_EXPANSION_REG_ACCESS_REG                     0x04401dc
#define MDIO_PHY_3_SHADOW_18_REG                                0x04401e0
#define MDIO_PHY_3_AUX_STATUS_REG                               0x04401e4
#define MDIO_PHY_3_INT_STATUS_REG                               0x04401e8
#define MDIO_PHY_3_INT_MASK_REG                                 0x04401ec
#define MDIO_PHY_3_SHADOW_1C_REG                                0x04401f0
#define MDIO_PHY_3_SHADOW_1D_REG                                0x04401f4
#define MDIO_PHY_3_TEST_REG                                     0x04401f8
#define MDIO_PHY_3_RESERVED_REG                                 0x04401fc

#define MDIO_PHY_GROUP_BASE_ADDR   0x0440000
#define MDIO_PHY_GROUP_INST_OFFSET 0x0000080

// Name: dma (DMA)
// Description: DMA transfer module
// File: lib/verilog/core/dma/xml/dma.xml
#define DMA_CTRL_REG                0x0500000
#define DMA_NUM_INGRESS_PKTS_REG    0x0500004
#define DMA_NUM_INGRESS_BYTES_REG   0x0500008
#define DMA_NUM_EGRESS_PKTS_REG     0x050000c
#define DMA_NUM_EGRESS_BYTES_REG    0x0500010
#define DMA_NUM_TIMEOUTS_REG        0x0500014

// Name: reg_file (REG_FILE)
// Description: Register file test (simple RAM)
// File: projects/selftest/include/reg_file.xml

// Name: reg_reflect (REG_REFLECT_TEST)
// Description: Test module that returns the register address as the register value
// File: projects/selftest/include/reg_reflect.xml

// Name: clock_test (CLOCK_TEST)
// Description: Test the clock by measuring clock ticks
// File: projects/selftest/include/clock_test.xml
#define CLOCK_TEST_TICKS_REG   0x0880000

// Name: serial_test (SERIAL_TEST)
// Description: Serial test registers for Selftest
// File: projects/selftest/include/serial_test.xml
#define SERIAL_TEST_CTRL_REG                   0x08c0000
#define SERIAL_TEST_STATUS_REG                 0x08c0004
#define SERIAL_TEST_CTRL_0_REG                 0x08c0008
#define SERIAL_TEST_STATUS_0_REG               0x08c000c
#define SERIAL_TEST_NUM_FRAMES_SENT_0_HI_REG   0x08c0010
#define SERIAL_TEST_NUM_FRAMES_SENT_0_LO_REG   0x08c0014
#define SERIAL_TEST_NUM_FRAMES_RCVD_0_HI_REG   0x08c0018
#define SERIAL_TEST_NUM_FRAMES_RCVD_0_LO_REG   0x08c001c
#define SERIAL_TEST_CTRL_1_REG                 0x08c0020
#define SERIAL_TEST_STATUS_1_REG               0x08c0024
#define SERIAL_TEST_NUM_FRAMES_SENT_1_HI_REG   0x08c0028
#define SERIAL_TEST_NUM_FRAMES_SENT_1_LO_REG   0x08c002c
#define SERIAL_TEST_NUM_FRAMES_RCVD_1_HI_REG   0x08c0030
#define SERIAL_TEST_NUM_FRAMES_RCVD_1_LO_REG   0x08c0034

// Name: sram_test (SRAM_TEST)
// Description: SRAM test module
// File: projects/selftest/include/sram_test.xml
#define SRAM_TEST_ERR_CNT_REG           0x0900000
#define SRAM_TEST_ITER_NUM_REG          0x0900004
#define SRAM_TEST_BAD_RUNS_REG          0x0900008
#define SRAM_TEST_GOOD_RUNS_REG         0x090000c
#define SRAM_TEST_STATUS_REG            0x0900010
#define SRAM_TEST_EN_REG                0x0900014
#define SRAM_TEST_CTRL_REG              0x0900018
#define SRAM_TEST_RAND_SEED_HI_REG      0x090001c
#define SRAM_TEST_RAND_SEED_LO_REG      0x0900020
#define SRAM_TEST_LOG_ADDR_REG          0x0920000
#define SRAM_TEST_LOG_EXP_DATA_HI_REG   0x0920004
#define SRAM_TEST_LOG_EXP_DATA_LO_REG   0x0920008
#define SRAM_TEST_LOG_RD_DATA_HI_REG    0x092000c
#define SRAM_TEST_LOG_RD_DATA_LO_REG    0x0920010

// Name: sram_msb (SRAM_MSB)
// Description: SRAM most-significant bits registers
// File: projects/selftest/include/sram_msb.xml
#define SRAM_MSB_SRAM1_RD_REG   0x0940000
#define SRAM_MSB_SRAM1_WR_REG   0x0940004
#define SRAM_MSB_SRAM2_RD_REG   0x0940008
#define SRAM_MSB_SRAM2_WR_REG   0x094000c

// Name: dram_test (DRAM_TEST)
// Description: DRAM selftest
// File: projects/selftest/include/dram_test.xml
#define DRAM_TEST_ERR_CNT_REG           0x0980000
#define DRAM_TEST_ITER_NUM_REG          0x0980004
#define DRAM_TEST_BAD_RUNS_REG          0x0980008
#define DRAM_TEST_GOOD_RUNS_REG         0x098000c
#define DRAM_TEST_STATUS_REG            0x0980010
#define DRAM_TEST_EN_REG                0x0980014
#define DRAM_TEST_CTRL_REG              0x0980018
#define DRAM_TEST_RAND_SEED_REG         0x098001c
#define DRAM_TEST_LOG_ADDR_REG          0x09a0000
#define DRAM_TEST_LOG_EXP_DATA_HI_REG   0x09a0004
#define DRAM_TEST_LOG_EXP_DATA_LO_REG   0x09a0008
#define DRAM_TEST_LOG_RD_DATA_HI_REG    0x09a000c
#define DRAM_TEST_LOG_RD_DATA_LO_REG    0x09a0010

// Name: phy_test (PHY_TEST)
// Description: Ethernet PHY test
// File: projects/selftest/include/phy_test.xml
#define PHY_TEST_STATUS_REG                  0x09c0000
#define PHY_TEST_CTRL_REG                    0x09c0004
#define PHY_TEST_SIZE_REG                    0x09c0008
#define PHY_TEST_PATTERN_REG                 0x09c000c
#define PHY_TEST_INIT_SEQ_NO_REG             0x09c0010
#define PHY_TEST_PHY_0_TX_STATUS_REG         0x09e0000
#define PHY_TEST_PHY_0_TX_ITER_CNT_REG       0x09e0004
#define PHY_TEST_PHY_0_TX_PKT_CNT_REG        0x09e0008
#define PHY_TEST_PHY_0_TX_SEQ_NO_REG         0x09e000c
#define PHY_TEST_PHY_0_TX_RAND_SEED_REG      0x09e0010
#define PHY_TEST_PHY_0_RX_STATUS_REG         0x09e2000
#define PHY_TEST_PHY_0_RX_GOOD_PKT_CNT_REG   0x09e2004
#define PHY_TEST_PHY_0_RX_ERR_PKT_CNT_REG    0x09e2008
#define PHY_TEST_PHY_0_RX_SEQ_NO_REG         0x09e200c
#define PHY_TEST_PHY_0_RX_CTRL_REG           0x09e2010
#define PHY_TEST_PHY_0_RX_LOG_STATUS_REG     0x09e4000
#define PHY_TEST_PHY_0_RX_LOG_EXP_DATA_REG   0x09e4004
#define PHY_TEST_PHY_0_RX_LOG_RX_DATA_REG    0x09e4008
#define PHY_TEST_PHY_0_RX_LOG_CTRL_REG       0x09e400c
#define PHY_TEST_PHY_1_TX_STATUS_REG         0x09e8000
#define PHY_TEST_PHY_1_TX_ITER_CNT_REG       0x09e8004
#define PHY_TEST_PHY_1_TX_PKT_CNT_REG        0x09e8008
#define PHY_TEST_PHY_1_TX_SEQ_NO_REG         0x09e800c
#define PHY_TEST_PHY_1_TX_RAND_SEED_REG      0x09e8010
#define PHY_TEST_PHY_1_RX_STATUS_REG         0x09ea000
#define PHY_TEST_PHY_1_RX_GOOD_PKT_CNT_REG   0x09ea004
#define PHY_TEST_PHY_1_RX_ERR_PKT_CNT_REG    0x09ea008
#define PHY_TEST_PHY_1_RX_SEQ_NO_REG         0x09ea00c
#define PHY_TEST_PHY_1_RX_CTRL_REG           0x09ea010
#define PHY_TEST_PHY_1_RX_LOG_STATUS_REG     0x09ec000
#define PHY_TEST_PHY_1_RX_LOG_EXP_DATA_REG   0x09ec004
#define PHY_TEST_PHY_1_RX_LOG_RX_DATA_REG    0x09ec008
#define PHY_TEST_PHY_1_RX_LOG_CTRL_REG       0x09ec00c
#define PHY_TEST_PHY_2_TX_STATUS_REG         0x09f0000
#define PHY_TEST_PHY_2_TX_ITER_CNT_REG       0x09f0004
#define PHY_TEST_PHY_2_TX_PKT_CNT_REG        0x09f0008
#define PHY_TEST_PHY_2_TX_SEQ_NO_REG         0x09f000c
#define PHY_TEST_PHY_2_TX_RAND_SEED_REG      0x09f0010
#define PHY_TEST_PHY_2_RX_STATUS_REG         0x09f2000
#define PHY_TEST_PHY_2_RX_GOOD_PKT_CNT_REG   0x09f2004
#define PHY_TEST_PHY_2_RX_ERR_PKT_CNT_REG    0x09f2008
#define PHY_TEST_PHY_2_RX_SEQ_NO_REG         0x09f200c
#define PHY_TEST_PHY_2_RX_CTRL_REG           0x09f2010
#define PHY_TEST_PHY_2_RX_LOG_STATUS_REG     0x09f4000
#define PHY_TEST_PHY_2_RX_LOG_EXP_DATA_REG   0x09f4004
#define PHY_TEST_PHY_2_RX_LOG_RX_DATA_REG    0x09f4008
#define PHY_TEST_PHY_2_RX_LOG_CTRL_REG       0x09f400c
#define PHY_TEST_PHY_3_TX_STATUS_REG         0x09f8000
#define PHY_TEST_PHY_3_TX_ITER_CNT_REG       0x09f8004
#define PHY_TEST_PHY_3_TX_PKT_CNT_REG        0x09f8008
#define PHY_TEST_PHY_3_TX_SEQ_NO_REG         0x09f800c
#define PHY_TEST_PHY_3_TX_RAND_SEED_REG      0x09f8010
#define PHY_TEST_PHY_3_RX_STATUS_REG         0x09fa000
#define PHY_TEST_PHY_3_RX_GOOD_PKT_CNT_REG   0x09fa004
#define PHY_TEST_PHY_3_RX_ERR_PKT_CNT_REG    0x09fa008
#define PHY_TEST_PHY_3_RX_SEQ_NO_REG         0x09fa00c
#define PHY_TEST_PHY_3_RX_CTRL_REG           0x09fa010
#define PHY_TEST_PHY_3_RX_LOG_STATUS_REG     0x09fc000
#define PHY_TEST_PHY_3_RX_LOG_EXP_DATA_REG   0x09fc004
#define PHY_TEST_PHY_3_RX_LOG_RX_DATA_REG    0x09fc008
#define PHY_TEST_PHY_3_RX_LOG_CTRL_REG       0x09fc00c

#define PHY_TEST_PHY_GROUP_BASE_ADDR   0x09e0000
#define PHY_TEST_PHY_GROUP_INST_OFFSET 0x0008000

// Name: SRAM (SRAM)
// Description: SRAM

// Name: DRAM (DRAM)
// Description: DRAM



/* ========== Bitmasks ========== */

// Type: dram_test_status
// Description: DRAM test status
// File: projects/selftest/include/dram_test.xml

// Part 1: bit positions
#define DRAM_TEST_STATUS_DONE_POS_LO   0
#define DRAM_TEST_STATUS_DONE_POS_HI   4
#define DRAM_TEST_STATUS_DONE_WIDTH    5
#define DRAM_TEST_STATUS_FAIL_POS_LO   8
#define DRAM_TEST_STATUS_FAIL_POS_HI   12
#define DRAM_TEST_STATUS_FAIL_WIDTH    5

// Part 2: masks/values
#define DRAM_TEST_STATUS_DONE_MASK     0x0000001f
#define DRAM_TEST_STATUS_FAIL_MASK     0x00001f00

// Type: dram_test_enable
// Description: DRAM test status
// File: projects/selftest/include/dram_test.xml

// Part 1: bit positions
#define DRAM_TEST_ENABLE_ENABLE_POS_LO   0
#define DRAM_TEST_ENABLE_ENABLE_POS_HI   4
#define DRAM_TEST_ENABLE_ENABLE_WIDTH    5

// Part 2: masks/values
#define DRAM_TEST_ENABLE_ENABLE_MASK     0x0000001f

// Type: dram_test_ctrl
// Description: DRAM test status
// File: projects/selftest/include/dram_test.xml

// Part 1: bit positions
#define DRAM_TEST_CTRL_RUN_POS      0
#define DRAM_TEST_CTRL_REPEAT_POS   1

// Part 2: masks/values
#define DRAM_TEST_CTRL_RUN          0x1
#define DRAM_TEST_CTRL_REPEAT       0x2

// Type: dma_iface_ctrl
// Description: DMA interface control register
// File: lib/verilog/core/dma/xml/dma.xml

// Part 1: bit positions
#define DMA_IFACE_CTRL_DISABLE_POS   0
#define DMA_IFACE_CTRL_RESET_POS     1

// Part 2: masks/values
#define DMA_IFACE_CTRL_DISABLE       0x001
#define DMA_IFACE_CTRL_RESET         0x002

// Type: mii_ctrl
// Description: MII control register
// File: lib/verilog/core/io/mdio/xml/mdio.xml

// Part 1: bit positions
#define MII_CTRL_RESET_POS               15
#define MII_CTRL_INTERNAL_LOOPBACK_POS   14
#define MII_CTRL_SPEED_SEL_LO_POS        13
#define MII_CTRL_AUTONEG_ENABLE_POS      12
#define MII_CTRL_PWR_DOWN_POS            11
#define MII_CTRL_ISOLATE_POS             10
#define MII_CTRL_RESTART_AUTONEG_POS     9
#define MII_CTRL_DUPLEX_MODE_POS         8
#define MII_CTRL_COLLISION_TEST_EN_POS   7
#define MII_CTRL_SPEED_SEL_HI_POS        6

// Part 2: masks/values
#define MII_CTRL_RESET                   0x8000
#define MII_CTRL_INTERNAL_LOOPBACK       0x4000
#define MII_CTRL_SPEED_SEL_LO            0x2000
#define MII_CTRL_AUTONEG_ENABLE          0x1000
#define MII_CTRL_PWR_DOWN                0x0800
#define MII_CTRL_ISOLATE                 0x0400
#define MII_CTRL_RESTART_AUTONEG         0x0200
#define MII_CTRL_DUPLEX_MODE             0x0100
#define MII_CTRL_COLLISION_TEST_EN       0x0080
#define MII_CTRL_SPEED_SEL_HI            0x0040

// Type: mii_status
// Description: MII status register
// File: lib/verilog/core/io/mdio/xml/mdio.xml

// Part 1: bit positions
#define MII_STATUS_100BASE_T4_CAPABLE_POS            15
#define MII_STATUS_100BASE_X_FULL_DPLX_CAPABLE_POS   14
#define MII_STATUS_100BASE_X_HALF_DPLX_CAPABLE_POS   13
#define MII_STATUS_10BASE_T_FULL_DPLX_CAPABLE_POS    12
#define MII_STATUS_10BASE_T_HALF_DPLX_CAPABLE_POS    11
#define MII_STATUS_10BASE_T2_FULL_DPLX_CAPABLE_POS   10
#define MII_STATUS_10BASE_T2_HALF_DPLX_CAPABLE_POS   9
#define MII_STATUS_EXTENDED_STATUS_POS               8
#define MII_STATUS_MF_PREAMBLE_SUPPRESS_POS          6
#define MII_STATUS_AUTONEG_COMPLETE_POS              5
#define MII_STATUS_REMOTE_FAULT_POS                  4
#define MII_STATUS_AUTONEG_ABILITY_POS               3
#define MII_STATUS_LINK_STATUS_POS                   2
#define MII_STATUS_JABBER_DETECT_POS                 1
#define MII_STATUS_EXTENDED_CAPABILITY_POS           0

// Part 2: masks/values
#define MII_STATUS_100BASE_T4_CAPABLE                0x8000
#define MII_STATUS_100BASE_X_FULL_DPLX_CAPABLE       0x4000
#define MII_STATUS_100BASE_X_HALF_DPLX_CAPABLE       0x2000
#define MII_STATUS_10BASE_T_FULL_DPLX_CAPABLE        0x1000
#define MII_STATUS_10BASE_T_HALF_DPLX_CAPABLE        0x0800
#define MII_STATUS_10BASE_T2_FULL_DPLX_CAPABLE       0x0400
#define MII_STATUS_10BASE_T2_HALF_DPLX_CAPABLE       0x0200
#define MII_STATUS_EXTENDED_STATUS                   0x0100
#define MII_STATUS_MF_PREAMBLE_SUPPRESS              0x0040
#define MII_STATUS_AUTONEG_COMPLETE                  0x0020
#define MII_STATUS_REMOTE_FAULT                      0x0010
#define MII_STATUS_AUTONEG_ABILITY                   0x0008
#define MII_STATUS_LINK_STATUS                       0x0004
#define MII_STATUS_JABBER_DETECT                     0x0002
#define MII_STATUS_EXTENDED_CAPABILITY               0x0001

// Type: phy_test_status
// Description: Ethernet PHY test status
// File: projects/selftest/include/phy_test.xml

// Part 1: bit positions
#define PHY_TEST_STATUS_BUSY_POS   0
#define PHY_TEST_STATUS_DONE_POS   4
#define PHY_TEST_STATUS_GOOD_POS   8

// Part 2: masks/values
#define PHY_TEST_STATUS_BUSY       0x00000001
#define PHY_TEST_STATUS_DONE       0x00000010
#define PHY_TEST_STATUS_GOOD       0x00000100

// Type: phy_test_ctrl
// Description: Ethernet PHY test control
// File: projects/selftest/include/phy_test.xml

// Part 1: bit positions
#define PHY_TEST_CTRL_START_POS    0
#define PHY_TEST_CTRL_REPEAT_POS   1

// Part 2: masks/values
#define PHY_TEST_CTRL_START        0x1
#define PHY_TEST_CTRL_REPEAT       0x2

// Type: phy_test_pattern
// Description: Ethernet PHY pattern enable
// File: projects/selftest/include/phy_test.xml

// Part 1: bit positions
#define PHY_TEST_PATTERN_ENABLE_POS_LO   0
#define PHY_TEST_PATTERN_ENABLE_POS_HI   4
#define PHY_TEST_PATTERN_ENABLE_WIDTH    5

// Part 2: masks/values
#define PHY_TEST_PATTERN_ENABLE_MASK     0x1f

// Type: phy_test_phy_tx_status
// Description: Ethernet PHY test -- individual PHY transmit status
// File: projects/selftest/include/phy_test.xml

// Part 1: bit positions
#define PHY_TEST_PHY_TX_STATUS_DONE_POS          0
#define PHY_TEST_PHY_TX_STATUS_CURR_PAT_POS_LO   16
#define PHY_TEST_PHY_TX_STATUS_CURR_PAT_POS_HI   20
#define PHY_TEST_PHY_TX_STATUS_CURR_PAT_WIDTH    5

// Part 2: masks/values
#define PHY_TEST_PHY_TX_STATUS_DONE              0x00000001
#define PHY_TEST_PHY_TX_STATUS_CURR_PAT_MASK     0x001f0000

// Type: phy_test_phy_rx_status
// Description: Ethernet PHY test -- individual PHY receive status
// File: projects/selftest/include/phy_test.xml

// Part 1: bit positions
#define PHY_TEST_PHY_RX_STATUS_DONE_POS                0
#define PHY_TEST_PHY_RX_STATUS_PASS_POS                4
#define PHY_TEST_PHY_RX_STATUS_LOCKED_POS              8
#define PHY_TEST_PHY_RX_STATUS_SEQ_NO_VALID_POS        12
#define PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_POS_LO   16
#define PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_POS_HI   18
#define PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_WIDTH    3

// Part 2: masks/values
#define PHY_TEST_PHY_RX_STATUS_DONE                    0x00000001
#define PHY_TEST_PHY_RX_STATUS_PASS                    0x00000010
#define PHY_TEST_PHY_RX_STATUS_LOCKED                  0x00000100
#define PHY_TEST_PHY_RX_STATUS_SEQ_NO_VALID            0x00001000
#define PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_MASK     0x00070000

// Type: phy_test_phy_rx_ctrl
// Description: Ethernet PHY test -- individual PHY receive control
// File: projects/selftest/include/phy_test.xml

// Part 1: bit positions
#define PHY_TEST_PHY_RX_CTRL_RESET_GOOD_POS   0
#define PHY_TEST_PHY_RX_CTRL_RESET_ERR_POS    1

// Part 2: masks/values
#define PHY_TEST_PHY_RX_CTRL_RESET_GOOD       0x1
#define PHY_TEST_PHY_RX_CTRL_RESET_ERR        0x2

// Type: phy_test_phy_rx_log_status
// Description: Ethernet PHY test -- individual PHY receive log status
// File: projects/selftest/include/phy_test.xml

// Part 1: bit positions
#define PHY_TEST_PHY_RX_LOG_STATUS_FULL_POS       0
#define PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_POS_LO   8
#define PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_POS_HI   15
#define PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_WIDTH    8

// Part 2: masks/values
#define PHY_TEST_PHY_RX_LOG_STATUS_FULL           0x00000001
#define PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_MASK     0x0000ff00

// Type: phy_test_phy_rx_log_ctrl
// Description: Ethernet PHY test -- individual PHY receive log control
// File: projects/selftest/include/phy_test.xml

// Part 1: bit positions
#define PHY_TEST_PHY_RX_LOG_CTRL_RESET_POS   0

// Part 2: masks/values
#define PHY_TEST_PHY_RX_LOG_CTRL_RESET       0x1

// Type: serial_test_glbl_ctrl
// Description: Global serial test control
// File: projects/selftest/include/serial_test.xml

// Part 1: bit positions
#define SERIAL_TEST_GLBL_CTRL_RESTART_POS   0
#define SERIAL_TEST_GLBL_CTRL_NONSTOP_POS   1

// Part 2: masks/values
#define SERIAL_TEST_GLBL_CTRL_RESTART       0x1
#define SERIAL_TEST_GLBL_CTRL_NONSTOP       0x2

// Type: serial_test_iface_ctrl
// Description: Per-interface serial test control
// File: projects/selftest/include/serial_test.xml

// Part 1: bit positions
#define SERIAL_TEST_IFACE_CTRL_RESET_POS         0
#define SERIAL_TEST_IFACE_CTRL_LOOPBACK_POS_LO   2
#define SERIAL_TEST_IFACE_CTRL_LOOPBACK_POS_HI   3
#define SERIAL_TEST_IFACE_CTRL_LOOPBACK_WIDTH    2

// Part 2: masks/values
#define SERIAL_TEST_IFACE_CTRL_RESET             0x1
#define SERIAL_TEST_IFACE_CTRL_LOOPBACK_MASK     0xc

// Type: serial_test_glbl_status
// Description: Global serial test status
// File: projects/selftest/include/serial_test.xml

// Part 1: bit positions
#define SERIAL_TEST_GLBL_STATUS_SUCCESSFUL_POS   0
#define SERIAL_TEST_GLBL_STATUS_DONE_POS         1
#define SERIAL_TEST_GLBL_STATUS_RUNNING_POS      2
#define SERIAL_TEST_GLBL_STATUS_COUNT_POS_LO     3
#define SERIAL_TEST_GLBL_STATUS_COUNT_POS_HI     31
#define SERIAL_TEST_GLBL_STATUS_COUNT_WIDTH      29

// Part 2: masks/values
#define SERIAL_TEST_GLBL_STATUS_SUCCESSFUL       0x00000001
#define SERIAL_TEST_GLBL_STATUS_DONE             0x00000002
#define SERIAL_TEST_GLBL_STATUS_RUNNING          0x00000004
#define SERIAL_TEST_GLBL_STATUS_COUNT_MASK       0xfffffff8

// Type: serial_test_iface_status
// Description: Per-interface serial test status
// File: projects/selftest/include/serial_test.xml

// Part 1: bit positions
#define SERIAL_TEST_IFACE_STATUS_LANE_UP_POS          0
#define SERIAL_TEST_IFACE_STATUS_CHANNEL_UP_POS       1
#define SERIAL_TEST_IFACE_STATUS_HARD_ERROR_POS       2
#define SERIAL_TEST_IFACE_STATUS_SOFT_ERROR_POS       3
#define SERIAL_TEST_IFACE_STATUS_FRAME_ERROR_POS      4
#define SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_POS_LO   8
#define SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_POS_HI   23
#define SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_WIDTH    16

// Part 2: masks/values
#define SERIAL_TEST_IFACE_STATUS_LANE_UP              0x00000001
#define SERIAL_TEST_IFACE_STATUS_CHANNEL_UP           0x00000002
#define SERIAL_TEST_IFACE_STATUS_HARD_ERROR           0x00000004
#define SERIAL_TEST_IFACE_STATUS_SOFT_ERROR           0x00000008
#define SERIAL_TEST_IFACE_STATUS_FRAME_ERROR          0x00000010
#define SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_MASK     0x00ffff00

// Type: sram_test_status
// Description: SRAM test status
// File: projects/selftest/include/sram_test.xml

// Part 1: bit positions
#define SRAM_TEST_STATUS_DONE_1_POS_LO   0
#define SRAM_TEST_STATUS_DONE_1_POS_HI   4
#define SRAM_TEST_STATUS_DONE_1_WIDTH    5
#define SRAM_TEST_STATUS_FAIL_1_POS_LO   8
#define SRAM_TEST_STATUS_FAIL_1_POS_HI   12
#define SRAM_TEST_STATUS_FAIL_1_WIDTH    5
#define SRAM_TEST_STATUS_DONE_2_POS_LO   16
#define SRAM_TEST_STATUS_DONE_2_POS_HI   20
#define SRAM_TEST_STATUS_DONE_2_WIDTH    5
#define SRAM_TEST_STATUS_FAIL_2_POS_LO   24
#define SRAM_TEST_STATUS_FAIL_2_POS_HI   28
#define SRAM_TEST_STATUS_FAIL_2_WIDTH    5

// Part 2: masks/values
#define SRAM_TEST_STATUS_DONE_1_MASK     0x0000001f
#define SRAM_TEST_STATUS_FAIL_1_MASK     0x00001f00
#define SRAM_TEST_STATUS_DONE_2_MASK     0x001f0000
#define SRAM_TEST_STATUS_FAIL_2_MASK     0x1f000000

// Type: sram_test_enable
// Description: SRAM test status
// File: projects/selftest/include/sram_test.xml

// Part 1: bit positions
#define SRAM_TEST_ENABLE_TEST_EN_POS_LO   0
#define SRAM_TEST_ENABLE_TEST_EN_POS_HI   4
#define SRAM_TEST_ENABLE_TEST_EN_WIDTH    5
#define SRAM_TEST_ENABLE_SRAM_EN_POS_LO   16
#define SRAM_TEST_ENABLE_SRAM_EN_POS_HI   17
#define SRAM_TEST_ENABLE_SRAM_EN_WIDTH    2

// Part 2: masks/values
#define SRAM_TEST_ENABLE_TEST_EN_MASK     0x0000001f
#define SRAM_TEST_ENABLE_SRAM_EN_MASK     0x00030000

// Type: sram_test_ctrl
// Description: SRAM test status
// File: projects/selftest/include/sram_test.xml

// Part 1: bit positions
#define SRAM_TEST_CTRL_RUN_POS             0
#define SRAM_TEST_CTRL_REPEAT_POS          1
#define SRAM_TEST_CTRL_RESET_ERR_CNT_POS   8

// Part 2: masks/values
#define SRAM_TEST_CTRL_RUN                 0x00000001
#define SRAM_TEST_CTRL_REPEAT              0x00000002
#define SRAM_TEST_CTRL_RESET_ERR_CNT       0x00000100




#endif

