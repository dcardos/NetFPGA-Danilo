#############################################################
#
# Perl register defines
#
# Project: Selftest (selftest)
# Description: NetFPGA selftest -- exercises all major subsystems of the board
#
#############################################################

package reg_defines_selftest;

use Exporter;

@ISA = ('Exporter');

@EXPORT = qw(
                DEVICE_ID
                DEVICE_MAJOR
                DEVICE_MINOR
                DEVICE_REVISION
                DEVICE_PROJ_DIR
                DEVICE_PROJ_NAME
                DEVICE_PROJ_DESC
                MAX_PHY_PORTS
                PCI_ADDR_WIDTH
                PCI_DATA_WIDTH
                PCI_BE_WIDTH
                CPCI_CNET_ADDR_WIDTH
                CPCI_CNET_DATA_WIDTH
                CPCI_NF2_ADDR_WIDTH
                CPCI_NF2_DATA_WIDTH
                DMA_DATA_WIDTH
                DMA_CTRL_WIDTH
                CPCI_DEBUG_DATA_WIDTH
                SRAM_ADDR_WIDTH
                SRAM_DATA_WIDTH
                DRAM_ADDR_WIDTH
                FAST_CLK_PERIOD
                SLOW_CLK_PERIOD
                IO_QUEUE_STAGE_NUM
                DATA_WIDTH
                CTRL_WIDTH
                DEV_ID_NUM_REGS
                DEV_ID_NON_STR_REGS
                DEV_ID_MD5SUM_LENGTH
                DEV_ID_PROJ_DIR_WORD_LEN
                DEV_ID_PROJ_DIR_BYTE_LEN
                DEV_ID_PROJ_DIR_BIT_LEN
                DEV_ID_PROJ_NAME_WORD_LEN
                DEV_ID_PROJ_NAME_BYTE_LEN
                DEV_ID_PROJ_NAME_BIT_LEN
                DEV_ID_PROJ_DESC_WORD_LEN
                DEV_ID_PROJ_DESC_BYTE_LEN
                DEV_ID_PROJ_DESC_BIT_LEN
                DEV_ID_MD5_VALUE_V1_0
                DEV_ID_MD5_VALUE_V1_1
                DEV_ID_MD5_VALUE_V1_2
                DEV_ID_MD5_VALUE_V1_3
                DEV_ID_MD5_VALUE_V2_0
                DEV_ID_MD5_VALUE_V2_1
                DEV_ID_MD5_VALUE_V2_2
                DEV_ID_MD5_VALUE_V2_3
                DEV_ID_NUM_REGS_V1
                DEV_ID_NON_STR_REGS_V1
                DEV_ID_PROJ_NAME_WORD_LEN_V1
                DEV_ID_PROJ_NAME_BYTE_LEN_V1
                DEV_ID_PROJ_NAME_BIT_LEN_V1
                DRAM_TEST_LOG_OFFSET
                DRAM_TEST_NUM_PATTERNS
                PHY_TEST_NUM_PATTERNS
                SERIAL_TEST_ERROR_COUNT_MASK
                SRAM_TEST_LOG_OFFSET
                SRAM_TEST_NUM_PATTERNS
                SRAM_TEST_NUM_SRAMS
                CORE_BASE_ADDR
                DEV_ID_BASE_ADDR
                MDIO_BASE_ADDR
                DMA_BASE_ADDR
                REG_FILE_BASE_ADDR
                REG_REFLECT_TEST_BASE_ADDR
                CLOCK_TEST_BASE_ADDR
                SERIAL_TEST_BASE_ADDR
                SRAM_TEST_BASE_ADDR
                SRAM_MSB_BASE_ADDR
                DRAM_TEST_BASE_ADDR
                PHY_TEST_BASE_ADDR
                SRAM_BASE_ADDR
                UDP_BASE_ADDR
                DRAM_BASE_ADDR
                DEV_ID_MD5_0_REG
                DEV_ID_MD5_1_REG
                DEV_ID_MD5_2_REG
                DEV_ID_MD5_3_REG
                DEV_ID_DEVICE_ID_REG
                DEV_ID_VERSION_REG
                DEV_ID_CPCI_ID_REG
                DEV_ID_PROJ_DIR_0_REG
                DEV_ID_PROJ_DIR_1_REG
                DEV_ID_PROJ_DIR_2_REG
                DEV_ID_PROJ_DIR_3_REG
                DEV_ID_PROJ_DIR_4_REG
                DEV_ID_PROJ_DIR_5_REG
                DEV_ID_PROJ_DIR_6_REG
                DEV_ID_PROJ_DIR_7_REG
                DEV_ID_PROJ_DIR_8_REG
                DEV_ID_PROJ_DIR_9_REG
                DEV_ID_PROJ_DIR_10_REG
                DEV_ID_PROJ_DIR_11_REG
                DEV_ID_PROJ_DIR_12_REG
                DEV_ID_PROJ_DIR_13_REG
                DEV_ID_PROJ_DIR_14_REG
                DEV_ID_PROJ_DIR_15_REG
                DEV_ID_PROJ_NAME_0_REG
                DEV_ID_PROJ_NAME_1_REG
                DEV_ID_PROJ_NAME_2_REG
                DEV_ID_PROJ_NAME_3_REG
                DEV_ID_PROJ_NAME_4_REG
                DEV_ID_PROJ_NAME_5_REG
                DEV_ID_PROJ_NAME_6_REG
                DEV_ID_PROJ_NAME_7_REG
                DEV_ID_PROJ_NAME_8_REG
                DEV_ID_PROJ_NAME_9_REG
                DEV_ID_PROJ_NAME_10_REG
                DEV_ID_PROJ_NAME_11_REG
                DEV_ID_PROJ_NAME_12_REG
                DEV_ID_PROJ_NAME_13_REG
                DEV_ID_PROJ_NAME_14_REG
                DEV_ID_PROJ_NAME_15_REG
                DEV_ID_PROJ_DESC_0_REG
                DEV_ID_PROJ_DESC_1_REG
                DEV_ID_PROJ_DESC_2_REG
                DEV_ID_PROJ_DESC_3_REG
                DEV_ID_PROJ_DESC_4_REG
                DEV_ID_PROJ_DESC_5_REG
                DEV_ID_PROJ_DESC_6_REG
                DEV_ID_PROJ_DESC_7_REG
                DEV_ID_PROJ_DESC_8_REG
                DEV_ID_PROJ_DESC_9_REG
                DEV_ID_PROJ_DESC_10_REG
                DEV_ID_PROJ_DESC_11_REG
                DEV_ID_PROJ_DESC_12_REG
                DEV_ID_PROJ_DESC_13_REG
                DEV_ID_PROJ_DESC_14_REG
                DEV_ID_PROJ_DESC_15_REG
                DEV_ID_PROJ_DESC_16_REG
                DEV_ID_PROJ_DESC_17_REG
                DEV_ID_PROJ_DESC_18_REG
                DEV_ID_PROJ_DESC_19_REG
                DEV_ID_PROJ_DESC_20_REG
                DEV_ID_PROJ_DESC_21_REG
                DEV_ID_PROJ_DESC_22_REG
                DEV_ID_PROJ_DESC_23_REG
                DEV_ID_PROJ_DESC_24_REG
                MDIO_PHY_0_CONTROL_REG
                MDIO_PHY_0_STATUS_REG
                MDIO_PHY_0_PHY_ID_HI_REG
                MDIO_PHY_0_PHY_ID_LO_REG
                MDIO_PHY_0_AUTONEGOTIATION_ADVERT_REG
                MDIO_PHY_0_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG
                MDIO_PHY_0_AUTONEG_EXPANSION_REG
                MDIO_PHY_0_AUTONEG_NEXT_PAGE_TX_REG
                MDIO_PHY_0_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG
                MDIO_PHY_0_MASTER_SLAVE_CTRL_REG
                MDIO_PHY_0_MASTER_SLAVE_STATUS_REG
                MDIO_PHY_0_PSE_CTRL_REG
                MDIO_PHY_0_PSE_STATUS_REG
                MDIO_PHY_0_MMD_ACCESS_CTRL_REG
                MDIO_PHY_0_MMD_ACCESS_STATUS_REG
                MDIO_PHY_0_EXTENDED_STATUS_REG
                MDIO_PHY_0_PHY_EXTENDED_CTRL_REG
                MDIO_PHY_0_PHY_EXTENDED_STATUS_REG
                MDIO_PHY_0_RX_ERROR_COUNT_REG
                MDIO_PHY_0_FALSE_CARRIER_SENSE_COUNT_REG
                MDIO_PHY_0_RX_NOT_OK_COUNT_REG
                MDIO_PHY_0_EXPANSION_1_REG
                MDIO_PHY_0_EXPANSION_2_REG
                MDIO_PHY_0_EXPANSION_REG_ACCESS_REG
                MDIO_PHY_0_SHADOW_18_REG
                MDIO_PHY_0_AUX_STATUS_REG
                MDIO_PHY_0_INT_STATUS_REG
                MDIO_PHY_0_INT_MASK_REG
                MDIO_PHY_0_SHADOW_1C_REG
                MDIO_PHY_0_SHADOW_1D_REG
                MDIO_PHY_0_TEST_REG
                MDIO_PHY_0_RESERVED_REG
                MDIO_PHY_1_CONTROL_REG
                MDIO_PHY_1_STATUS_REG
                MDIO_PHY_1_PHY_ID_HI_REG
                MDIO_PHY_1_PHY_ID_LO_REG
                MDIO_PHY_1_AUTONEGOTIATION_ADVERT_REG
                MDIO_PHY_1_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG
                MDIO_PHY_1_AUTONEG_EXPANSION_REG
                MDIO_PHY_1_AUTONEG_NEXT_PAGE_TX_REG
                MDIO_PHY_1_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG
                MDIO_PHY_1_MASTER_SLAVE_CTRL_REG
                MDIO_PHY_1_MASTER_SLAVE_STATUS_REG
                MDIO_PHY_1_PSE_CTRL_REG
                MDIO_PHY_1_PSE_STATUS_REG
                MDIO_PHY_1_MMD_ACCESS_CTRL_REG
                MDIO_PHY_1_MMD_ACCESS_STATUS_REG
                MDIO_PHY_1_EXTENDED_STATUS_REG
                MDIO_PHY_1_PHY_EXTENDED_CTRL_REG
                MDIO_PHY_1_PHY_EXTENDED_STATUS_REG
                MDIO_PHY_1_RX_ERROR_COUNT_REG
                MDIO_PHY_1_FALSE_CARRIER_SENSE_COUNT_REG
                MDIO_PHY_1_RX_NOT_OK_COUNT_REG
                MDIO_PHY_1_EXPANSION_1_REG
                MDIO_PHY_1_EXPANSION_2_REG
                MDIO_PHY_1_EXPANSION_REG_ACCESS_REG
                MDIO_PHY_1_SHADOW_18_REG
                MDIO_PHY_1_AUX_STATUS_REG
                MDIO_PHY_1_INT_STATUS_REG
                MDIO_PHY_1_INT_MASK_REG
                MDIO_PHY_1_SHADOW_1C_REG
                MDIO_PHY_1_SHADOW_1D_REG
                MDIO_PHY_1_TEST_REG
                MDIO_PHY_1_RESERVED_REG
                MDIO_PHY_2_CONTROL_REG
                MDIO_PHY_2_STATUS_REG
                MDIO_PHY_2_PHY_ID_HI_REG
                MDIO_PHY_2_PHY_ID_LO_REG
                MDIO_PHY_2_AUTONEGOTIATION_ADVERT_REG
                MDIO_PHY_2_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG
                MDIO_PHY_2_AUTONEG_EXPANSION_REG
                MDIO_PHY_2_AUTONEG_NEXT_PAGE_TX_REG
                MDIO_PHY_2_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG
                MDIO_PHY_2_MASTER_SLAVE_CTRL_REG
                MDIO_PHY_2_MASTER_SLAVE_STATUS_REG
                MDIO_PHY_2_PSE_CTRL_REG
                MDIO_PHY_2_PSE_STATUS_REG
                MDIO_PHY_2_MMD_ACCESS_CTRL_REG
                MDIO_PHY_2_MMD_ACCESS_STATUS_REG
                MDIO_PHY_2_EXTENDED_STATUS_REG
                MDIO_PHY_2_PHY_EXTENDED_CTRL_REG
                MDIO_PHY_2_PHY_EXTENDED_STATUS_REG
                MDIO_PHY_2_RX_ERROR_COUNT_REG
                MDIO_PHY_2_FALSE_CARRIER_SENSE_COUNT_REG
                MDIO_PHY_2_RX_NOT_OK_COUNT_REG
                MDIO_PHY_2_EXPANSION_1_REG
                MDIO_PHY_2_EXPANSION_2_REG
                MDIO_PHY_2_EXPANSION_REG_ACCESS_REG
                MDIO_PHY_2_SHADOW_18_REG
                MDIO_PHY_2_AUX_STATUS_REG
                MDIO_PHY_2_INT_STATUS_REG
                MDIO_PHY_2_INT_MASK_REG
                MDIO_PHY_2_SHADOW_1C_REG
                MDIO_PHY_2_SHADOW_1D_REG
                MDIO_PHY_2_TEST_REG
                MDIO_PHY_2_RESERVED_REG
                MDIO_PHY_3_CONTROL_REG
                MDIO_PHY_3_STATUS_REG
                MDIO_PHY_3_PHY_ID_HI_REG
                MDIO_PHY_3_PHY_ID_LO_REG
                MDIO_PHY_3_AUTONEGOTIATION_ADVERT_REG
                MDIO_PHY_3_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG
                MDIO_PHY_3_AUTONEG_EXPANSION_REG
                MDIO_PHY_3_AUTONEG_NEXT_PAGE_TX_REG
                MDIO_PHY_3_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG
                MDIO_PHY_3_MASTER_SLAVE_CTRL_REG
                MDIO_PHY_3_MASTER_SLAVE_STATUS_REG
                MDIO_PHY_3_PSE_CTRL_REG
                MDIO_PHY_3_PSE_STATUS_REG
                MDIO_PHY_3_MMD_ACCESS_CTRL_REG
                MDIO_PHY_3_MMD_ACCESS_STATUS_REG
                MDIO_PHY_3_EXTENDED_STATUS_REG
                MDIO_PHY_3_PHY_EXTENDED_CTRL_REG
                MDIO_PHY_3_PHY_EXTENDED_STATUS_REG
                MDIO_PHY_3_RX_ERROR_COUNT_REG
                MDIO_PHY_3_FALSE_CARRIER_SENSE_COUNT_REG
                MDIO_PHY_3_RX_NOT_OK_COUNT_REG
                MDIO_PHY_3_EXPANSION_1_REG
                MDIO_PHY_3_EXPANSION_2_REG
                MDIO_PHY_3_EXPANSION_REG_ACCESS_REG
                MDIO_PHY_3_SHADOW_18_REG
                MDIO_PHY_3_AUX_STATUS_REG
                MDIO_PHY_3_INT_STATUS_REG
                MDIO_PHY_3_INT_MASK_REG
                MDIO_PHY_3_SHADOW_1C_REG
                MDIO_PHY_3_SHADOW_1D_REG
                MDIO_PHY_3_TEST_REG
                MDIO_PHY_3_RESERVED_REG
                MDIO_PHY_GROUP_BASE_ADDR
                MDIO_PHY_GROUP_INST_OFFSET
                DMA_CTRL_REG
                DMA_NUM_INGRESS_PKTS_REG
                DMA_NUM_INGRESS_BYTES_REG
                DMA_NUM_EGRESS_PKTS_REG
                DMA_NUM_EGRESS_BYTES_REG
                DMA_NUM_TIMEOUTS_REG
                CLOCK_TEST_TICKS_REG
                SERIAL_TEST_CTRL_REG
                SERIAL_TEST_STATUS_REG
                SERIAL_TEST_CTRL_0_REG
                SERIAL_TEST_STATUS_0_REG
                SERIAL_TEST_NUM_FRAMES_SENT_0_HI_REG
                SERIAL_TEST_NUM_FRAMES_SENT_0_LO_REG
                SERIAL_TEST_NUM_FRAMES_RCVD_0_HI_REG
                SERIAL_TEST_NUM_FRAMES_RCVD_0_LO_REG
                SERIAL_TEST_CTRL_1_REG
                SERIAL_TEST_STATUS_1_REG
                SERIAL_TEST_NUM_FRAMES_SENT_1_HI_REG
                SERIAL_TEST_NUM_FRAMES_SENT_1_LO_REG
                SERIAL_TEST_NUM_FRAMES_RCVD_1_HI_REG
                SERIAL_TEST_NUM_FRAMES_RCVD_1_LO_REG
                SRAM_TEST_ERR_CNT_REG
                SRAM_TEST_ITER_NUM_REG
                SRAM_TEST_BAD_RUNS_REG
                SRAM_TEST_GOOD_RUNS_REG
                SRAM_TEST_STATUS_REG
                SRAM_TEST_EN_REG
                SRAM_TEST_CTRL_REG
                SRAM_TEST_RAND_SEED_HI_REG
                SRAM_TEST_RAND_SEED_LO_REG
                SRAM_TEST_LOG_ADDR_REG
                SRAM_TEST_LOG_EXP_DATA_HI_REG
                SRAM_TEST_LOG_EXP_DATA_LO_REG
                SRAM_TEST_LOG_RD_DATA_HI_REG
                SRAM_TEST_LOG_RD_DATA_LO_REG
                SRAM_MSB_SRAM1_RD_REG
                SRAM_MSB_SRAM1_WR_REG
                SRAM_MSB_SRAM2_RD_REG
                SRAM_MSB_SRAM2_WR_REG
                DRAM_TEST_ERR_CNT_REG
                DRAM_TEST_ITER_NUM_REG
                DRAM_TEST_BAD_RUNS_REG
                DRAM_TEST_GOOD_RUNS_REG
                DRAM_TEST_STATUS_REG
                DRAM_TEST_EN_REG
                DRAM_TEST_CTRL_REG
                DRAM_TEST_RAND_SEED_REG
                DRAM_TEST_LOG_ADDR_REG
                DRAM_TEST_LOG_EXP_DATA_HI_REG
                DRAM_TEST_LOG_EXP_DATA_LO_REG
                DRAM_TEST_LOG_RD_DATA_HI_REG
                DRAM_TEST_LOG_RD_DATA_LO_REG
                PHY_TEST_STATUS_REG
                PHY_TEST_CTRL_REG
                PHY_TEST_SIZE_REG
                PHY_TEST_PATTERN_REG
                PHY_TEST_INIT_SEQ_NO_REG
                PHY_TEST_PHY_0_TX_STATUS_REG
                PHY_TEST_PHY_0_TX_ITER_CNT_REG
                PHY_TEST_PHY_0_TX_PKT_CNT_REG
                PHY_TEST_PHY_0_TX_SEQ_NO_REG
                PHY_TEST_PHY_0_TX_RAND_SEED_REG
                PHY_TEST_PHY_0_RX_STATUS_REG
                PHY_TEST_PHY_0_RX_GOOD_PKT_CNT_REG
                PHY_TEST_PHY_0_RX_ERR_PKT_CNT_REG
                PHY_TEST_PHY_0_RX_SEQ_NO_REG
                PHY_TEST_PHY_0_RX_CTRL_REG
                PHY_TEST_PHY_0_RX_LOG_STATUS_REG
                PHY_TEST_PHY_0_RX_LOG_EXP_DATA_REG
                PHY_TEST_PHY_0_RX_LOG_RX_DATA_REG
                PHY_TEST_PHY_0_RX_LOG_CTRL_REG
                PHY_TEST_PHY_1_TX_STATUS_REG
                PHY_TEST_PHY_1_TX_ITER_CNT_REG
                PHY_TEST_PHY_1_TX_PKT_CNT_REG
                PHY_TEST_PHY_1_TX_SEQ_NO_REG
                PHY_TEST_PHY_1_TX_RAND_SEED_REG
                PHY_TEST_PHY_1_RX_STATUS_REG
                PHY_TEST_PHY_1_RX_GOOD_PKT_CNT_REG
                PHY_TEST_PHY_1_RX_ERR_PKT_CNT_REG
                PHY_TEST_PHY_1_RX_SEQ_NO_REG
                PHY_TEST_PHY_1_RX_CTRL_REG
                PHY_TEST_PHY_1_RX_LOG_STATUS_REG
                PHY_TEST_PHY_1_RX_LOG_EXP_DATA_REG
                PHY_TEST_PHY_1_RX_LOG_RX_DATA_REG
                PHY_TEST_PHY_1_RX_LOG_CTRL_REG
                PHY_TEST_PHY_2_TX_STATUS_REG
                PHY_TEST_PHY_2_TX_ITER_CNT_REG
                PHY_TEST_PHY_2_TX_PKT_CNT_REG
                PHY_TEST_PHY_2_TX_SEQ_NO_REG
                PHY_TEST_PHY_2_TX_RAND_SEED_REG
                PHY_TEST_PHY_2_RX_STATUS_REG
                PHY_TEST_PHY_2_RX_GOOD_PKT_CNT_REG
                PHY_TEST_PHY_2_RX_ERR_PKT_CNT_REG
                PHY_TEST_PHY_2_RX_SEQ_NO_REG
                PHY_TEST_PHY_2_RX_CTRL_REG
                PHY_TEST_PHY_2_RX_LOG_STATUS_REG
                PHY_TEST_PHY_2_RX_LOG_EXP_DATA_REG
                PHY_TEST_PHY_2_RX_LOG_RX_DATA_REG
                PHY_TEST_PHY_2_RX_LOG_CTRL_REG
                PHY_TEST_PHY_3_TX_STATUS_REG
                PHY_TEST_PHY_3_TX_ITER_CNT_REG
                PHY_TEST_PHY_3_TX_PKT_CNT_REG
                PHY_TEST_PHY_3_TX_SEQ_NO_REG
                PHY_TEST_PHY_3_TX_RAND_SEED_REG
                PHY_TEST_PHY_3_RX_STATUS_REG
                PHY_TEST_PHY_3_RX_GOOD_PKT_CNT_REG
                PHY_TEST_PHY_3_RX_ERR_PKT_CNT_REG
                PHY_TEST_PHY_3_RX_SEQ_NO_REG
                PHY_TEST_PHY_3_RX_CTRL_REG
                PHY_TEST_PHY_3_RX_LOG_STATUS_REG
                PHY_TEST_PHY_3_RX_LOG_EXP_DATA_REG
                PHY_TEST_PHY_3_RX_LOG_RX_DATA_REG
                PHY_TEST_PHY_3_RX_LOG_CTRL_REG
                PHY_TEST_PHY_GROUP_BASE_ADDR
                PHY_TEST_PHY_GROUP_INST_OFFSET
                DRAM_TEST_STATUS_DONE_POS_LO
                DRAM_TEST_STATUS_DONE_POS_HI
                DRAM_TEST_STATUS_DONE_WIDTH
                DRAM_TEST_STATUS_FAIL_POS_LO
                DRAM_TEST_STATUS_FAIL_POS_HI
                DRAM_TEST_STATUS_FAIL_WIDTH
                DRAM_TEST_STATUS_DONE_MASK
                DRAM_TEST_STATUS_FAIL_MASK
                DRAM_TEST_ENABLE_ENABLE_POS_LO
                DRAM_TEST_ENABLE_ENABLE_POS_HI
                DRAM_TEST_ENABLE_ENABLE_WIDTH
                DRAM_TEST_ENABLE_ENABLE_MASK
                DRAM_TEST_CTRL_RUN_POS   
                DRAM_TEST_CTRL_REPEAT_POS
                DRAM_TEST_CTRL_RUN       
                DRAM_TEST_CTRL_REPEAT    
                DMA_IFACE_CTRL_DISABLE_POS
                DMA_IFACE_CTRL_RESET_POS  
                DMA_IFACE_CTRL_DISABLE    
                DMA_IFACE_CTRL_RESET      
                MII_CTRL_RESET_POS            
                MII_CTRL_INTERNAL_LOOPBACK_POS
                MII_CTRL_SPEED_SEL_LO_POS     
                MII_CTRL_AUTONEG_ENABLE_POS   
                MII_CTRL_PWR_DOWN_POS         
                MII_CTRL_ISOLATE_POS          
                MII_CTRL_RESTART_AUTONEG_POS  
                MII_CTRL_DUPLEX_MODE_POS      
                MII_CTRL_COLLISION_TEST_EN_POS
                MII_CTRL_SPEED_SEL_HI_POS     
                MII_CTRL_RESET                
                MII_CTRL_INTERNAL_LOOPBACK    
                MII_CTRL_SPEED_SEL_LO         
                MII_CTRL_AUTONEG_ENABLE       
                MII_CTRL_PWR_DOWN             
                MII_CTRL_ISOLATE              
                MII_CTRL_RESTART_AUTONEG      
                MII_CTRL_DUPLEX_MODE          
                MII_CTRL_COLLISION_TEST_EN    
                MII_CTRL_SPEED_SEL_HI         
                MII_STATUS_100BASE_T4_CAPABLE_POS         
                MII_STATUS_100BASE_X_FULL_DPLX_CAPABLE_POS
                MII_STATUS_100BASE_X_HALF_DPLX_CAPABLE_POS
                MII_STATUS_10BASE_T_FULL_DPLX_CAPABLE_POS 
                MII_STATUS_10BASE_T_HALF_DPLX_CAPABLE_POS 
                MII_STATUS_10BASE_T2_FULL_DPLX_CAPABLE_POS
                MII_STATUS_10BASE_T2_HALF_DPLX_CAPABLE_POS
                MII_STATUS_EXTENDED_STATUS_POS            
                MII_STATUS_MF_PREAMBLE_SUPPRESS_POS       
                MII_STATUS_AUTONEG_COMPLETE_POS           
                MII_STATUS_REMOTE_FAULT_POS               
                MII_STATUS_AUTONEG_ABILITY_POS            
                MII_STATUS_LINK_STATUS_POS                
                MII_STATUS_JABBER_DETECT_POS              
                MII_STATUS_EXTENDED_CAPABILITY_POS        
                MII_STATUS_100BASE_T4_CAPABLE             
                MII_STATUS_100BASE_X_FULL_DPLX_CAPABLE    
                MII_STATUS_100BASE_X_HALF_DPLX_CAPABLE    
                MII_STATUS_10BASE_T_FULL_DPLX_CAPABLE     
                MII_STATUS_10BASE_T_HALF_DPLX_CAPABLE     
                MII_STATUS_10BASE_T2_FULL_DPLX_CAPABLE    
                MII_STATUS_10BASE_T2_HALF_DPLX_CAPABLE    
                MII_STATUS_EXTENDED_STATUS                
                MII_STATUS_MF_PREAMBLE_SUPPRESS           
                MII_STATUS_AUTONEG_COMPLETE               
                MII_STATUS_REMOTE_FAULT                   
                MII_STATUS_AUTONEG_ABILITY                
                MII_STATUS_LINK_STATUS                    
                MII_STATUS_JABBER_DETECT                  
                MII_STATUS_EXTENDED_CAPABILITY            
                PHY_TEST_STATUS_BUSY_POS
                PHY_TEST_STATUS_DONE_POS
                PHY_TEST_STATUS_GOOD_POS
                PHY_TEST_STATUS_BUSY    
                PHY_TEST_STATUS_DONE    
                PHY_TEST_STATUS_GOOD    
                PHY_TEST_CTRL_START_POS 
                PHY_TEST_CTRL_REPEAT_POS
                PHY_TEST_CTRL_START     
                PHY_TEST_CTRL_REPEAT    
                PHY_TEST_PATTERN_ENABLE_POS_LO
                PHY_TEST_PATTERN_ENABLE_POS_HI
                PHY_TEST_PATTERN_ENABLE_WIDTH
                PHY_TEST_PATTERN_ENABLE_MASK
                PHY_TEST_PHY_TX_STATUS_DONE_POS       
                PHY_TEST_PHY_TX_STATUS_CURR_PAT_POS_LO
                PHY_TEST_PHY_TX_STATUS_CURR_PAT_POS_HI
                PHY_TEST_PHY_TX_STATUS_CURR_PAT_WIDTH
                PHY_TEST_PHY_TX_STATUS_DONE           
                PHY_TEST_PHY_TX_STATUS_CURR_PAT_MASK
                PHY_TEST_PHY_RX_STATUS_DONE_POS             
                PHY_TEST_PHY_RX_STATUS_PASS_POS             
                PHY_TEST_PHY_RX_STATUS_LOCKED_POS           
                PHY_TEST_PHY_RX_STATUS_SEQ_NO_VALID_POS     
                PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_POS_LO
                PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_POS_HI
                PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_WIDTH
                PHY_TEST_PHY_RX_STATUS_DONE                 
                PHY_TEST_PHY_RX_STATUS_PASS                 
                PHY_TEST_PHY_RX_STATUS_LOCKED               
                PHY_TEST_PHY_RX_STATUS_SEQ_NO_VALID         
                PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_MASK
                PHY_TEST_PHY_RX_CTRL_RESET_GOOD_POS
                PHY_TEST_PHY_RX_CTRL_RESET_ERR_POS 
                PHY_TEST_PHY_RX_CTRL_RESET_GOOD    
                PHY_TEST_PHY_RX_CTRL_RESET_ERR     
                PHY_TEST_PHY_RX_LOG_STATUS_FULL_POS    
                PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_POS_LO
                PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_POS_HI
                PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_WIDTH
                PHY_TEST_PHY_RX_LOG_STATUS_FULL        
                PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_MASK
                PHY_TEST_PHY_RX_LOG_CTRL_RESET_POS
                PHY_TEST_PHY_RX_LOG_CTRL_RESET    
                SERIAL_TEST_GLBL_CTRL_RESTART_POS
                SERIAL_TEST_GLBL_CTRL_NONSTOP_POS
                SERIAL_TEST_GLBL_CTRL_RESTART    
                SERIAL_TEST_GLBL_CTRL_NONSTOP    
                SERIAL_TEST_IFACE_CTRL_RESET_POS      
                SERIAL_TEST_IFACE_CTRL_LOOPBACK_POS_LO
                SERIAL_TEST_IFACE_CTRL_LOOPBACK_POS_HI
                SERIAL_TEST_IFACE_CTRL_LOOPBACK_WIDTH
                SERIAL_TEST_IFACE_CTRL_RESET          
                SERIAL_TEST_IFACE_CTRL_LOOPBACK_MASK
                SERIAL_TEST_GLBL_STATUS_SUCCESSFUL_POS
                SERIAL_TEST_GLBL_STATUS_DONE_POS      
                SERIAL_TEST_GLBL_STATUS_RUNNING_POS   
                SERIAL_TEST_GLBL_STATUS_COUNT_POS_LO
                SERIAL_TEST_GLBL_STATUS_COUNT_POS_HI
                SERIAL_TEST_GLBL_STATUS_COUNT_WIDTH
                SERIAL_TEST_GLBL_STATUS_SUCCESSFUL    
                SERIAL_TEST_GLBL_STATUS_DONE          
                SERIAL_TEST_GLBL_STATUS_RUNNING       
                SERIAL_TEST_GLBL_STATUS_COUNT_MASK
                SERIAL_TEST_IFACE_STATUS_LANE_UP_POS       
                SERIAL_TEST_IFACE_STATUS_CHANNEL_UP_POS    
                SERIAL_TEST_IFACE_STATUS_HARD_ERROR_POS    
                SERIAL_TEST_IFACE_STATUS_SOFT_ERROR_POS    
                SERIAL_TEST_IFACE_STATUS_FRAME_ERROR_POS   
                SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_POS_LO
                SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_POS_HI
                SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_WIDTH
                SERIAL_TEST_IFACE_STATUS_LANE_UP           
                SERIAL_TEST_IFACE_STATUS_CHANNEL_UP        
                SERIAL_TEST_IFACE_STATUS_HARD_ERROR        
                SERIAL_TEST_IFACE_STATUS_SOFT_ERROR        
                SERIAL_TEST_IFACE_STATUS_FRAME_ERROR       
                SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_MASK
                SRAM_TEST_STATUS_DONE_1_POS_LO
                SRAM_TEST_STATUS_DONE_1_POS_HI
                SRAM_TEST_STATUS_DONE_1_WIDTH
                SRAM_TEST_STATUS_FAIL_1_POS_LO
                SRAM_TEST_STATUS_FAIL_1_POS_HI
                SRAM_TEST_STATUS_FAIL_1_WIDTH
                SRAM_TEST_STATUS_DONE_2_POS_LO
                SRAM_TEST_STATUS_DONE_2_POS_HI
                SRAM_TEST_STATUS_DONE_2_WIDTH
                SRAM_TEST_STATUS_FAIL_2_POS_LO
                SRAM_TEST_STATUS_FAIL_2_POS_HI
                SRAM_TEST_STATUS_FAIL_2_WIDTH
                SRAM_TEST_STATUS_DONE_1_MASK
                SRAM_TEST_STATUS_FAIL_1_MASK
                SRAM_TEST_STATUS_DONE_2_MASK
                SRAM_TEST_STATUS_FAIL_2_MASK
                SRAM_TEST_ENABLE_TEST_EN_POS_LO
                SRAM_TEST_ENABLE_TEST_EN_POS_HI
                SRAM_TEST_ENABLE_TEST_EN_WIDTH
                SRAM_TEST_ENABLE_SRAM_EN_POS_LO
                SRAM_TEST_ENABLE_SRAM_EN_POS_HI
                SRAM_TEST_ENABLE_SRAM_EN_WIDTH
                SRAM_TEST_ENABLE_TEST_EN_MASK
                SRAM_TEST_ENABLE_SRAM_EN_MASK
                SRAM_TEST_CTRL_RUN_POS          
                SRAM_TEST_CTRL_REPEAT_POS       
                SRAM_TEST_CTRL_RESET_ERR_CNT_POS
                SRAM_TEST_CTRL_RUN              
                SRAM_TEST_CTRL_REPEAT           
                SRAM_TEST_CTRL_RESET_ERR_CNT    
            );


