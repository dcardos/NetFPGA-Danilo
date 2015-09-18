///////////////////////////////////////////////////////////////////////////////
//
// Module: registers.v
// Project: Selftest (selftest)
// Description: Project specific register defines
//
//              NetFPGA selftest -- exercises all major subsystems of the board
//
///////////////////////////////////////////////////////////////////////////////

// -------------------------------------
//   Version Information
// -------------------------------------

`define DEVICE_ID          5
`define DEVICE_MAJOR       1
`define DEVICE_MINOR       1
`define DEVICE_REVISION    0
`define DEVICE_PROJ_DIR    "selftest"
`define DEVICE_PROJ_NAME   "Selftest"
`define DEVICE_PROJ_DESC   "NetFPGA selftest -- exercises all major subsystems of the board"


// -------------------------------------
//   Constants
// -------------------------------------

// ===== File: lib/verilog/core/common/xml/global.xml =====

// Maximum number of phy ports
`define MAX_PHY_PORTS                  4

// PCI address bus width
`define PCI_ADDR_WIDTH                 32

// PCI data bus width
`define PCI_DATA_WIDTH                 32

// PCI byte enable bus width
`define PCI_BE_WIDTH                   4

// CPCI--CNET address bus width. This is byte addresses even though bottom bits are zero.
`define CPCI_CNET_ADDR_WIDTH           27

// CPCI--CNET data bus width
`define CPCI_CNET_DATA_WIDTH           32

// CPCI--Virtex address bus width. This is byte addresses even though bottom bits are zero.
`define CPCI_NF2_ADDR_WIDTH            27

// CPCI--Virtex data bus width
`define CPCI_NF2_DATA_WIDTH            32

// DMA data bus width
`define DMA_DATA_WIDTH                 32

// DMA control bus width
`define DMA_CTRL_WIDTH                 4

// CPCI debug bus width
`define CPCI_DEBUG_DATA_WIDTH          29

// SRAM address width
`define SRAM_ADDR_WIDTH                19

// SRAM data width
`define SRAM_DATA_WIDTH                36

// DRAM address width
`define DRAM_ADDR_WIDTH                24


// ===== File: lib/verilog/core/common/xml/nf_defines.xml =====

// Clock period of 125 MHz clock in ns
`define FAST_CLK_PERIOD                8

// Clock period of 62.5 MHz clock in ns
`define SLOW_CLK_PERIOD                16

// Header value used by the IO queues
`define IO_QUEUE_STAGE_NUM             8'hff

// Data path data width
`define DATA_WIDTH                     64

// Data path control width
`define CTRL_WIDTH                     8


// ===== File: lib/verilog/core/utils/xml/device_id_reg.xml =====

// Total number of registers
`define DEV_ID_NUM_REGS                64

// Number of non string registers
`define DEV_ID_NON_STR_REGS            7

// Length of MD5 sum (bits)
`define DEV_ID_MD5SUM_LENGTH           128

// Project directory length (in words, not chars)
`define DEV_ID_PROJ_DIR_WORD_LEN       16

// Project directory length (in bytes/chars)
`define DEV_ID_PROJ_DIR_BYTE_LEN       64

// Project directory length (in bits)
`define DEV_ID_PROJ_DIR_BIT_LEN        512

// Project name length (in words, not chars)
`define DEV_ID_PROJ_NAME_WORD_LEN      16

// Project name length (in bytes/chars)
`define DEV_ID_PROJ_NAME_BYTE_LEN      64

// Project name length (in bits)
`define DEV_ID_PROJ_NAME_BIT_LEN       512

// Device description length (in words, not chars)
`define DEV_ID_PROJ_DESC_WORD_LEN      25

// Device description length (in bytes/chars)
`define DEV_ID_PROJ_DESC_BYTE_LEN      100

// Device description length (in bits)
`define DEV_ID_PROJ_DESC_BIT_LEN       800

// MD5 identifier (v1): MD5 sum of the string "device_id.v"
`define DEV_ID_MD5_VALUE_V1            128'h4071736d8a603d2b4d55f62989a73c95
`define DEV_ID_MD5_VALUE_V1_0          32'h4071736d
`define DEV_ID_MD5_VALUE_V1_1          32'h8a603d2b
`define DEV_ID_MD5_VALUE_V1_2          32'h4d55f629
`define DEV_ID_MD5_VALUE_V1_3          32'h89a73c95

// MD5 identifier (v2): MD5 sum of the string "device_id.v:v2"
`define DEV_ID_MD5_VALUE_V2            128'h5e461ffe439725c9279a22a1855f6c53
`define DEV_ID_MD5_VALUE_V2_0          32'h5e461ffe
`define DEV_ID_MD5_VALUE_V2_1          32'h439725c9
`define DEV_ID_MD5_VALUE_V2_2          32'h279a22a1
`define DEV_ID_MD5_VALUE_V2_3          32'h855f6c53

// Total number of registers (v1)
`define DEV_ID_NUM_REGS_V1             64

// Number of non string registers (v1)
`define DEV_ID_NON_STR_REGS_V1         7

// Project name length (v1: in words, not chars)
`define DEV_ID_PROJ_NAME_WORD_LEN_V1   25

// Project name length (v1: in bytes/chars)
`define DEV_ID_PROJ_NAME_BYTE_LEN_V1   100

// Project name length (v1: in bits)
`define DEV_ID_PROJ_NAME_BIT_LEN_V1    800


// ===== File: projects/selftest/include/dram_test.xml =====

// Offset between consecutive error log entries
`define DRAM_TEST_LOG_OFFSET           32'h00000020

// Number of DRAM test patterns
`define DRAM_TEST_NUM_PATTERNS         5


// ===== File: projects/selftest/include/phy_test.xml =====

// Number of different test patterns
`define PHY_TEST_NUM_PATTERNS          5


// ===== File: projects/selftest/include/serial_test.xml =====

// Mask to select only the error count (after shifting)
`define SERIAL_TEST_ERROR_COUNT_MASK   32'h0000ffff


// ===== File: projects/selftest/include/sram_test.xml =====

`define SRAM_TEST_LOG_OFFSET           32'h00000020

// Number of SRAM test patterns
`define SRAM_TEST_NUM_PATTERNS         5

// Number of SRAM devices on the board
`define SRAM_TEST_NUM_SRAMS            2



// -------------------------------------
//   Modules
// -------------------------------------

// Tag/address widths
`define CLOCK_TEST_BLOCK_ADDR_WIDTH        4
`define CLOCK_TEST_REG_ADDR_WIDTH          16
`define CORE_BLOCK_ADDR_WIDTH              1
`define CORE_REG_ADDR_WIDTH                22
`define DEV_ID_BLOCK_ADDR_WIDTH            4
`define DEV_ID_REG_ADDR_WIDTH              16
`define DMA_BLOCK_ADDR_WIDTH               4
`define DMA_REG_ADDR_WIDTH                 16
`define DRAM_BLOCK_ADDR_WIDTH              1
`define DRAM_REG_ADDR_WIDTH                24
`define DRAM_TEST_BLOCK_ADDR_WIDTH         4
`define DRAM_TEST_REG_ADDR_WIDTH           16
`define MDIO_BLOCK_ADDR_WIDTH              4
`define MDIO_REG_ADDR_WIDTH                16
`define PHY_TEST_BLOCK_ADDR_WIDTH          4
`define PHY_TEST_REG_ADDR_WIDTH            16
`define REG_FILE_BLOCK_ADDR_WIDTH          4
`define REG_FILE_REG_ADDR_WIDTH            16
`define REG_REFLECT_TEST_BLOCK_ADDR_WIDTH  4
`define REG_REFLECT_TEST_REG_ADDR_WIDTH    16
`define SERIAL_TEST_BLOCK_ADDR_WIDTH       4
`define SERIAL_TEST_REG_ADDR_WIDTH         16
`define SRAM_BLOCK_ADDR_WIDTH              1
`define SRAM_REG_ADDR_WIDTH                22
`define SRAM_MSB_BLOCK_ADDR_WIDTH          4
`define SRAM_MSB_REG_ADDR_WIDTH            16
`define SRAM_TEST_BLOCK_ADDR_WIDTH         4
`define SRAM_TEST_REG_ADDR_WIDTH           16
`define UDP_BLOCK_ADDR_WIDTH               1
`define UDP_REG_ADDR_WIDTH                 23