# -------------------------------------
#   Version Information
# -------------------------------------
sub DEVICE_ID ()        { 5; }
sub DEVICE_MAJOR ()     { 1; }
sub DEVICE_MINOR ()     { 1; }
sub DEVICE_REVISION ()  { 0; }
sub DEVICE_PROJ_DIR ()  { "selftest"; }
sub DEVICE_PROJ_NAME () { "Selftest"; }
sub DEVICE_PROJ_DESC () { "NetFPGA selftest -- exercises all major subsystems of the board"; }


# -------------------------------------
#   Constants
# -------------------------------------

# ===== File: lib/verilog/core/common/xml/global.xml =====

# Maximum number of phy ports
sub MAX_PHY_PORTS ()                 { 4;}

# PCI address bus width
sub PCI_ADDR_WIDTH ()                { 32;}

# PCI data bus width
sub PCI_DATA_WIDTH ()                { 32;}

# PCI byte enable bus width
sub PCI_BE_WIDTH ()                  { 4;}

# CPCI--CNET address bus width. This is byte addresses even though bottom bits are zero.
sub CPCI_CNET_ADDR_WIDTH ()          { 27;}

# CPCI--CNET data bus width
sub CPCI_CNET_DATA_WIDTH ()          { 32;}

# CPCI--Virtex address bus width. This is byte addresses even though bottom bits are zero.
sub CPCI_NF2_ADDR_WIDTH ()           { 27;}