// Module tags
`define CORE_BLOCK_ADDR              1'h0
`define DEV_ID_BLOCK_ADDR            4'h0
`define MDIO_BLOCK_ADDR              4'h1
`define DMA_BLOCK_ADDR               4'h4
`define REG_FILE_BLOCK_ADDR          4'h0
`define REG_REFLECT_TEST_BLOCK_ADDR  4'h1
`define CLOCK_TEST_BLOCK_ADDR        4'h2
`define SERIAL_TEST_BLOCK_ADDR       4'h3
`define SRAM_TEST_BLOCK_ADDR         4'h4
`define SRAM_MSB_BLOCK_ADDR          4'h5
`define DRAM_TEST_BLOCK_ADDR         4'h6
`define PHY_TEST_BLOCK_ADDR          4'h7
`define SRAM_BLOCK_ADDR              1'h1
`define UDP_BLOCK_ADDR               1'h1
`define DRAM_BLOCK_ADDR              1'h1


// -------------------------------------
//   Registers
// -------------------------------------

// Name: clock_test
// Description: Test the clock by measuring clock ticks
// File: projects/selftest/include/clock_test.xml
`define CLOCK_TEST_TICKS  16'h0

// Name: device_id
// Description: Device identification
// File: lib/verilog/core/utils/xml/device_id_reg.xml
`define DEV_ID_MD5_0         16'h0
`define DEV_ID_MD5_1         16'h1
`define DEV_ID_MD5_2         16'h2
`define DEV_ID_MD5_3         16'h3
`define DEV_ID_DEVICE_ID     16'h4
`define DEV_ID_VERSION       16'h5
`define DEV_ID_CPCI_ID       16'h6
`define DEV_ID_PROJ_DIR_0    16'h7
`define DEV_ID_PROJ_DIR_1    16'h8
`define DEV_ID_PROJ_DIR_2    16'h9
`define DEV_ID_PROJ_DIR_3    16'ha
`define DEV_ID_PROJ_DIR_4    16'hb
`define DEV_ID_PROJ_DIR_5    16'hc
`define DEV_ID_PROJ_DIR_6    16'hd
`define DEV_ID_PROJ_DIR_7    16'he
`define DEV_ID_PROJ_DIR_8    16'hf
`define DEV_ID_PROJ_DIR_9    16'h10
`define DEV_ID_PROJ_DIR_10   16'h11
`define DEV_ID_PROJ_DIR_11   16'h12
`define DEV_ID_PROJ_DIR_12   16'h13
`define DEV_ID_PROJ_DIR_13   16'h14
`define DEV_ID_PROJ_DIR_14   16'h15
`define DEV_ID_PROJ_DIR_15   16'h16
`define DEV_ID_PROJ_NAME_0   16'h17
`define DEV_ID_PROJ_NAME_1   16'h18
`define DEV_ID_PROJ_NAME_2   16'h19
`define DEV_ID_PROJ_NAME_3   16'h1a
`define DEV_ID_PROJ_NAME_4   16'h1b
`define DEV_ID_PROJ_NAME_5   16'h1c
`define DEV_ID_PROJ_NAME_6   16'h1d
`define DEV_ID_PROJ_NAME_7   16'h1e
`define DEV_ID_PROJ_NAME_8   16'h1f
`define DEV_ID_PROJ_NAME_9   16'h20
`define DEV_ID_PROJ_NAME_10  16'h21
`define DEV_ID_PROJ_NAME_11  16'h22
`define DEV_ID_PROJ_NAME_12  16'h23
`define DEV_ID_PROJ_NAME_13  16'h24
`define DEV_ID_PROJ_NAME_14  16'h25
`define DEV_ID_PROJ_NAME_15  16'h26
`define DEV_ID_PROJ_DESC_0   16'h27
`define DEV_ID_PROJ_DESC_1   16'h28
`define DEV_ID_PROJ_DESC_2   16'h29
`define DEV_ID_PROJ_DESC_3   16'h2a
`define DEV_ID_PROJ_DESC_4   16'h2b
`define DEV_ID_PROJ_DESC_5   16'h2c
`define DEV_ID_PROJ_DESC_6   16'h2d
`define DEV_ID_PROJ_DESC_7   16'h2e
`define DEV_ID_PROJ_DESC_8   16'h2f
`define DEV_ID_PROJ_DESC_9   16'h30
`define DEV_ID_PROJ_DESC_10  16'h31
`define DEV_ID_PROJ_DESC_11  16'h32
`define DEV_ID_PROJ_DESC_12  16'h33
`define DEV_ID_PROJ_DESC_13  16'h34
`define DEV_ID_PROJ_DESC_14  16'h35
`define DEV_ID_PROJ_DESC_15  16'h36
`define DEV_ID_PROJ_DESC_16  16'h37
`define DEV_ID_PROJ_DESC_17  16'h38
`define DEV_ID_PROJ_DESC_18  16'h39
`define DEV_ID_PROJ_DESC_19  16'h3a
`define DEV_ID_PROJ_DESC_20  16'h3b
`define DEV_ID_PROJ_DESC_21  16'h3c
`define DEV_ID_PROJ_DESC_22  16'h3d
`define DEV_ID_PROJ_DESC_23  16'h3e
`define DEV_ID_PROJ_DESC_24  16'h3f

// Name: dma
// Description: DMA transfer module
// File: lib/verilog/core/dma/xml/dma.xml
`define DMA_CTRL               16'h0
`define DMA_NUM_INGRESS_PKTS   16'h1
`define DMA_NUM_INGRESS_BYTES  16'h2
`define DMA_NUM_EGRESS_PKTS    16'h3
`define DMA_NUM_EGRESS_BYTES   16'h4
`define DMA_NUM_TIMEOUTS       16'h5

// Name: dram_test
// Description: DRAM selftest
// File: projects/selftest/include/dram_test.xml
`define DRAM_TEST_ERR_CNT          16'h0
`define DRAM_TEST_ITER_NUM         16'h1
`define DRAM_TEST_BAD_RUNS         16'h2
`define DRAM_TEST_GOOD_RUNS        16'h3
`define DRAM_TEST_STATUS           16'h4
`define DRAM_TEST_EN               16'h5
`define DRAM_TEST_CTRL             16'h6
`define DRAM_TEST_RAND_SEED        16'h7
`define DRAM_TEST_LOG_ADDR         16'h8000
`define DRAM_TEST_LOG_EXP_DATA_HI  16'h8001
`define DRAM_TEST_LOG_EXP_DATA_LO  16'h8002
`define DRAM_TEST_LOG_RD_DATA_HI   16'h8003
`define DRAM_TEST_LOG_RD_DATA_LO   16'h8004

// Name: mdio
// Description: MDIO interface
// File: lib/verilog/core/io/mdio/xml/mdio.xml
//   Register group: PHY
//
//   Address decompositions:
//     - Inst:  Addresses of the *instances* within the module
`define MDIO_PHY_INST_BLOCK_ADDR_WIDTH    11
`define MDIO_PHY_INST_REG_ADDR_WIDTH      5

`define MDIO_PHY_0_INST_BLOCK_ADDR  11'd0
`define MDIO_PHY_1_INST_BLOCK_ADDR  11'd1
`define MDIO_PHY_2_INST_BLOCK_ADDR  11'd2
`define MDIO_PHY_3_INST_BLOCK_ADDR  11'd3

`define MDIO_PHY_CONTROL                                 5'h0
`define MDIO_PHY_STATUS                                  5'h1
`define MDIO_PHY_PHY_ID_HI                               5'h2
`define MDIO_PHY_PHY_ID_LO                               5'h3
`define MDIO_PHY_AUTONEGOTIATION_ADVERT                  5'h4
`define MDIO_PHY_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY  5'h5
`define MDIO_PHY_AUTONEG_EXPANSION                       5'h6
`define MDIO_PHY_AUTONEG_NEXT_PAGE_TX                    5'h7
`define MDIO_PHY_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE     5'h8
`define MDIO_PHY_MASTER_SLAVE_CTRL                       5'h9
`define MDIO_PHY_MASTER_SLAVE_STATUS                     5'ha
`define MDIO_PHY_PSE_CTRL                                5'hb
`define MDIO_PHY_PSE_STATUS                              5'hc
`define MDIO_PHY_MMD_ACCESS_CTRL                         5'hd
`define MDIO_PHY_MMD_ACCESS_STATUS                       5'he
`define MDIO_PHY_EXTENDED_STATUS                         5'hf
`define MDIO_PHY_PHY_EXTENDED_CTRL                       5'h10
`define MDIO_PHY_PHY_EXTENDED_STATUS                     5'h11
`define MDIO_PHY_RX_ERROR_COUNT                          5'h12
`define MDIO_PHY_FALSE_CARRIER_SENSE_COUNT               5'h13
`define MDIO_PHY_RX_NOT_OK_COUNT                         5'h14
`define MDIO_PHY_EXPANSION_1                             5'h15
`define MDIO_PHY_EXPANSION_2                             5'h16
`define MDIO_PHY_EXPANSION_REG_ACCESS                    5'h17
`define MDIO_PHY_SHADOW_18                               5'h18
`define MDIO_PHY_AUX_STATUS                              5'h19
`define MDIO_PHY_INT_STATUS                              5'h1a
`define MDIO_PHY_INT_MASK                                5'h1b
`define MDIO_PHY_SHADOW_1C                               5'h1c
`define MDIO_PHY_SHADOW_1D                               5'h1d
`define MDIO_PHY_TEST                                    5'h1e
`define MDIO_PHY_RESERVED                                5'h1f


// Name: phy_test
// Description: Ethernet PHY test
// File: projects/selftest/include/phy_test.xml
//   Register group: PHY
//
//   Address decompositions:
//     - Inst:  Addresses of the *instances* within the module
//     - Group: Addresses of the *group* within the module
`define PHY_TEST_PHY_GROUP_BLOCK_ADDR_WIDTH   1
`define PHY_TEST_PHY_GROUP_REG_ADDR_WIDTH     15

`define PHY_TEST_PHY_GROUP_BLOCK_ADDR         1'd1