# CPCI--Virtex data bus width
sub CPCI_NF2_DATA_WIDTH ()           { 32;}

# DMA data bus width
sub DMA_DATA_WIDTH ()                { 32;}

# DMA control bus width
sub DMA_CTRL_WIDTH ()                { 4;}

# CPCI debug bus width
sub CPCI_DEBUG_DATA_WIDTH ()         { 29;}

# SRAM address width
sub SRAM_ADDR_WIDTH ()               { 19;}

# SRAM data width
sub SRAM_DATA_WIDTH ()               { 36;}

# DRAM address width
sub DRAM_ADDR_WIDTH ()               { 24;}


# ===== File: lib/verilog/core/common/xml/nf_defines.xml =====

# Clock period of 125 MHz clock in ns
sub FAST_CLK_PERIOD ()               { 8;}

# Clock period of 62.5 MHz clock in ns
sub SLOW_CLK_PERIOD ()               { 16;}

# Header value used by the IO queues
sub IO_QUEUE_STAGE_NUM ()             { 0xff;}

# Data path data width
sub DATA_WIDTH ()                    { 64;}

# Data path control width
sub CTRL_WIDTH ()                    { 8;}


# ===== File: lib/verilog/core/utils/xml/device_id_reg.xml =====

# Total number of registers
sub DEV_ID_NUM_REGS ()               { 64;}

# Number of non string registers
sub DEV_ID_NON_STR_REGS ()           { 7;}

# Length of MD5 sum (bits)
sub DEV_ID_MD5SUM_LENGTH ()          { 128;}

# Project directory length (in words, not chars)
sub DEV_ID_PROJ_DIR_WORD_LEN ()      { 16;}

# Project directory length (in bytes/chars)
sub DEV_ID_PROJ_DIR_BYTE_LEN ()      { 64;}

# Project directory length (in bits)
sub DEV_ID_PROJ_DIR_BIT_LEN ()       { 512;}

# Project name length (in words, not chars)
sub DEV_ID_PROJ_NAME_WORD_LEN ()     { 16;}

# Project name length (in bytes/chars)
sub DEV_ID_PROJ_NAME_BYTE_LEN ()     { 64;}

# Project name length (in bits)
sub DEV_ID_PROJ_NAME_BIT_LEN ()      { 512;}

# Device description length (in words, not chars)
sub DEV_ID_PROJ_DESC_WORD_LEN ()     { 25;}

# Device description length (in bytes/chars)
sub DEV_ID_PROJ_DESC_BYTE_LEN ()     { 100;}

# Device description length (in bits)
sub DEV_ID_PROJ_DESC_BIT_LEN ()      { 800;}

# MD5 identifier (v1): MD5 sum of the string "device_id.v"
sub DEV_ID_MD5_VALUE_V1_0 ()         { 0x4071736d;}
sub DEV_ID_MD5_VALUE_V1_1 ()         { 0x8a603d2b;}
sub DEV_ID_MD5_VALUE_V1_2 ()         { 0x4d55f629;}
sub DEV_ID_MD5_VALUE_V1_3 ()         { 0x89a73c95;}

# MD5 identifier (v2): MD5 sum of the string "device_id.v:v2"
sub DEV_ID_MD5_VALUE_V2_0 ()         { 0x5e461ffe;}
sub DEV_ID_MD5_VALUE_V2_1 ()         { 0x439725c9;}
sub DEV_ID_MD5_VALUE_V2_2 ()         { 0x279a22a1;}
sub DEV_ID_MD5_VALUE_V2_3 ()         { 0x855f6c53;}

# Total number of registers (v1)
sub DEV_ID_NUM_REGS_V1 ()            { 64;}

# Number of non string registers (v1)
sub DEV_ID_NON_STR_REGS_V1 ()        { 7;}

# Project name length (v1: in words, not chars)
sub DEV_ID_PROJ_NAME_WORD_LEN_V1 ()  { 25;}

# Project name length (v1: in bytes/chars)
sub DEV_ID_PROJ_NAME_BYTE_LEN_V1 ()  { 100;}

# Project name length (v1: in bits)
sub DEV_ID_PROJ_NAME_BIT_LEN_V1 ()   { 800;}


# ===== File: projects/selftest/include/dram_test.xml =====

# Offset between consecutive error log entries
sub DRAM_TEST_LOG_OFFSET ()           { 0x00000020;}

# Number of DRAM test patterns
sub DRAM_TEST_NUM_PATTERNS ()        { 5;}


# ===== File: projects/selftest/include/phy_test.xml =====

# Number of different test patterns
sub PHY_TEST_NUM_PATTERNS ()         { 5;}


# ===== File: projects/selftest/include/serial_test.xml =====

# Mask to select only the error count (after shifting)
sub SERIAL_TEST_ERROR_COUNT_MASK ()   { 0x0000ffff;}


# ===== File: projects/selftest/include/sram_test.xml =====

sub SRAM_TEST_LOG_OFFSET ()           { 0x00000020;}

# Number of SRAM test patterns
sub SRAM_TEST_NUM_PATTERNS ()        { 5;}

# Number of SRAM devices on the board
sub SRAM_TEST_NUM_SRAMS ()           { 2;}



## -------------------------------------
##   Modules
## -------------------------------------

# Module tags
sub CORE_BASE_ADDR ()               { 0x0000000; }
sub DEV_ID_BASE_ADDR ()             { 0x0400000; }
sub MDIO_BASE_ADDR ()               { 0x0440000; }
sub DMA_BASE_ADDR ()                { 0x0500000; }
sub REG_FILE_BASE_ADDR ()           { 0x0800000; }
sub REG_REFLECT_TEST_BASE_ADDR ()   { 0x0840000; }
sub CLOCK_TEST_BASE_ADDR ()         { 0x0880000; }
sub SERIAL_TEST_BASE_ADDR ()        { 0x08c0000; }
sub SRAM_TEST_BASE_ADDR ()          { 0x0900000; }
sub SRAM_MSB_BASE_ADDR ()           { 0x0940000; }
sub DRAM_TEST_BASE_ADDR ()          { 0x0980000; }
sub PHY_TEST_BASE_ADDR ()           { 0x09c0000; }
sub SRAM_BASE_ADDR ()               { 0x1000000; }
sub UDP_BASE_ADDR ()                { 0x2000000; }
sub DRAM_BASE_ADDR ()               { 0x4000000; }



# -------------------------------------
#   Registers
# -------------------------------------

# Name: device_id (DEV_ID)
# Description: Device identification
# File: lib/verilog/core/utils/xml/device_id_reg.xml
sub DEV_ID_MD5_0_REG ()          { 0x0400000;}
sub DEV_ID_MD5_1_REG ()          { 0x0400004;}
sub DEV_ID_MD5_2_REG ()          { 0x0400008;}
sub DEV_ID_MD5_3_REG ()          { 0x040000c;}
sub DEV_ID_DEVICE_ID_REG ()      { 0x0400010;}
sub DEV_ID_VERSION_REG ()        { 0x0400014;}
sub DEV_ID_CPCI_ID_REG ()        { 0x0400018;}
sub DEV_ID_PROJ_DIR_0_REG ()     { 0x040001c;}
sub DEV_ID_PROJ_DIR_1_REG ()     { 0x0400020;}
sub DEV_ID_PROJ_DIR_2_REG ()     { 0x0400024;}
sub DEV_ID_PROJ_DIR_3_REG ()     { 0x0400028;}
sub DEV_ID_PROJ_DIR_4_REG ()     { 0x040002c;}
sub DEV_ID_PROJ_DIR_5_REG ()     { 0x0400030;}
sub DEV_ID_PROJ_DIR_6_REG ()     { 0x0400034;}
sub DEV_ID_PROJ_DIR_7_REG ()     { 0x0400038;}
sub DEV_ID_PROJ_DIR_8_REG ()     { 0x040003c;}
sub DEV_ID_PROJ_DIR_9_REG ()     { 0x0400040;}
sub DEV_ID_PROJ_DIR_10_REG ()    { 0x0400044;}
sub DEV_ID_PROJ_DIR_11_REG ()    { 0x0400048;}
sub DEV_ID_PROJ_DIR_12_REG ()    { 0x040004c;}
sub DEV_ID_PROJ_DIR_13_REG ()    { 0x0400050;}
sub DEV_ID_PROJ_DIR_14_REG ()    { 0x0400054;}
sub DEV_ID_PROJ_DIR_15_REG ()    { 0x0400058;}
sub DEV_ID_PROJ_NAME_0_REG ()    { 0x040005c;}
sub DEV_ID_PROJ_NAME_1_REG ()    { 0x0400060;}
sub DEV_ID_PROJ_NAME_2_REG ()    { 0x0400064;}
sub DEV_ID_PROJ_NAME_3_REG ()    { 0x0400068;}
sub DEV_ID_PROJ_NAME_4_REG ()    { 0x040006c;}
sub DEV_ID_PROJ_NAME_5_REG ()    { 0x0400070;}
sub DEV_ID_PROJ_NAME_6_REG ()    { 0x0400074;}
sub DEV_ID_PROJ_NAME_7_REG ()    { 0x0400078;}
sub DEV_ID_PROJ_NAME_8_REG ()    { 0x040007c;}
sub DEV_ID_PROJ_NAME_9_REG ()    { 0x0400080;}
sub DEV_ID_PROJ_NAME_10_REG ()   { 0x0400084;}
sub DEV_ID_PROJ_NAME_11_REG ()   { 0x0400088;}
sub DEV_ID_PROJ_NAME_12_REG ()   { 0x040008c;}
sub DEV_ID_PROJ_NAME_13_REG ()   { 0x0400090;}
sub DEV_ID_PROJ_NAME_14_REG ()   { 0x0400094;}
sub DEV_ID_PROJ_NAME_15_REG ()   { 0x0400098;}
sub DEV_ID_PROJ_DESC_0_REG ()    { 0x040009c;}
sub DEV_ID_PROJ_DESC_1_REG ()    { 0x04000a0;}
sub DEV_ID_PROJ_DESC_2_REG ()    { 0x04000a4;}
sub DEV_ID_PROJ_DESC_3_REG ()    { 0x04000a8;}
sub DEV_ID_PROJ_DESC_4_REG ()    { 0x04000ac;}
sub DEV_ID_PROJ_DESC_5_REG ()    { 0x04000b0;}
sub DEV_ID_PROJ_DESC_6_REG ()    { 0x04000b4;}
sub DEV_ID_PROJ_DESC_7_REG ()    { 0x04000b8;}
sub DEV_ID_PROJ_DESC_8_REG ()    { 0x04000bc;}
sub DEV_ID_PROJ_DESC_9_REG ()    { 0x04000c0;}
sub DEV_ID_PROJ_DESC_10_REG ()   { 0x04000c4;}
sub DEV_ID_PROJ_DESC_11_REG ()   { 0x04000c8;}
sub DEV_ID_PROJ_DESC_12_REG ()   { 0x04000cc;}
sub DEV_ID_PROJ_DESC_13_REG ()   { 0x04000d0;}
sub DEV_ID_PROJ_DESC_14_REG ()   { 0x04000d4;}
sub DEV_ID_PROJ_DESC_15_REG ()   { 0x04000d8;}
sub DEV_ID_PROJ_DESC_16_REG ()   { 0x04000dc;}
sub DEV_ID_PROJ_DESC_17_REG ()   { 0x04000e0;}
sub DEV_ID_PROJ_DESC_18_REG ()   { 0x04000e4;}
sub DEV_ID_PROJ_DESC_19_REG ()   { 0x04000e8;}
sub DEV_ID_PROJ_DESC_20_REG ()   { 0x04000ec;}
sub DEV_ID_PROJ_DESC_21_REG ()   { 0x04000f0;}
sub DEV_ID_PROJ_DESC_22_REG ()   { 0x04000f4;}
sub DEV_ID_PROJ_DESC_23_REG ()   { 0x04000f8;}
sub DEV_ID_PROJ_DESC_24_REG ()   { 0x04000fc;}