`define PHY_TEST_PHY_INST_BLOCK_ADDR_WIDTH    3
`define PHY_TEST_PHY_INST_REG_ADDR_WIDTH      13

`define PHY_TEST_PHY_0_INST_BLOCK_ADDR  3'd0
`define PHY_TEST_PHY_1_INST_BLOCK_ADDR  3'd1
`define PHY_TEST_PHY_2_INST_BLOCK_ADDR  3'd2
`define PHY_TEST_PHY_3_INST_BLOCK_ADDR  3'd3

`define PHY_TEST_PHY_TX_STATUS        13'h0
`define PHY_TEST_PHY_TX_ITER_CNT      13'h1
`define PHY_TEST_PHY_TX_PKT_CNT       13'h2
`define PHY_TEST_PHY_TX_SEQ_NO        13'h3
`define PHY_TEST_PHY_TX_RAND_SEED     13'h4
`define PHY_TEST_PHY_RX_STATUS        13'h800
`define PHY_TEST_PHY_RX_GOOD_PKT_CNT  13'h801
`define PHY_TEST_PHY_RX_ERR_PKT_CNT   13'h802
`define PHY_TEST_PHY_RX_SEQ_NO        13'h803
`define PHY_TEST_PHY_RX_CTRL          13'h804
`define PHY_TEST_PHY_RX_LOG_STATUS    13'h1000
`define PHY_TEST_PHY_RX_LOG_EXP_DATA  13'h1001
`define PHY_TEST_PHY_RX_LOG_RX_DATA   13'h1002
`define PHY_TEST_PHY_RX_LOG_CTRL      13'h1003