# Name: mdio (MDIO)
# Description: MDIO interface
# File: lib/verilog/core/io/mdio/xml/mdio.xml
sub MDIO_PHY_0_CONTROL_REG ()                                  { 0x0440000;}
sub MDIO_PHY_0_STATUS_REG ()                                   { 0x0440004;}
sub MDIO_PHY_0_PHY_ID_HI_REG ()                                { 0x0440008;}
sub MDIO_PHY_0_PHY_ID_LO_REG ()                                { 0x044000c;}
sub MDIO_PHY_0_AUTONEGOTIATION_ADVERT_REG ()                   { 0x0440010;}
sub MDIO_PHY_0_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG ()   { 0x0440014;}
sub MDIO_PHY_0_AUTONEG_EXPANSION_REG ()                        { 0x0440018;}
sub MDIO_PHY_0_AUTONEG_NEXT_PAGE_TX_REG ()                     { 0x044001c;}
sub MDIO_PHY_0_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG ()      { 0x0440020;}
sub MDIO_PHY_0_MASTER_SLAVE_CTRL_REG ()                        { 0x0440024;}
sub MDIO_PHY_0_MASTER_SLAVE_STATUS_REG ()                      { 0x0440028;}
sub MDIO_PHY_0_PSE_CTRL_REG ()                                 { 0x044002c;}
sub MDIO_PHY_0_PSE_STATUS_REG ()                               { 0x0440030;}
sub MDIO_PHY_0_MMD_ACCESS_CTRL_REG ()                          { 0x0440034;}
sub MDIO_PHY_0_MMD_ACCESS_STATUS_REG ()                        { 0x0440038;}
sub MDIO_PHY_0_EXTENDED_STATUS_REG ()                          { 0x044003c;}
sub MDIO_PHY_0_PHY_EXTENDED_CTRL_REG ()                        { 0x0440040;}
sub MDIO_PHY_0_PHY_EXTENDED_STATUS_REG ()                      { 0x0440044;}
sub MDIO_PHY_0_RX_ERROR_COUNT_REG ()                           { 0x0440048;}
sub MDIO_PHY_0_FALSE_CARRIER_SENSE_COUNT_REG ()                { 0x044004c;}
sub MDIO_PHY_0_RX_NOT_OK_COUNT_REG ()                          { 0x0440050;}
sub MDIO_PHY_0_EXPANSION_1_REG ()                              { 0x0440054;}
sub MDIO_PHY_0_EXPANSION_2_REG ()                              { 0x0440058;}
sub MDIO_PHY_0_EXPANSION_REG_ACCESS_REG ()                     { 0x044005c;}
sub MDIO_PHY_0_SHADOW_18_REG ()                                { 0x0440060;}
sub MDIO_PHY_0_AUX_STATUS_REG ()                               { 0x0440064;}
sub MDIO_PHY_0_INT_STATUS_REG ()                               { 0x0440068;}
sub MDIO_PHY_0_INT_MASK_REG ()                                 { 0x044006c;}
sub MDIO_PHY_0_SHADOW_1C_REG ()                                { 0x0440070;}
sub MDIO_PHY_0_SHADOW_1D_REG ()                                { 0x0440074;}
sub MDIO_PHY_0_TEST_REG ()                                     { 0x0440078;}
sub MDIO_PHY_0_RESERVED_REG ()                                 { 0x044007c;}
sub MDIO_PHY_1_CONTROL_REG ()                                  { 0x0440080;}
sub MDIO_PHY_1_STATUS_REG ()                                   { 0x0440084;}
sub MDIO_PHY_1_PHY_ID_HI_REG ()                                { 0x0440088;}
sub MDIO_PHY_1_PHY_ID_LO_REG ()                                { 0x044008c;}
sub MDIO_PHY_1_AUTONEGOTIATION_ADVERT_REG ()                   { 0x0440090;}
sub MDIO_PHY_1_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG ()   { 0x0440094;}
sub MDIO_PHY_1_AUTONEG_EXPANSION_REG ()                        { 0x0440098;}
sub MDIO_PHY_1_AUTONEG_NEXT_PAGE_TX_REG ()                     { 0x044009c;}
sub MDIO_PHY_1_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG ()      { 0x04400a0;}
sub MDIO_PHY_1_MASTER_SLAVE_CTRL_REG ()                        { 0x04400a4;}
sub MDIO_PHY_1_MASTER_SLAVE_STATUS_REG ()                      { 0x04400a8;}
sub MDIO_PHY_1_PSE_CTRL_REG ()                                 { 0x04400ac;}
sub MDIO_PHY_1_PSE_STATUS_REG ()                               { 0x04400b0;}
sub MDIO_PHY_1_MMD_ACCESS_CTRL_REG ()                          { 0x04400b4;}
sub MDIO_PHY_1_MMD_ACCESS_STATUS_REG ()                        { 0x04400b8;}
sub MDIO_PHY_1_EXTENDED_STATUS_REG ()                          { 0x04400bc;}
sub MDIO_PHY_1_PHY_EXTENDED_CTRL_REG ()                        { 0x04400c0;}
sub MDIO_PHY_1_PHY_EXTENDED_STATUS_REG ()                      { 0x04400c4;}
sub MDIO_PHY_1_RX_ERROR_COUNT_REG ()                           { 0x04400c8;}
sub MDIO_PHY_1_FALSE_CARRIER_SENSE_COUNT_REG ()                { 0x04400cc;}
sub MDIO_PHY_1_RX_NOT_OK_COUNT_REG ()                          { 0x04400d0;}
sub MDIO_PHY_1_EXPANSION_1_REG ()                              { 0x04400d4;}
sub MDIO_PHY_1_EXPANSION_2_REG ()                              { 0x04400d8;}
sub MDIO_PHY_1_EXPANSION_REG_ACCESS_REG ()                     { 0x04400dc;}
sub MDIO_PHY_1_SHADOW_18_REG ()                                { 0x04400e0;}
sub MDIO_PHY_1_AUX_STATUS_REG ()                               { 0x04400e4;}
sub MDIO_PHY_1_INT_STATUS_REG ()                               { 0x04400e8;}
sub MDIO_PHY_1_INT_MASK_REG ()                                 { 0x04400ec;}
sub MDIO_PHY_1_SHADOW_1C_REG ()                                { 0x04400f0;}
sub MDIO_PHY_1_SHADOW_1D_REG ()                                { 0x04400f4;}
sub MDIO_PHY_1_TEST_REG ()                                     { 0x04400f8;}
sub MDIO_PHY_1_RESERVED_REG ()                                 { 0x04400fc;}
sub MDIO_PHY_2_CONTROL_REG ()                                  { 0x0440100;}
sub MDIO_PHY_2_STATUS_REG ()                                   { 0x0440104;}
sub MDIO_PHY_2_PHY_ID_HI_REG ()                                { 0x0440108;}
sub MDIO_PHY_2_PHY_ID_LO_REG ()                                { 0x044010c;}
sub MDIO_PHY_2_AUTONEGOTIATION_ADVERT_REG ()                   { 0x0440110;}
sub MDIO_PHY_2_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG ()   { 0x0440114;}
sub MDIO_PHY_2_AUTONEG_EXPANSION_REG ()                        { 0x0440118;}
sub MDIO_PHY_2_AUTONEG_NEXT_PAGE_TX_REG ()                     { 0x044011c;}
sub MDIO_PHY_2_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG ()      { 0x0440120;}
sub MDIO_PHY_2_MASTER_SLAVE_CTRL_REG ()                        { 0x0440124;}
sub MDIO_PHY_2_MASTER_SLAVE_STATUS_REG ()                      { 0x0440128;}
sub MDIO_PHY_2_PSE_CTRL_REG ()                                 { 0x044012c;}
sub MDIO_PHY_2_PSE_STATUS_REG ()                               { 0x0440130;}
sub MDIO_PHY_2_MMD_ACCESS_CTRL_REG ()                          { 0x0440134;}
sub MDIO_PHY_2_MMD_ACCESS_STATUS_REG ()                        { 0x0440138;}
sub MDIO_PHY_2_EXTENDED_STATUS_REG ()                          { 0x044013c;}
sub MDIO_PHY_2_PHY_EXTENDED_CTRL_REG ()                        { 0x0440140;}
sub MDIO_PHY_2_PHY_EXTENDED_STATUS_REG ()                      { 0x0440144;}
sub MDIO_PHY_2_RX_ERROR_COUNT_REG ()                           { 0x0440148;}
sub MDIO_PHY_2_FALSE_CARRIER_SENSE_COUNT_REG ()                { 0x044014c;}
sub MDIO_PHY_2_RX_NOT_OK_COUNT_REG ()                          { 0x0440150;}
sub MDIO_PHY_2_EXPANSION_1_REG ()                              { 0x0440154;}
sub MDIO_PHY_2_EXPANSION_2_REG ()                              { 0x0440158;}
sub MDIO_PHY_2_EXPANSION_REG_ACCESS_REG ()                     { 0x044015c;}
sub MDIO_PHY_2_SHADOW_18_REG ()                                { 0x0440160;}
sub MDIO_PHY_2_AUX_STATUS_REG ()                               { 0x0440164;}
sub MDIO_PHY_2_INT_STATUS_REG ()                               { 0x0440168;}
sub MDIO_PHY_2_INT_MASK_REG ()                                 { 0x044016c;}
sub MDIO_PHY_2_SHADOW_1C_REG ()                                { 0x0440170;}
sub MDIO_PHY_2_SHADOW_1D_REG ()                                { 0x0440174;}
sub MDIO_PHY_2_TEST_REG ()                                     { 0x0440178;}
sub MDIO_PHY_2_RESERVED_REG ()                                 { 0x044017c;}
sub MDIO_PHY_3_CONTROL_REG ()                                  { 0x0440180;}
sub MDIO_PHY_3_STATUS_REG ()                                   { 0x0440184;}
sub MDIO_PHY_3_PHY_ID_HI_REG ()                                { 0x0440188;}
sub MDIO_PHY_3_PHY_ID_LO_REG ()                                { 0x044018c;}
sub MDIO_PHY_3_AUTONEGOTIATION_ADVERT_REG ()                   { 0x0440190;}
sub MDIO_PHY_3_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG ()   { 0x0440194;}
sub MDIO_PHY_3_AUTONEG_EXPANSION_REG ()                        { 0x0440198;}
sub MDIO_PHY_3_AUTONEG_NEXT_PAGE_TX_REG ()                     { 0x044019c;}
sub MDIO_PHY_3_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG ()      { 0x04401a0;}
sub MDIO_PHY_3_MASTER_SLAVE_CTRL_REG ()                        { 0x04401a4;}
sub MDIO_PHY_3_MASTER_SLAVE_STATUS_REG ()                      { 0x04401a8;}
sub MDIO_PHY_3_PSE_CTRL_REG ()                                 { 0x04401ac;}
sub MDIO_PHY_3_PSE_STATUS_REG ()                               { 0x04401b0;}
sub MDIO_PHY_3_MMD_ACCESS_CTRL_REG ()                          { 0x04401b4;}
sub MDIO_PHY_3_MMD_ACCESS_STATUS_REG ()                        { 0x04401b8;}
sub MDIO_PHY_3_EXTENDED_STATUS_REG ()                          { 0x04401bc;}
sub MDIO_PHY_3_PHY_EXTENDED_CTRL_REG ()                        { 0x04401c0;}
sub MDIO_PHY_3_PHY_EXTENDED_STATUS_REG ()                      { 0x04401c4;}
sub MDIO_PHY_3_RX_ERROR_COUNT_REG ()                           { 0x04401c8;}
sub MDIO_PHY_3_FALSE_CARRIER_SENSE_COUNT_REG ()                { 0x04401cc;}
sub MDIO_PHY_3_RX_NOT_OK_COUNT_REG ()                          { 0x04401d0;}
sub MDIO_PHY_3_EXPANSION_1_REG ()                              { 0x04401d4;}
sub MDIO_PHY_3_EXPANSION_2_REG ()                              { 0x04401d8;}
sub MDIO_PHY_3_EXPANSION_REG_ACCESS_REG ()                     { 0x04401dc;}
sub MDIO_PHY_3_SHADOW_18_REG ()                                { 0x04401e0;}
sub MDIO_PHY_3_AUX_STATUS_REG ()                               { 0x04401e4;}
sub MDIO_PHY_3_INT_STATUS_REG ()                               { 0x04401e8;}
sub MDIO_PHY_3_INT_MASK_REG ()                                 { 0x04401ec;}
sub MDIO_PHY_3_SHADOW_1C_REG ()                                { 0x04401f0;}
sub MDIO_PHY_3_SHADOW_1D_REG ()                                { 0x04401f4;}
sub MDIO_PHY_3_TEST_REG ()                                     { 0x04401f8;}
sub MDIO_PHY_3_RESERVED_REG ()                                 { 0x04401fc;}

sub MDIO_PHY_GROUP_BASE_ADDR ()  { 0x0440000; }
sub MDIO_PHY_GROUP_INST_OFFSET() { 0x0000080; }

# Name: dma (DMA)
# Description: DMA transfer module
# File: lib/verilog/core/dma/xml/dma.xml
sub DMA_CTRL_REG ()                { 0x0500000;}
sub DMA_NUM_INGRESS_PKTS_REG ()    { 0x0500004;}
sub DMA_NUM_INGRESS_BYTES_REG ()   { 0x0500008;}
sub DMA_NUM_EGRESS_PKTS_REG ()     { 0x050000c;}
sub DMA_NUM_EGRESS_BYTES_REG ()    { 0x0500010;}
sub DMA_NUM_TIMEOUTS_REG ()        { 0x0500014;}

# Name: reg_file (REG_FILE)
# Description: Register file test (simple RAM)
# File: projects/selftest/include/reg_file.xml

# Name: reg_reflect (REG_REFLECT_TEST)
# Description: Test module that returns the register address as the register value
# File: projects/selftest/include/reg_reflect.xml

# Name: clock_test (CLOCK_TEST)
# Description: Test the clock by measuring clock ticks
# File: projects/selftest/include/clock_test.xml
sub CLOCK_TEST_TICKS_REG ()   { 0x0880000;}

# Name: serial_test (SERIAL_TEST)
# Description: Serial test registers for Selftest
# File: projects/selftest/include/serial_test.xml
sub SERIAL_TEST_CTRL_REG ()                   { 0x08c0000;}
sub SERIAL_TEST_STATUS_REG ()                 { 0x08c0004;}
sub SERIAL_TEST_CTRL_0_REG ()                 { 0x08c0008;}
sub SERIAL_TEST_STATUS_0_REG ()               { 0x08c000c;}
sub SERIAL_TEST_NUM_FRAMES_SENT_0_HI_REG ()   { 0x08c0010;}
sub SERIAL_TEST_NUM_FRAMES_SENT_0_LO_REG ()   { 0x08c0014;}
sub SERIAL_TEST_NUM_FRAMES_RCVD_0_HI_REG ()   { 0x08c0018;}
sub SERIAL_TEST_NUM_FRAMES_RCVD_0_LO_REG ()   { 0x08c001c;}
sub SERIAL_TEST_CTRL_1_REG ()                 { 0x08c0020;}
sub SERIAL_TEST_STATUS_1_REG ()               { 0x08c0024;}
sub SERIAL_TEST_NUM_FRAMES_SENT_1_HI_REG ()   { 0x08c0028;}
sub SERIAL_TEST_NUM_FRAMES_SENT_1_LO_REG ()   { 0x08c002c;}
sub SERIAL_TEST_NUM_FRAMES_RCVD_1_HI_REG ()   { 0x08c0030;}
sub SERIAL_TEST_NUM_FRAMES_RCVD_1_LO_REG ()   { 0x08c0034;}

# Name: sram_test (SRAM_TEST)
# Description: SRAM test module
# File: projects/selftest/include/sram_test.xml
sub SRAM_TEST_ERR_CNT_REG ()           { 0x0900000;}
sub SRAM_TEST_ITER_NUM_REG ()          { 0x0900004;}
sub SRAM_TEST_BAD_RUNS_REG ()          { 0x0900008;}
sub SRAM_TEST_GOOD_RUNS_REG ()         { 0x090000c;}
sub SRAM_TEST_STATUS_REG ()            { 0x0900010;}
sub SRAM_TEST_EN_REG ()                { 0x0900014;}
sub SRAM_TEST_CTRL_REG ()              { 0x0900018;}
sub SRAM_TEST_RAND_SEED_HI_REG ()      { 0x090001c;}
sub SRAM_TEST_RAND_SEED_LO_REG ()      { 0x0900020;}
sub SRAM_TEST_LOG_ADDR_REG ()          { 0x0920000;}
sub SRAM_TEST_LOG_EXP_DATA_HI_REG ()   { 0x0920004;}
sub SRAM_TEST_LOG_EXP_DATA_LO_REG ()   { 0x0920008;}
sub SRAM_TEST_LOG_RD_DATA_HI_REG ()    { 0x092000c;}
sub SRAM_TEST_LOG_RD_DATA_LO_REG ()    { 0x0920010;}

# Name: sram_msb (SRAM_MSB)
# Description: SRAM most-significant bits registers
# File: projects/selftest/include/sram_msb.xml
sub SRAM_MSB_SRAM1_RD_REG ()   { 0x0940000;}
sub SRAM_MSB_SRAM1_WR_REG ()   { 0x0940004;}
sub SRAM_MSB_SRAM2_RD_REG ()   { 0x0940008;}
sub SRAM_MSB_SRAM2_WR_REG ()   { 0x094000c;}

# Name: dram_test (DRAM_TEST)
# Description: DRAM selftest
# File: projects/selftest/include/dram_test.xml
sub DRAM_TEST_ERR_CNT_REG ()           { 0x0980000;}
sub DRAM_TEST_ITER_NUM_REG ()          { 0x0980004;}
sub DRAM_TEST_BAD_RUNS_REG ()          { 0x0980008;}
sub DRAM_TEST_GOOD_RUNS_REG ()         { 0x098000c;}
sub DRAM_TEST_STATUS_REG ()            { 0x0980010;}
sub DRAM_TEST_EN_REG ()                { 0x0980014;}
sub DRAM_TEST_CTRL_REG ()              { 0x0980018;}
sub DRAM_TEST_RAND_SEED_REG ()         { 0x098001c;}
sub DRAM_TEST_LOG_ADDR_REG ()          { 0x09a0000;}
sub DRAM_TEST_LOG_EXP_DATA_HI_REG ()   { 0x09a0004;}
sub DRAM_TEST_LOG_EXP_DATA_LO_REG ()   { 0x09a0008;}
sub DRAM_TEST_LOG_RD_DATA_HI_REG ()    { 0x09a000c;}
sub DRAM_TEST_LOG_RD_DATA_LO_REG ()    { 0x09a0010;}

# Name: phy_test (PHY_TEST)
# Description: Ethernet PHY test
# File: projects/selftest/include/phy_test.xml
sub PHY_TEST_STATUS_REG ()                  { 0x09c0000;}
sub PHY_TEST_CTRL_REG ()                    { 0x09c0004;}
sub PHY_TEST_SIZE_REG ()                    { 0x09c0008;}
sub PHY_TEST_PATTERN_REG ()                 { 0x09c000c;}
sub PHY_TEST_INIT_SEQ_NO_REG ()             { 0x09c0010;}
sub PHY_TEST_PHY_0_TX_STATUS_REG ()         { 0x09e0000;}
sub PHY_TEST_PHY_0_TX_ITER_CNT_REG ()       { 0x09e0004;}
sub PHY_TEST_PHY_0_TX_PKT_CNT_REG ()        { 0x09e0008;}
sub PHY_TEST_PHY_0_TX_SEQ_NO_REG ()         { 0x09e000c;}
sub PHY_TEST_PHY_0_TX_RAND_SEED_REG ()      { 0x09e0010;}
sub PHY_TEST_PHY_0_RX_STATUS_REG ()         { 0x09e2000;}
sub PHY_TEST_PHY_0_RX_GOOD_PKT_CNT_REG ()   { 0x09e2004;}
sub PHY_TEST_PHY_0_RX_ERR_PKT_CNT_REG ()    { 0x09e2008;}
sub PHY_TEST_PHY_0_RX_SEQ_NO_REG ()         { 0x09e200c;}
sub PHY_TEST_PHY_0_RX_CTRL_REG ()           { 0x09e2010;}
sub PHY_TEST_PHY_0_RX_LOG_STATUS_REG ()     { 0x09e4000;}
sub PHY_TEST_PHY_0_RX_LOG_EXP_DATA_REG ()   { 0x09e4004;}
sub PHY_TEST_PHY_0_RX_LOG_RX_DATA_REG ()    { 0x09e4008;}
sub PHY_TEST_PHY_0_RX_LOG_CTRL_REG ()       { 0x09e400c;}
sub PHY_TEST_PHY_1_TX_STATUS_REG ()         { 0x09e8000;}
sub PHY_TEST_PHY_1_TX_ITER_CNT_REG ()       { 0x09e8004;}
sub PHY_TEST_PHY_1_TX_PKT_CNT_REG ()        { 0x09e8008;}
sub PHY_TEST_PHY_1_TX_SEQ_NO_REG ()         { 0x09e800c;}
sub PHY_TEST_PHY_1_TX_RAND_SEED_REG ()      { 0x09e8010;}
sub PHY_TEST_PHY_1_RX_STATUS_REG ()         { 0x09ea000;}
sub PHY_TEST_PHY_1_RX_GOOD_PKT_CNT_REG ()   { 0x09ea004;}
sub PHY_TEST_PHY_1_RX_ERR_PKT_CNT_REG ()    { 0x09ea008;}
sub PHY_TEST_PHY_1_RX_SEQ_NO_REG ()         { 0x09ea00c;}
sub PHY_TEST_PHY_1_RX_CTRL_REG ()           { 0x09ea010;}
sub PHY_TEST_PHY_1_RX_LOG_STATUS_REG ()     { 0x09ec000;}
sub PHY_TEST_PHY_1_RX_LOG_EXP_DATA_REG ()   { 0x09ec004;}
sub PHY_TEST_PHY_1_RX_LOG_RX_DATA_REG ()    { 0x09ec008;}
sub PHY_TEST_PHY_1_RX_LOG_CTRL_REG ()       { 0x09ec00c;}
sub PHY_TEST_PHY_2_TX_STATUS_REG ()         { 0x09f0000;}
sub PHY_TEST_PHY_2_TX_ITER_CNT_REG ()       { 0x09f0004;}
sub PHY_TEST_PHY_2_TX_PKT_CNT_REG ()        { 0x09f0008;}
sub PHY_TEST_PHY_2_TX_SEQ_NO_REG ()         { 0x09f000c;}
sub PHY_TEST_PHY_2_TX_RAND_SEED_REG ()      { 0x09f0010;}
sub PHY_TEST_PHY_2_RX_STATUS_REG ()         { 0x09f2000;}
sub PHY_TEST_PHY_2_RX_GOOD_PKT_CNT_REG ()   { 0x09f2004;}
sub PHY_TEST_PHY_2_RX_ERR_PKT_CNT_REG ()    { 0x09f2008;}
sub PHY_TEST_PHY_2_RX_SEQ_NO_REG ()         { 0x09f200c;}
sub PHY_TEST_PHY_2_RX_CTRL_REG ()           { 0x09f2010;}
sub PHY_TEST_PHY_2_RX_LOG_STATUS_REG ()     { 0x09f4000;}
sub PHY_TEST_PHY_2_RX_LOG_EXP_DATA_REG ()   { 0x09f4004;}
sub PHY_TEST_PHY_2_RX_LOG_RX_DATA_REG ()    { 0x09f4008;}
sub PHY_TEST_PHY_2_RX_LOG_CTRL_REG ()       { 0x09f400c;}
sub PHY_TEST_PHY_3_TX_STATUS_REG ()         { 0x09f8000;}
sub PHY_TEST_PHY_3_TX_ITER_CNT_REG ()       { 0x09f8004;}
sub PHY_TEST_PHY_3_TX_PKT_CNT_REG ()        { 0x09f8008;}
sub PHY_TEST_PHY_3_TX_SEQ_NO_REG ()         { 0x09f800c;}
sub PHY_TEST_PHY_3_TX_RAND_SEED_REG ()      { 0x09f8010;}
sub PHY_TEST_PHY_3_RX_STATUS_REG ()         { 0x09fa000;}
sub PHY_TEST_PHY_3_RX_GOOD_PKT_CNT_REG ()   { 0x09fa004;}
sub PHY_TEST_PHY_3_RX_ERR_PKT_CNT_REG ()    { 0x09fa008;}
sub PHY_TEST_PHY_3_RX_SEQ_NO_REG ()         { 0x09fa00c;}
sub PHY_TEST_PHY_3_RX_CTRL_REG ()           { 0x09fa010;}
sub PHY_TEST_PHY_3_RX_LOG_STATUS_REG ()     { 0x09fc000;}
sub PHY_TEST_PHY_3_RX_LOG_EXP_DATA_REG ()   { 0x09fc004;}
sub PHY_TEST_PHY_3_RX_LOG_RX_DATA_REG ()    { 0x09fc008;}
sub PHY_TEST_PHY_3_RX_LOG_CTRL_REG ()       { 0x09fc00c;}