`define PHY_TEST_STATUS       16'h0
`define PHY_TEST_CTRL         16'h1
`define PHY_TEST_SIZE         16'h2
`define PHY_TEST_PATTERN      16'h3
`define PHY_TEST_INIT_SEQ_NO  16'h4

// Name: reg_file
// Description: Register file test (simple RAM)
// File: projects/selftest/include/reg_file.xml

// Name: reg_reflect
// Description: Test module that returns the register address as the register value
// File: projects/selftest/include/reg_reflect.xml

// Name: serial_test
// Description: Serial test registers for Selftest
// File: projects/selftest/include/serial_test.xml
`define SERIAL_TEST_CTRL                  16'h0
`define SERIAL_TEST_STATUS                16'h1
`define SERIAL_TEST_CTRL_0                16'h2
`define SERIAL_TEST_STATUS_0              16'h3
`define SERIAL_TEST_NUM_FRAMES_SENT_0_HI  16'h4
`define SERIAL_TEST_NUM_FRAMES_SENT_0_LO  16'h5
`define SERIAL_TEST_NUM_FRAMES_RCVD_0_HI  16'h6
`define SERIAL_TEST_NUM_FRAMES_RCVD_0_LO  16'h7
`define SERIAL_TEST_CTRL_1                16'h8
`define SERIAL_TEST_STATUS_1              16'h9
`define SERIAL_TEST_NUM_FRAMES_SENT_1_HI  16'ha
`define SERIAL_TEST_NUM_FRAMES_SENT_1_LO  16'hb
`define SERIAL_TEST_NUM_FRAMES_RCVD_1_HI  16'hc
`define SERIAL_TEST_NUM_FRAMES_RCVD_1_LO  16'hd

// Name: sram_msb
// Description: SRAM most-significant bits registers
// File: projects/selftest/include/sram_msb.xml
`define SRAM_MSB_SRAM1_RD  16'h0
`define SRAM_MSB_SRAM1_WR  16'h1
`define SRAM_MSB_SRAM2_RD  16'h2
`define SRAM_MSB_SRAM2_WR  16'h3

// Name: sram_test
// Description: SRAM test module
// File: projects/selftest/include/sram_test.xml
`define SRAM_TEST_ERR_CNT          16'h0
`define SRAM_TEST_ITER_NUM         16'h1
`define SRAM_TEST_BAD_RUNS         16'h2
`define SRAM_TEST_GOOD_RUNS        16'h3
`define SRAM_TEST_STATUS           16'h4
`define SRAM_TEST_EN               16'h5
`define SRAM_TEST_CTRL             16'h6
`define SRAM_TEST_RAND_SEED_HI     16'h7
`define SRAM_TEST_RAND_SEED_LO     16'h8
`define SRAM_TEST_LOG_ADDR         16'h8000
`define SRAM_TEST_LOG_EXP_DATA_HI  16'h8001
`define SRAM_TEST_LOG_EXP_DATA_LO  16'h8002
`define SRAM_TEST_LOG_RD_DATA_HI   16'h8003
`define SRAM_TEST_LOG_RD_DATA_LO   16'h8004



// -------------------------------------
//   Bitmasks
// -------------------------------------

// Type: dram_test_status
// Description: DRAM test status
// File: projects/selftest/include/dram_test.xml
`define DRAM_TEST_STATUS_DONE_POS_LO   0
`define DRAM_TEST_STATUS_DONE_POS_HI   4
`define DRAM_TEST_STATUS_DONE_WIDTH    5
`define DRAM_TEST_STATUS_FAIL_POS_LO   8
`define DRAM_TEST_STATUS_FAIL_POS_HI   12
`define DRAM_TEST_STATUS_FAIL_WIDTH    5

// Type: dram_test_enable
// Description: DRAM test status
// File: projects/selftest/include/dram_test.xml
`define DRAM_TEST_ENABLE_ENABLE_POS_LO   0
`define DRAM_TEST_ENABLE_ENABLE_POS_HI   4
`define DRAM_TEST_ENABLE_ENABLE_WIDTH    5

// Type: dram_test_ctrl
// Description: DRAM test status
// File: projects/selftest/include/dram_test.xml
`define DRAM_TEST_CTRL_RUN_POS      0
`define DRAM_TEST_CTRL_REPEAT_POS   1

// Type: dma_iface_ctrl
// Description: DMA interface control register
// File: lib/verilog/core/dma/xml/dma.xml
`define DMA_IFACE_CTRL_DISABLE_POS   0
`define DMA_IFACE_CTRL_RESET_POS     1

// Type: mii_ctrl
// Description: MII control register
// File: lib/verilog/core/io/mdio/xml/mdio.xml
`define MII_CTRL_RESET_POS               15
`define MII_CTRL_INTERNAL_LOOPBACK_POS   14
`define MII_CTRL_SPEED_SEL_LO_POS        13
`define MII_CTRL_AUTONEG_ENABLE_POS      12
`define MII_CTRL_PWR_DOWN_POS            11
`define MII_CTRL_ISOLATE_POS             10
`define MII_CTRL_RESTART_AUTONEG_POS     9
`define MII_CTRL_DUPLEX_MODE_POS         8
`define MII_CTRL_COLLISION_TEST_EN_POS   7
`define MII_CTRL_SPEED_SEL_HI_POS        6

// Type: mii_status
// Description: MII status register
// File: lib/verilog/core/io/mdio/xml/mdio.xml
`define MII_STATUS_100BASE_T4_CAPABLE_POS            15
`define MII_STATUS_100BASE_X_FULL_DPLX_CAPABLE_POS   14
`define MII_STATUS_100BASE_X_HALF_DPLX_CAPABLE_POS   13
`define MII_STATUS_10BASE_T_FULL_DPLX_CAPABLE_POS    12
`define MII_STATUS_10BASE_T_HALF_DPLX_CAPABLE_POS    11
`define MII_STATUS_10BASE_T2_FULL_DPLX_CAPABLE_POS   10
`define MII_STATUS_10BASE_T2_HALF_DPLX_CAPABLE_POS   9
`define MII_STATUS_EXTENDED_STATUS_POS               8
`define MII_STATUS_MF_PREAMBLE_SUPPRESS_POS          6
`define MII_STATUS_AUTONEG_COMPLETE_POS              5
`define MII_STATUS_REMOTE_FAULT_POS                  4
`define MII_STATUS_AUTONEG_ABILITY_POS               3
`define MII_STATUS_LINK_STATUS_POS                   2
`define MII_STATUS_JABBER_DETECT_POS                 1
`define MII_STATUS_EXTENDED_CAPABILITY_POS           0

// Type: phy_test_status
// Description: Ethernet PHY test status
// File: projects/selftest/include/phy_test.xml
`define PHY_TEST_STATUS_BUSY_POS   0
`define PHY_TEST_STATUS_DONE_POS   4
`define PHY_TEST_STATUS_GOOD_POS   8

// Type: phy_test_ctrl
// Description: Ethernet PHY test control
// File: projects/selftest/include/phy_test.xml
`define PHY_TEST_CTRL_START_POS    0
`define PHY_TEST_CTRL_REPEAT_POS   1

// Type: phy_test_pattern
// Description: Ethernet PHY pattern enable
// File: projects/selftest/include/phy_test.xml
`define PHY_TEST_PATTERN_ENABLE_POS_LO   0
`define PHY_TEST_PATTERN_ENABLE_POS_HI   4
`define PHY_TEST_PATTERN_ENABLE_WIDTH    5

// Type: phy_test_phy_tx_status
// Description: Ethernet PHY test -- individual PHY transmit status
// File: projects/selftest/include/phy_test.xml
`define PHY_TEST_PHY_TX_STATUS_DONE_POS          0
`define PHY_TEST_PHY_TX_STATUS_CURR_PAT_POS_LO   16
`define PHY_TEST_PHY_TX_STATUS_CURR_PAT_POS_HI   20
`define PHY_TEST_PHY_TX_STATUS_CURR_PAT_WIDTH    5

// Type: phy_test_phy_rx_status
// Description: Ethernet PHY test -- individual PHY receive status
// File: projects/selftest/include/phy_test.xml
`define PHY_TEST_PHY_RX_STATUS_DONE_POS                0
`define PHY_TEST_PHY_RX_STATUS_PASS_POS                4
`define PHY_TEST_PHY_RX_STATUS_LOCKED_POS              8
`define PHY_TEST_PHY_RX_STATUS_SEQ_NO_VALID_POS        12
`define PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_POS_LO   16
`define PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_POS_HI   18
`define PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_WIDTH    3

// Type: phy_test_phy_rx_ctrl
// Description: Ethernet PHY test -- individual PHY receive control
// File: projects/selftest/include/phy_test.xml
`define PHY_TEST_PHY_RX_CTRL_RESET_GOOD_POS   0
`define PHY_TEST_PHY_RX_CTRL_RESET_ERR_POS    1

// Type: phy_test_phy_rx_log_status
// Description: Ethernet PHY test -- individual PHY receive log status
// File: projects/selftest/include/phy_test.xml
`define PHY_TEST_PHY_RX_LOG_STATUS_FULL_POS       0
`define PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_POS_LO   8
`define PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_POS_HI   15
`define PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_WIDTH    8