sub PHY_TEST_PHY_GROUP_BASE_ADDR ()  { 0x09e0000; }
sub PHY_TEST_PHY_GROUP_INST_OFFSET() { 0x0008000; }

# Name: SRAM (SRAM)
# Description: SRAM

# Name: DRAM (DRAM)
# Description: DRAM



# -------------------------------------
#   Bitmasks
# -------------------------------------

# Type: dram_test_status
# Description: DRAM test status
# File: projects/selftest/include/dram_test.xml

# Part 1: bit positions
sub DRAM_TEST_STATUS_DONE_POS_LO ()   { 0; }
sub DRAM_TEST_STATUS_DONE_POS_HI ()   { 4; }
sub DRAM_TEST_STATUS_DONE_WIDTH  ()   { 5; }
sub DRAM_TEST_STATUS_FAIL_POS_LO ()   { 8; }
sub DRAM_TEST_STATUS_FAIL_POS_HI ()   { 12; }
sub DRAM_TEST_STATUS_FAIL_WIDTH  ()   { 5; }

# Part 2: masks/values
sub DRAM_TEST_STATUS_DONE_MASK   ()   { 0x0000001f; }
sub DRAM_TEST_STATUS_FAIL_MASK   ()   { 0x00001f00; }

# Type: dram_test_enable
# Description: DRAM test status
# File: projects/selftest/include/dram_test.xml

# Part 1: bit positions
sub DRAM_TEST_ENABLE_ENABLE_POS_LO ()   { 0; }
sub DRAM_TEST_ENABLE_ENABLE_POS_HI ()   { 4; }
sub DRAM_TEST_ENABLE_ENABLE_WIDTH  ()   { 5; }

# Part 2: masks/values
sub DRAM_TEST_ENABLE_ENABLE_MASK   ()   { 0x0000001f; }

# Type: dram_test_ctrl
# Description: DRAM test status
# File: projects/selftest/include/dram_test.xml

# Part 1: bit positions
sub DRAM_TEST_CTRL_RUN_POS    ()   { 0; }
sub DRAM_TEST_CTRL_REPEAT_POS ()   { 1; }

# Part 2: masks/values
sub DRAM_TEST_CTRL_RUN        ()   { 0x1; }
sub DRAM_TEST_CTRL_REPEAT     ()   { 0x2; }

# Type: dma_iface_ctrl
# Description: DMA interface control register
# File: lib/verilog/core/dma/xml/dma.xml

# Part 1: bit positions
sub DMA_IFACE_CTRL_DISABLE_POS ()   { 0; }
sub DMA_IFACE_CTRL_RESET_POS   ()   { 1; }

# Part 2: masks/values
sub DMA_IFACE_CTRL_DISABLE     ()   { 0x001; }
sub DMA_IFACE_CTRL_RESET       ()   { 0x002; }

# Type: mii_ctrl
# Description: MII control register
# File: lib/verilog/core/io/mdio/xml/mdio.xml

# Part 1: bit positions
sub MII_CTRL_RESET_POS             ()   { 15; }
sub MII_CTRL_INTERNAL_LOOPBACK_POS ()   { 14; }
sub MII_CTRL_SPEED_SEL_LO_POS      ()   { 13; }
sub MII_CTRL_AUTONEG_ENABLE_POS    ()   { 12; }
sub MII_CTRL_PWR_DOWN_POS          ()   { 11; }
sub MII_CTRL_ISOLATE_POS           ()   { 10; }
sub MII_CTRL_RESTART_AUTONEG_POS   ()   { 9; }
sub MII_CTRL_DUPLEX_MODE_POS       ()   { 8; }
sub MII_CTRL_COLLISION_TEST_EN_POS ()   { 7; }
sub MII_CTRL_SPEED_SEL_HI_POS      ()   { 6; }

# Part 2: masks/values
sub MII_CTRL_RESET                 ()   { 0x8000; }
sub MII_CTRL_INTERNAL_LOOPBACK     ()   { 0x4000; }
sub MII_CTRL_SPEED_SEL_LO          ()   { 0x2000; }
sub MII_CTRL_AUTONEG_ENABLE        ()   { 0x1000; }
sub MII_CTRL_PWR_DOWN              ()   { 0x0800; }
sub MII_CTRL_ISOLATE               ()   { 0x0400; }
sub MII_CTRL_RESTART_AUTONEG       ()   { 0x0200; }
sub MII_CTRL_DUPLEX_MODE           ()   { 0x0100; }
sub MII_CTRL_COLLISION_TEST_EN     ()   { 0x0080; }
sub MII_CTRL_SPEED_SEL_HI          ()   { 0x0040; }

# Type: mii_status
# Description: MII status register
# File: lib/verilog/core/io/mdio/xml/mdio.xml

# Part 1: bit positions
sub MII_STATUS_100BASE_T4_CAPABLE_POS          ()   { 15; }
sub MII_STATUS_100BASE_X_FULL_DPLX_CAPABLE_POS ()   { 14; }
sub MII_STATUS_100BASE_X_HALF_DPLX_CAPABLE_POS ()   { 13; }
sub MII_STATUS_10BASE_T_FULL_DPLX_CAPABLE_POS  ()   { 12; }
sub MII_STATUS_10BASE_T_HALF_DPLX_CAPABLE_POS  ()   { 11; }
sub MII_STATUS_10BASE_T2_FULL_DPLX_CAPABLE_POS ()   { 10; }
sub MII_STATUS_10BASE_T2_HALF_DPLX_CAPABLE_POS ()   { 9; }
sub MII_STATUS_EXTENDED_STATUS_POS             ()   { 8; }
sub MII_STATUS_MF_PREAMBLE_SUPPRESS_POS        ()   { 6; }
sub MII_STATUS_AUTONEG_COMPLETE_POS            ()   { 5; }
sub MII_STATUS_REMOTE_FAULT_POS                ()   { 4; }
sub MII_STATUS_AUTONEG_ABILITY_POS             ()   { 3; }
sub MII_STATUS_LINK_STATUS_POS                 ()   { 2; }
sub MII_STATUS_JABBER_DETECT_POS               ()   { 1; }
sub MII_STATUS_EXTENDED_CAPABILITY_POS         ()   { 0; }

# Part 2: masks/values
sub MII_STATUS_100BASE_T4_CAPABLE              ()   { 0x8000; }
sub MII_STATUS_100BASE_X_FULL_DPLX_CAPABLE     ()   { 0x4000; }
sub MII_STATUS_100BASE_X_HALF_DPLX_CAPABLE     ()   { 0x2000; }
sub MII_STATUS_10BASE_T_FULL_DPLX_CAPABLE      ()   { 0x1000; }
sub MII_STATUS_10BASE_T_HALF_DPLX_CAPABLE      ()   { 0x0800; }
sub MII_STATUS_10BASE_T2_FULL_DPLX_CAPABLE     ()   { 0x0400; }
sub MII_STATUS_10BASE_T2_HALF_DPLX_CAPABLE     ()   { 0x0200; }
sub MII_STATUS_EXTENDED_STATUS                 ()   { 0x0100; }
sub MII_STATUS_MF_PREAMBLE_SUPPRESS            ()   { 0x0040; }
sub MII_STATUS_AUTONEG_COMPLETE                ()   { 0x0020; }
sub MII_STATUS_REMOTE_FAULT                    ()   { 0x0010; }
sub MII_STATUS_AUTONEG_ABILITY                 ()   { 0x0008; }
sub MII_STATUS_LINK_STATUS                     ()   { 0x0004; }
sub MII_STATUS_JABBER_DETECT                   ()   { 0x0002; }
sub MII_STATUS_EXTENDED_CAPABILITY             ()   { 0x0001; }

# Type: phy_test_status
# Description: Ethernet PHY test status
# File: projects/selftest/include/phy_test.xml

# Part 1: bit positions
sub PHY_TEST_STATUS_BUSY_POS ()   { 0; }
sub PHY_TEST_STATUS_DONE_POS ()   { 4; }
sub PHY_TEST_STATUS_GOOD_POS ()   { 8; }

# Part 2: masks/values
sub PHY_TEST_STATUS_BUSY     ()   { 0x00000001; }
sub PHY_TEST_STATUS_DONE     ()   { 0x00000010; }
sub PHY_TEST_STATUS_GOOD     ()   { 0x00000100; }

# Type: phy_test_ctrl
# Description: Ethernet PHY test control
# File: projects/selftest/include/phy_test.xml

# Part 1: bit positions
sub PHY_TEST_CTRL_START_POS  ()   { 0; }
sub PHY_TEST_CTRL_REPEAT_POS ()   { 1; }

# Part 2: masks/values
sub PHY_TEST_CTRL_START      ()   { 0x1; }
sub PHY_TEST_CTRL_REPEAT     ()   { 0x2; }

# Type: phy_test_pattern
# Description: Ethernet PHY pattern enable
# File: projects/selftest/include/phy_test.xml

# Part 1: bit positions
sub PHY_TEST_PATTERN_ENABLE_POS_LO ()   { 0; }
sub PHY_TEST_PATTERN_ENABLE_POS_HI ()   { 4; }
sub PHY_TEST_PATTERN_ENABLE_WIDTH  ()   { 5; }

# Part 2: masks/values
sub PHY_TEST_PATTERN_ENABLE_MASK   ()   { 0x1f; }

# Type: phy_test_phy_tx_status
# Description: Ethernet PHY test -- individual PHY transmit status
# File: projects/selftest/include/phy_test.xml

# Part 1: bit positions
sub PHY_TEST_PHY_TX_STATUS_DONE_POS        ()   { 0; }
sub PHY_TEST_PHY_TX_STATUS_CURR_PAT_POS_LO ()   { 16; }
sub PHY_TEST_PHY_TX_STATUS_CURR_PAT_POS_HI ()   { 20; }
sub PHY_TEST_PHY_TX_STATUS_CURR_PAT_WIDTH  ()   { 5; }

# Part 2: masks/values
sub PHY_TEST_PHY_TX_STATUS_DONE            ()   { 0x00000001; }
sub PHY_TEST_PHY_TX_STATUS_CURR_PAT_MASK   ()   { 0x001f0000; }

# Type: phy_test_phy_rx_status
# Description: Ethernet PHY test -- individual PHY receive status
# File: projects/selftest/include/phy_test.xml

# Part 1: bit positions
sub PHY_TEST_PHY_RX_STATUS_DONE_POS              ()   { 0; }
sub PHY_TEST_PHY_RX_STATUS_PASS_POS              ()   { 4; }
sub PHY_TEST_PHY_RX_STATUS_LOCKED_POS            ()   { 8; }
sub PHY_TEST_PHY_RX_STATUS_SEQ_NO_VALID_POS      ()   { 12; }
sub PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_POS_LO ()   { 16; }
sub PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_POS_HI ()   { 18; }
sub PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_WIDTH  ()   { 3; }

# Part 2: masks/values
sub PHY_TEST_PHY_RX_STATUS_DONE                  ()   { 0x00000001; }
sub PHY_TEST_PHY_RX_STATUS_PASS                  ()   { 0x00000010; }
sub PHY_TEST_PHY_RX_STATUS_LOCKED                ()   { 0x00000100; }
sub PHY_TEST_PHY_RX_STATUS_SEQ_NO_VALID          ()   { 0x00001000; }
sub PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_MASK   ()   { 0x00070000; }

# Type: phy_test_phy_rx_ctrl
# Description: Ethernet PHY test -- individual PHY receive control
# File: projects/selftest/include/phy_test.xml

# Part 1: bit positions
sub PHY_TEST_PHY_RX_CTRL_RESET_GOOD_POS ()   { 0; }
sub PHY_TEST_PHY_RX_CTRL_RESET_ERR_POS  ()   { 1; }

# Part 2: masks/values
sub PHY_TEST_PHY_RX_CTRL_RESET_GOOD     ()   { 0x1; }
sub PHY_TEST_PHY_RX_CTRL_RESET_ERR      ()   { 0x2; }

# Type: phy_test_phy_rx_log_status
# Description: Ethernet PHY test -- individual PHY receive log status
# File: projects/selftest/include/phy_test.xml

# Part 1: bit positions
sub PHY_TEST_PHY_RX_LOG_STATUS_FULL_POS     ()   { 0; }
sub PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_POS_LO ()   { 8; }
sub PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_POS_HI ()   { 15; }
sub PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_WIDTH  ()   { 8; }

# Part 2: masks/values
sub PHY_TEST_PHY_RX_LOG_STATUS_FULL         ()   { 0x00000001; }
sub PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_MASK   ()   { 0x0000ff00; }

# Type: phy_test_phy_rx_log_ctrl
# Description: Ethernet PHY test -- individual PHY receive log control
# File: projects/selftest/include/phy_test.xml

# Part 1: bit positions
sub PHY_TEST_PHY_RX_LOG_CTRL_RESET_POS ()   { 0; }

# Part 2: masks/values
sub PHY_TEST_PHY_RX_LOG_CTRL_RESET     ()   { 0x1; }

# Type: serial_test_glbl_ctrl
# Description: Global serial test control
# File: projects/selftest/include/serial_test.xml

# Part 1: bit positions
sub SERIAL_TEST_GLBL_CTRL_RESTART_POS ()   { 0; }
sub SERIAL_TEST_GLBL_CTRL_NONSTOP_POS ()   { 1; }

# Part 2: masks/values
sub SERIAL_TEST_GLBL_CTRL_RESTART     ()   { 0x1; }
sub SERIAL_TEST_GLBL_CTRL_NONSTOP     ()   { 0x2; }

# Type: serial_test_iface_ctrl
# Description: Per-interface serial test control
# File: projects/selftest/include/serial_test.xml

# Part 1: bit positions
sub SERIAL_TEST_IFACE_CTRL_RESET_POS       ()   { 0; }
sub SERIAL_TEST_IFACE_CTRL_LOOPBACK_POS_LO ()   { 2; }
sub SERIAL_TEST_IFACE_CTRL_LOOPBACK_POS_HI ()   { 3; }
sub SERIAL_TEST_IFACE_CTRL_LOOPBACK_WIDTH  ()   { 2; }

# Part 2: masks/values
sub SERIAL_TEST_IFACE_CTRL_RESET           ()   { 0x1; }
sub SERIAL_TEST_IFACE_CTRL_LOOPBACK_MASK   ()   { 0xc; }

# Type: serial_test_glbl_status
# Description: Global serial test status
# File: projects/selftest/include/serial_test.xml

# Part 1: bit positions
sub SERIAL_TEST_GLBL_STATUS_SUCCESSFUL_POS ()   { 0; }
sub SERIAL_TEST_GLBL_STATUS_DONE_POS       ()   { 1; }
sub SERIAL_TEST_GLBL_STATUS_RUNNING_POS    ()   { 2; }
sub SERIAL_TEST_GLBL_STATUS_COUNT_POS_LO   ()   { 3; }
sub SERIAL_TEST_GLBL_STATUS_COUNT_POS_HI   ()   { 31; }
sub SERIAL_TEST_GLBL_STATUS_COUNT_WIDTH    ()   { 29; }

# Part 2: masks/values
sub SERIAL_TEST_GLBL_STATUS_SUCCESSFUL     ()   { 0x00000001; }
sub SERIAL_TEST_GLBL_STATUS_DONE           ()   { 0x00000002; }
sub SERIAL_TEST_GLBL_STATUS_RUNNING        ()   { 0x00000004; }
sub SERIAL_TEST_GLBL_STATUS_COUNT_MASK     ()   { 0xfffffff8; }

# Type: serial_test_iface_status
# Description: Per-interface serial test status
# File: projects/selftest/include/serial_test.xml

# Part 1: bit positions
sub SERIAL_TEST_IFACE_STATUS_LANE_UP_POS        ()   { 0; }
sub SERIAL_TEST_IFACE_STATUS_CHANNEL_UP_POS     ()   { 1; }
sub SERIAL_TEST_IFACE_STATUS_HARD_ERROR_POS     ()   { 2; }
sub SERIAL_TEST_IFACE_STATUS_SOFT_ERROR_POS     ()   { 3; }
sub SERIAL_TEST_IFACE_STATUS_FRAME_ERROR_POS    ()   { 4; }
sub SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_POS_LO ()   { 8; }
sub SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_POS_HI ()   { 23; }
sub SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_WIDTH  ()   { 16; }

# Part 2: masks/values
sub SERIAL_TEST_IFACE_STATUS_LANE_UP            ()   { 0x00000001; }
sub SERIAL_TEST_IFACE_STATUS_CHANNEL_UP         ()   { 0x00000002; }
sub SERIAL_TEST_IFACE_STATUS_HARD_ERROR         ()   { 0x00000004; }
sub SERIAL_TEST_IFACE_STATUS_SOFT_ERROR         ()   { 0x00000008; }
sub SERIAL_TEST_IFACE_STATUS_FRAME_ERROR        ()   { 0x00000010; }
sub SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_MASK   ()   { 0x00ffff00; }

# Type: sram_test_status
# Description: SRAM test status
# File: projects/selftest/include/sram_test.xml

# Part 1: bit positions
sub SRAM_TEST_STATUS_DONE_1_POS_LO ()   { 0; }
sub SRAM_TEST_STATUS_DONE_1_POS_HI ()   { 4; }
sub SRAM_TEST_STATUS_DONE_1_WIDTH  ()   { 5; }
sub SRAM_TEST_STATUS_FAIL_1_POS_LO ()   { 8; }
sub SRAM_TEST_STATUS_FAIL_1_POS_HI ()   { 12; }
sub SRAM_TEST_STATUS_FAIL_1_WIDTH  ()   { 5; }
sub SRAM_TEST_STATUS_DONE_2_POS_LO ()   { 16; }
sub SRAM_TEST_STATUS_DONE_2_POS_HI ()   { 20; }
sub SRAM_TEST_STATUS_DONE_2_WIDTH  ()   { 5; }
sub SRAM_TEST_STATUS_FAIL_2_POS_LO ()   { 24; }
sub SRAM_TEST_STATUS_FAIL_2_POS_HI ()   { 28; }
sub SRAM_TEST_STATUS_FAIL_2_WIDTH  ()   { 5; }

# Part 2: masks/values
sub SRAM_TEST_STATUS_DONE_1_MASK   ()   { 0x0000001f; }
sub SRAM_TEST_STATUS_FAIL_1_MASK   ()   { 0x00001f00; }
sub SRAM_TEST_STATUS_DONE_2_MASK   ()   { 0x001f0000; }
sub SRAM_TEST_STATUS_FAIL_2_MASK   ()   { 0x1f000000; }

# Type: sram_test_enable
# Description: SRAM test status
# File: projects/selftest/include/sram_test.xml

# Part 1: bit positions
sub SRAM_TEST_ENABLE_TEST_EN_POS_LO ()   { 0; }
sub SRAM_TEST_ENABLE_TEST_EN_POS_HI ()   { 4; }
sub SRAM_TEST_ENABLE_TEST_EN_WIDTH  ()   { 5; }
sub SRAM_TEST_ENABLE_SRAM_EN_POS_LO ()   { 16; }
sub SRAM_TEST_ENABLE_SRAM_EN_POS_HI ()   { 17; }
sub SRAM_TEST_ENABLE_SRAM_EN_WIDTH  ()   { 2; }

# Part 2: masks/values
sub SRAM_TEST_ENABLE_TEST_EN_MASK   ()   { 0x0000001f; }
sub SRAM_TEST_ENABLE_SRAM_EN_MASK   ()   { 0x00030000; }

# Type: sram_test_ctrl
# Description: SRAM test status
# File: projects/selftest/include/sram_test.xml

# Part 1: bit positions
sub SRAM_TEST_CTRL_RUN_POS           ()   { 0; }
sub SRAM_TEST_CTRL_REPEAT_POS        ()   { 1; }
sub SRAM_TEST_CTRL_RESET_ERR_CNT_POS ()   { 8; }

# Part 2: masks/values
sub SRAM_TEST_CTRL_RUN               ()   { 0x00000001; }
sub SRAM_TEST_CTRL_REPEAT            ()   { 0x00000002; }
sub SRAM_TEST_CTRL_RESET_ERR_CNT     ()   { 0x00000100; }





1;

__END__