// Type: phy_test_phy_rx_log_ctrl
// Description: Ethernet PHY test -- individual PHY receive log control
// File: projects/selftest/include/phy_test.xml
`define PHY_TEST_PHY_RX_LOG_CTRL_RESET_POS   0

// Type: serial_test_glbl_ctrl
// Description: Global serial test control
// File: projects/selftest/include/serial_test.xml
`define SERIAL_TEST_GLBL_CTRL_RESTART_POS   0
`define SERIAL_TEST_GLBL_CTRL_NONSTOP_POS   1

// Type: serial_test_iface_ctrl
// Description: Per-interface serial test control
// File: projects/selftest/include/serial_test.xml
`define SERIAL_TEST_IFACE_CTRL_RESET_POS         0
`define SERIAL_TEST_IFACE_CTRL_LOOPBACK_POS_LO   2
`define SERIAL_TEST_IFACE_CTRL_LOOPBACK_POS_HI   3
`define SERIAL_TEST_IFACE_CTRL_LOOPBACK_WIDTH    2

// Type: serial_test_glbl_status
// Description: Global serial test status
// File: projects/selftest/include/serial_test.xml
`define SERIAL_TEST_GLBL_STATUS_SUCCESSFUL_POS   0
`define SERIAL_TEST_GLBL_STATUS_DONE_POS         1
`define SERIAL_TEST_GLBL_STATUS_RUNNING_POS      2
`define SERIAL_TEST_GLBL_STATUS_COUNT_POS_LO     3
`define SERIAL_TEST_GLBL_STATUS_COUNT_POS_HI     31
`define SERIAL_TEST_GLBL_STATUS_COUNT_WIDTH      29

// Type: serial_test_iface_status
// Description: Per-interface serial test status
// File: projects/selftest/include/serial_test.xml
`define SERIAL_TEST_IFACE_STATUS_LANE_UP_POS          0
`define SERIAL_TEST_IFACE_STATUS_CHANNEL_UP_POS       1
`define SERIAL_TEST_IFACE_STATUS_HARD_ERROR_POS       2
`define SERIAL_TEST_IFACE_STATUS_SOFT_ERROR_POS       3
`define SERIAL_TEST_IFACE_STATUS_FRAME_ERROR_POS      4
`define SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_POS_LO   8
`define SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_POS_HI   23
`define SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_WIDTH    16

// Type: sram_test_status
// Description: SRAM test status
// File: projects/selftest/include/sram_test.xml
`define SRAM_TEST_STATUS_DONE_1_POS_LO   0
`define SRAM_TEST_STATUS_DONE_1_POS_HI   4
`define SRAM_TEST_STATUS_DONE_1_WIDTH    5
`define SRAM_TEST_STATUS_FAIL_1_POS_LO   8
`define SRAM_TEST_STATUS_FAIL_1_POS_HI   12
`define SRAM_TEST_STATUS_FAIL_1_WIDTH    5
`define SRAM_TEST_STATUS_DONE_2_POS_LO   16
`define SRAM_TEST_STATUS_DONE_2_POS_HI   20
`define SRAM_TEST_STATUS_DONE_2_WIDTH    5
`define SRAM_TEST_STATUS_FAIL_2_POS_LO   24
`define SRAM_TEST_STATUS_FAIL_2_POS_HI   28
`define SRAM_TEST_STATUS_FAIL_2_WIDTH    5

// Type: sram_test_enable
// Description: SRAM test status
// File: projects/selftest/include/sram_test.xml
`define SRAM_TEST_ENABLE_TEST_EN_POS_LO   0
`define SRAM_TEST_ENABLE_TEST_EN_POS_HI   4
`define SRAM_TEST_ENABLE_TEST_EN_WIDTH    5
`define SRAM_TEST_ENABLE_SRAM_EN_POS_LO   16
`define SRAM_TEST_ENABLE_SRAM_EN_POS_HI   17
`define SRAM_TEST_ENABLE_SRAM_EN_WIDTH    2

// Type: sram_test_ctrl
// Description: SRAM test status
// File: projects/selftest/include/sram_test.xml
`define SRAM_TEST_CTRL_RUN_POS             0
`define SRAM_TEST_CTRL_REPEAT_POS          1
`define SRAM_TEST_CTRL_RESET_ERR_CNT_POS   8



