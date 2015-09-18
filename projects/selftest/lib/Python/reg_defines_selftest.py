#!/usr/bin/python
#############################################################
#
# Python register defines
#
# Project: Selftest (selftest)
# Description: NetFPGA selftest -- exercises all major subsystems of the board
#
#############################################################

# -------------------------------------
#   Version Information
# -------------------------------------
def DEVICE_ID ():
    return 5

def DEVICE_MAJOR ():
    return 1

def DEVICE_MINOR ():
    return 1

def DEVICE_REVISION ():
    return 0

def DEVICE_PROJ_DIR ():
    return "selftest"

def DEVICE_PROJ_NAME ():
    return "Selftest"

def DEVICE_PROJ_DESC ():
    return "NetFPGA selftest -- exercises all major subsystems of the board"


# -------------------------------------
#   Constants
# -------------------------------------

# ===== File: lib/verilog/core/common/xml/global.xml =====

# Maximum number of phy ports
def MAX_PHY_PORTS ():                
    return 4

# PCI address bus width
def PCI_ADDR_WIDTH ():               
    return 32

# PCI data bus width
def PCI_DATA_WIDTH ():               
    return 32

# PCI byte enable bus width
def PCI_BE_WIDTH ():                 
    return 4

# CPCI--CNET address bus width. This is byte addresses even though bottom bits are zero.
def CPCI_CNET_ADDR_WIDTH ():         
    return 27

# CPCI--CNET data bus width
def CPCI_CNET_DATA_WIDTH ():         
    return 32

# CPCI--Virtex address bus width. This is byte addresses even though bottom bits are zero.
def CPCI_NF2_ADDR_WIDTH ():          
    return 27

# CPCI--Virtex data bus width
def CPCI_NF2_DATA_WIDTH ():          
    return 32

# DMA data bus width
def DMA_DATA_WIDTH ():               
    return 32

# DMA control bus width
def DMA_CTRL_WIDTH ():               
    return 4

# CPCI debug bus width
def CPCI_DEBUG_DATA_WIDTH ():        
    return 29

# SRAM address width
def SRAM_ADDR_WIDTH ():              
    return 19

# SRAM data width
def SRAM_DATA_WIDTH ():              
    return 36

# DRAM address width
def DRAM_ADDR_WIDTH ():              
    return 24


# ===== File: lib/verilog/core/common/xml/nf_defines.xml =====

# Clock period of 125 MHz clock in ns
def FAST_CLK_PERIOD ():              
    return 8

# Clock period of 62.5 MHz clock in ns
def SLOW_CLK_PERIOD ():              
    return 16

# Header value used by the IO queues
def IO_QUEUE_STAGE_NUM ():           
    return 0xff

# Data path data width
def DATA_WIDTH ():                   
    return 64

# Data path control width
def CTRL_WIDTH ():                   
    return 8


# ===== File: lib/verilog/core/utils/xml/device_id_reg.xml =====

# Total number of registers
def DEV_ID_NUM_REGS ():              
    return 64

# Number of non string registers
def DEV_ID_NON_STR_REGS ():          
    return 7

# Length of MD5 sum (bits)
def DEV_ID_MD5SUM_LENGTH ():         
    return 128

# Project directory length (in words, not chars)
def DEV_ID_PROJ_DIR_WORD_LEN ():     
    return 16

# Project directory length (in bytes/chars)
def DEV_ID_PROJ_DIR_BYTE_LEN ():     
    return 64

# Project directory length (in bits)
def DEV_ID_PROJ_DIR_BIT_LEN ():      
    return 512

# Project name length (in words, not chars)
def DEV_ID_PROJ_NAME_WORD_LEN ():    
    return 16

# Project name length (in bytes/chars)
def DEV_ID_PROJ_NAME_BYTE_LEN ():    
    return 64

# Project name length (in bits)
def DEV_ID_PROJ_NAME_BIT_LEN ():     
    return 512

# Device description length (in words, not chars)
def DEV_ID_PROJ_DESC_WORD_LEN ():    
    return 25

# Device description length (in bytes/chars)
def DEV_ID_PROJ_DESC_BYTE_LEN ():    
    return 100

# Device description length (in bits)
def DEV_ID_PROJ_DESC_BIT_LEN ():     
    return 800

# MD5 identifier (v1): MD5 sum of the string "device_id.v"
def DEV_ID_MD5_VALUE_V1_0 ():        
    return 0x4071736d

def DEV_ID_MD5_VALUE_V1_1 ():        
    return 0x8a603d2b

def DEV_ID_MD5_VALUE_V1_2 ():        
    return 0x4d55f629

def DEV_ID_MD5_VALUE_V1_3 ():        
    return 0x89a73c95


# MD5 identifier (v2): MD5 sum of the string "device_id.v:v2"
def DEV_ID_MD5_VALUE_V2_0 ():        
    return 0x5e461ffe

def DEV_ID_MD5_VALUE_V2_1 ():        
    return 0x439725c9

def DEV_ID_MD5_VALUE_V2_2 ():        
    return 0x279a22a1

def DEV_ID_MD5_VALUE_V2_3 ():        
    return 0x855f6c53


# Total number of registers (v1)
def DEV_ID_NUM_REGS_V1 ():           
    return 64

# Number of non string registers (v1)
def DEV_ID_NON_STR_REGS_V1 ():       
    return 7

# Project name length (v1: in words, not chars)
def DEV_ID_PROJ_NAME_WORD_LEN_V1 (): 
    return 25

# Project name length (v1: in bytes/chars)
def DEV_ID_PROJ_NAME_BYTE_LEN_V1 (): 
    return 100

# Project name length (v1: in bits)
def DEV_ID_PROJ_NAME_BIT_LEN_V1 ():  
    return 800


# ===== File: projects/selftest/include/dram_test.xml =====

# Offset between consecutive error log entries
def DRAM_TEST_LOG_OFFSET ():         
    return 0x00000020

# Number of DRAM test patterns
def DRAM_TEST_NUM_PATTERNS ():       
    return 5


# ===== File: projects/selftest/include/phy_test.xml =====

# Number of different test patterns
def PHY_TEST_NUM_PATTERNS ():        
    return 5


# ===== File: projects/selftest/include/serial_test.xml =====

# Mask to select only the error count (after shifting)
def SERIAL_TEST_ERROR_COUNT_MASK (): 
    return 0x0000ffff


# ===== File: projects/selftest/include/sram_test.xml =====

def SRAM_TEST_LOG_OFFSET ():         
    return 0x00000020

# Number of SRAM test patterns
def SRAM_TEST_NUM_PATTERNS ():       
    return 5

# Number of SRAM devices on the board
def SRAM_TEST_NUM_SRAMS ():          
    return 2



## -------------------------------------
##   Modules
## -------------------------------------

# Module tags
def CORE_BASE_ADDR ():             
    return 0x0000000

def DEV_ID_BASE_ADDR ():           
    return 0x0400000

def MDIO_BASE_ADDR ():             
    return 0x0440000

def DMA_BASE_ADDR ():              
    return 0x0500000

def REG_FILE_BASE_ADDR ():         
    return 0x0800000

def REG_REFLECT_TEST_BASE_ADDR (): 
    return 0x0840000

def CLOCK_TEST_BASE_ADDR ():       
    return 0x0880000

def SERIAL_TEST_BASE_ADDR ():      
    return 0x08c0000

def SRAM_TEST_BASE_ADDR ():        
    return 0x0900000

def SRAM_MSB_BASE_ADDR ():         
    return 0x0940000

def DRAM_TEST_BASE_ADDR ():        
    return 0x0980000

def PHY_TEST_BASE_ADDR ():         
    return 0x09c0000

def SRAM_BASE_ADDR ():             
    return 0x1000000

def UDP_BASE_ADDR ():              
    return 0x2000000

def DRAM_BASE_ADDR ():             
    return 0x4000000




# -------------------------------------
#   Registers
# -------------------------------------

# Name: device_id (DEV_ID)
# Description: Device identification
# File: lib/verilog/core/utils/xml/device_id_reg.xml
def DEV_ID_MD5_0_REG ():        
    return 0x0400000

def DEV_ID_MD5_1_REG ():        
    return 0x0400004

def DEV_ID_MD5_2_REG ():        
    return 0x0400008

def DEV_ID_MD5_3_REG ():        
    return 0x040000c

def DEV_ID_DEVICE_ID_REG ():    
    return 0x0400010

def DEV_ID_VERSION_REG ():      
    return 0x0400014

def DEV_ID_CPCI_ID_REG ():      
    return 0x0400018

def DEV_ID_PROJ_DIR_0_REG ():   
    return 0x040001c

def DEV_ID_PROJ_DIR_1_REG ():   
    return 0x0400020

def DEV_ID_PROJ_DIR_2_REG ():   
    return 0x0400024

def DEV_ID_PROJ_DIR_3_REG ():   
    return 0x0400028

def DEV_ID_PROJ_DIR_4_REG ():   
    return 0x040002c

def DEV_ID_PROJ_DIR_5_REG ():   
    return 0x0400030

def DEV_ID_PROJ_DIR_6_REG ():   
    return 0x0400034

def DEV_ID_PROJ_DIR_7_REG ():   
    return 0x0400038

def DEV_ID_PROJ_DIR_8_REG ():   
    return 0x040003c

def DEV_ID_PROJ_DIR_9_REG ():   
    return 0x0400040

def DEV_ID_PROJ_DIR_10_REG ():  
    return 0x0400044

def DEV_ID_PROJ_DIR_11_REG ():  
    return 0x0400048

def DEV_ID_PROJ_DIR_12_REG ():  
    return 0x040004c

def DEV_ID_PROJ_DIR_13_REG ():  
    return 0x0400050

def DEV_ID_PROJ_DIR_14_REG ():  
    return 0x0400054

def DEV_ID_PROJ_DIR_15_REG ():  
    return 0x0400058

def DEV_ID_PROJ_NAME_0_REG ():  
    return 0x040005c

def DEV_ID_PROJ_NAME_1_REG ():  
    return 0x0400060

def DEV_ID_PROJ_NAME_2_REG ():  
    return 0x0400064

def DEV_ID_PROJ_NAME_3_REG ():  
    return 0x0400068

def DEV_ID_PROJ_NAME_4_REG ():  
    return 0x040006c

def DEV_ID_PROJ_NAME_5_REG ():  
    return 0x0400070

def DEV_ID_PROJ_NAME_6_REG ():  
    return 0x0400074

def DEV_ID_PROJ_NAME_7_REG ():  
    return 0x0400078

def DEV_ID_PROJ_NAME_8_REG ():  
    return 0x040007c

def DEV_ID_PROJ_NAME_9_REG ():  
    return 0x0400080

def DEV_ID_PROJ_NAME_10_REG (): 
    return 0x0400084

def DEV_ID_PROJ_NAME_11_REG (): 
    return 0x0400088

def DEV_ID_PROJ_NAME_12_REG (): 
    return 0x040008c

def DEV_ID_PROJ_NAME_13_REG (): 
    return 0x0400090

def DEV_ID_PROJ_NAME_14_REG (): 
    return 0x0400094

def DEV_ID_PROJ_NAME_15_REG (): 
    return 0x0400098

def DEV_ID_PROJ_DESC_0_REG ():  
    return 0x040009c

def DEV_ID_PROJ_DESC_1_REG ():  
    return 0x04000a0

def DEV_ID_PROJ_DESC_2_REG ():  
    return 0x04000a4

def DEV_ID_PROJ_DESC_3_REG ():  
    return 0x04000a8

def DEV_ID_PROJ_DESC_4_REG ():  
    return 0x04000ac

def DEV_ID_PROJ_DESC_5_REG ():  
    return 0x04000b0

def DEV_ID_PROJ_DESC_6_REG ():  
    return 0x04000b4

def DEV_ID_PROJ_DESC_7_REG ():  
    return 0x04000b8

def DEV_ID_PROJ_DESC_8_REG ():  
    return 0x04000bc

def DEV_ID_PROJ_DESC_9_REG ():  
    return 0x04000c0

def DEV_ID_PROJ_DESC_10_REG (): 
    return 0x04000c4

def DEV_ID_PROJ_DESC_11_REG (): 
    return 0x04000c8

def DEV_ID_PROJ_DESC_12_REG (): 
    return 0x04000cc

def DEV_ID_PROJ_DESC_13_REG (): 
    return 0x04000d0

def DEV_ID_PROJ_DESC_14_REG (): 
    return 0x04000d4

def DEV_ID_PROJ_DESC_15_REG (): 
    return 0x04000d8

def DEV_ID_PROJ_DESC_16_REG (): 
    return 0x04000dc

def DEV_ID_PROJ_DESC_17_REG (): 
    return 0x04000e0

def DEV_ID_PROJ_DESC_18_REG (): 
    return 0x04000e4

def DEV_ID_PROJ_DESC_19_REG (): 
    return 0x04000e8

def DEV_ID_PROJ_DESC_20_REG (): 
    return 0x04000ec

def DEV_ID_PROJ_DESC_21_REG (): 
    return 0x04000f0

def DEV_ID_PROJ_DESC_22_REG (): 
    return 0x04000f4

def DEV_ID_PROJ_DESC_23_REG (): 
    return 0x04000f8

def DEV_ID_PROJ_DESC_24_REG (): 
    return 0x04000fc


# Name: mdio (MDIO)
# Description: MDIO interface
# File: lib/verilog/core/io/mdio/xml/mdio.xml
def MDIO_PHY_0_CONTROL_REG ():                                
    return 0x0440000

def MDIO_PHY_0_STATUS_REG ():                                 
    return 0x0440004

def MDIO_PHY_0_PHY_ID_HI_REG ():                              
    return 0x0440008

def MDIO_PHY_0_PHY_ID_LO_REG ():                              
    return 0x044000c

def MDIO_PHY_0_AUTONEGOTIATION_ADVERT_REG ():                 
    return 0x0440010

def MDIO_PHY_0_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG (): 
    return 0x0440014

def MDIO_PHY_0_AUTONEG_EXPANSION_REG ():                      
    return 0x0440018

def MDIO_PHY_0_AUTONEG_NEXT_PAGE_TX_REG ():                   
    return 0x044001c

def MDIO_PHY_0_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG ():    
    return 0x0440020

def MDIO_PHY_0_MASTER_SLAVE_CTRL_REG ():                      
    return 0x0440024

def MDIO_PHY_0_MASTER_SLAVE_STATUS_REG ():                    
    return 0x0440028

def MDIO_PHY_0_PSE_CTRL_REG ():                               
    return 0x044002c

def MDIO_PHY_0_PSE_STATUS_REG ():                             
    return 0x0440030

def MDIO_PHY_0_MMD_ACCESS_CTRL_REG ():                        
    return 0x0440034

def MDIO_PHY_0_MMD_ACCESS_STATUS_REG ():                      
    return 0x0440038

def MDIO_PHY_0_EXTENDED_STATUS_REG ():                        
    return 0x044003c

def MDIO_PHY_0_PHY_EXTENDED_CTRL_REG ():                      
    return 0x0440040

def MDIO_PHY_0_PHY_EXTENDED_STATUS_REG ():                    
    return 0x0440044

def MDIO_PHY_0_RX_ERROR_COUNT_REG ():                         
    return 0x0440048

def MDIO_PHY_0_FALSE_CARRIER_SENSE_COUNT_REG ():              
    return 0x044004c

def MDIO_PHY_0_RX_NOT_OK_COUNT_REG ():                        
    return 0x0440050

def MDIO_PHY_0_EXPANSION_1_REG ():                            
    return 0x0440054

def MDIO_PHY_0_EXPANSION_2_REG ():                            
    return 0x0440058

def MDIO_PHY_0_EXPANSION_REG_ACCESS_REG ():                   
    return 0x044005c

def MDIO_PHY_0_SHADOW_18_REG ():                              
    return 0x0440060

def MDIO_PHY_0_AUX_STATUS_REG ():                             
    return 0x0440064

def MDIO_PHY_0_INT_STATUS_REG ():                             
    return 0x0440068

def MDIO_PHY_0_INT_MASK_REG ():                               
    return 0x044006c

def MDIO_PHY_0_SHADOW_1C_REG ():                              
    return 0x0440070

def MDIO_PHY_0_SHADOW_1D_REG ():                              
    return 0x0440074

def MDIO_PHY_0_TEST_REG ():                                   
    return 0x0440078

def MDIO_PHY_0_RESERVED_REG ():                               
    return 0x044007c

def MDIO_PHY_1_CONTROL_REG ():                                
    return 0x0440080

def MDIO_PHY_1_STATUS_REG ():                                 
    return 0x0440084

def MDIO_PHY_1_PHY_ID_HI_REG ():                              
    return 0x0440088

def MDIO_PHY_1_PHY_ID_LO_REG ():                              
    return 0x044008c

def MDIO_PHY_1_AUTONEGOTIATION_ADVERT_REG ():                 
    return 0x0440090

def MDIO_PHY_1_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG (): 
    return 0x0440094

def MDIO_PHY_1_AUTONEG_EXPANSION_REG ():                      
    return 0x0440098

def MDIO_PHY_1_AUTONEG_NEXT_PAGE_TX_REG ():                   
    return 0x044009c

def MDIO_PHY_1_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG ():    
    return 0x04400a0

def MDIO_PHY_1_MASTER_SLAVE_CTRL_REG ():                      
    return 0x04400a4

def MDIO_PHY_1_MASTER_SLAVE_STATUS_REG ():                    
    return 0x04400a8

def MDIO_PHY_1_PSE_CTRL_REG ():                               
    return 0x04400ac

def MDIO_PHY_1_PSE_STATUS_REG ():                             
    return 0x04400b0

def MDIO_PHY_1_MMD_ACCESS_CTRL_REG ():                        
    return 0x04400b4

def MDIO_PHY_1_MMD_ACCESS_STATUS_REG ():                      
    return 0x04400b8

def MDIO_PHY_1_EXTENDED_STATUS_REG ():                        
    return 0x04400bc

def MDIO_PHY_1_PHY_EXTENDED_CTRL_REG ():                      
    return 0x04400c0

def MDIO_PHY_1_PHY_EXTENDED_STATUS_REG ():                    
    return 0x04400c4

def MDIO_PHY_1_RX_ERROR_COUNT_REG ():                         
    return 0x04400c8

def MDIO_PHY_1_FALSE_CARRIER_SENSE_COUNT_REG ():              
    return 0x04400cc

def MDIO_PHY_1_RX_NOT_OK_COUNT_REG ():                        
    return 0x04400d0

def MDIO_PHY_1_EXPANSION_1_REG ():                            
    return 0x04400d4

def MDIO_PHY_1_EXPANSION_2_REG ():                            
    return 0x04400d8

def MDIO_PHY_1_EXPANSION_REG_ACCESS_REG ():                   
    return 0x04400dc

def MDIO_PHY_1_SHADOW_18_REG ():                              
    return 0x04400e0

def MDIO_PHY_1_AUX_STATUS_REG ():                             
    return 0x04400e4

def MDIO_PHY_1_INT_STATUS_REG ():                             
    return 0x04400e8

def MDIO_PHY_1_INT_MASK_REG ():                               
    return 0x04400ec

def MDIO_PHY_1_SHADOW_1C_REG ():                              
    return 0x04400f0

def MDIO_PHY_1_SHADOW_1D_REG ():                              
    return 0x04400f4

def MDIO_PHY_1_TEST_REG ():                                   
    return 0x04400f8

def MDIO_PHY_1_RESERVED_REG ():                               
    return 0x04400fc

def MDIO_PHY_2_CONTROL_REG ():                                
    return 0x0440100

def MDIO_PHY_2_STATUS_REG ():                                 
    return 0x0440104

def MDIO_PHY_2_PHY_ID_HI_REG ():                              
    return 0x0440108

def MDIO_PHY_2_PHY_ID_LO_REG ():                              
    return 0x044010c

def MDIO_PHY_2_AUTONEGOTIATION_ADVERT_REG ():                 
    return 0x0440110

def MDIO_PHY_2_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG (): 
    return 0x0440114

def MDIO_PHY_2_AUTONEG_EXPANSION_REG ():                      
    return 0x0440118

def MDIO_PHY_2_AUTONEG_NEXT_PAGE_TX_REG ():                   
    return 0x044011c

def MDIO_PHY_2_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG ():    
    return 0x0440120

def MDIO_PHY_2_MASTER_SLAVE_CTRL_REG ():                      
    return 0x0440124

def MDIO_PHY_2_MASTER_SLAVE_STATUS_REG ():                    
    return 0x0440128

def MDIO_PHY_2_PSE_CTRL_REG ():                               
    return 0x044012c

def MDIO_PHY_2_PSE_STATUS_REG ():                             
    return 0x0440130

def MDIO_PHY_2_MMD_ACCESS_CTRL_REG ():                        
    return 0x0440134

def MDIO_PHY_2_MMD_ACCESS_STATUS_REG ():                      
    return 0x0440138

def MDIO_PHY_2_EXTENDED_STATUS_REG ():                        
    return 0x044013c

def MDIO_PHY_2_PHY_EXTENDED_CTRL_REG ():                      
    return 0x0440140

def MDIO_PHY_2_PHY_EXTENDED_STATUS_REG ():                    
    return 0x0440144

def MDIO_PHY_2_RX_ERROR_COUNT_REG ():                         
    return 0x0440148

def MDIO_PHY_2_FALSE_CARRIER_SENSE_COUNT_REG ():              
    return 0x044014c

def MDIO_PHY_2_RX_NOT_OK_COUNT_REG ():                        
    return 0x0440150

def MDIO_PHY_2_EXPANSION_1_REG ():                            
    return 0x0440154

def MDIO_PHY_2_EXPANSION_2_REG ():                            
    return 0x0440158

def MDIO_PHY_2_EXPANSION_REG_ACCESS_REG ():                   
    return 0x044015c

def MDIO_PHY_2_SHADOW_18_REG ():                              
    return 0x0440160

def MDIO_PHY_2_AUX_STATUS_REG ():                             
    return 0x0440164

def MDIO_PHY_2_INT_STATUS_REG ():                             
    return 0x0440168

def MDIO_PHY_2_INT_MASK_REG ():                               
    return 0x044016c

def MDIO_PHY_2_SHADOW_1C_REG ():                              
    return 0x0440170

def MDIO_PHY_2_SHADOW_1D_REG ():                              
    return 0x0440174

def MDIO_PHY_2_TEST_REG ():                                   
    return 0x0440178

def MDIO_PHY_2_RESERVED_REG ():                               
    return 0x044017c

def MDIO_PHY_3_CONTROL_REG ():                                
    return 0x0440180

def MDIO_PHY_3_STATUS_REG ():                                 
    return 0x0440184

def MDIO_PHY_3_PHY_ID_HI_REG ():                              
    return 0x0440188

def MDIO_PHY_3_PHY_ID_LO_REG ():                              
    return 0x044018c

def MDIO_PHY_3_AUTONEGOTIATION_ADVERT_REG ():                 
    return 0x0440190

def MDIO_PHY_3_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG (): 
    return 0x0440194

def MDIO_PHY_3_AUTONEG_EXPANSION_REG ():                      
    return 0x0440198

def MDIO_PHY_3_AUTONEG_NEXT_PAGE_TX_REG ():                   
    return 0x044019c

def MDIO_PHY_3_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG ():    
    return 0x04401a0

def MDIO_PHY_3_MASTER_SLAVE_CTRL_REG ():                      
    return 0x04401a4

def MDIO_PHY_3_MASTER_SLAVE_STATUS_REG ():                    
    return 0x04401a8

def MDIO_PHY_3_PSE_CTRL_REG ():                               
    return 0x04401ac

def MDIO_PHY_3_PSE_STATUS_REG ():                             
    return 0x04401b0

def MDIO_PHY_3_MMD_ACCESS_CTRL_REG ():                        
    return 0x04401b4

def MDIO_PHY_3_MMD_ACCESS_STATUS_REG ():                      
    return 0x04401b8

def MDIO_PHY_3_EXTENDED_STATUS_REG ():                        
    return 0x04401bc

def MDIO_PHY_3_PHY_EXTENDED_CTRL_REG ():                      
    return 0x04401c0

def MDIO_PHY_3_PHY_EXTENDED_STATUS_REG ():                    
    return 0x04401c4

def MDIO_PHY_3_RX_ERROR_COUNT_REG ():                         
    return 0x04401c8

def MDIO_PHY_3_FALSE_CARRIER_SENSE_COUNT_REG ():              
    return 0x04401cc

def MDIO_PHY_3_RX_NOT_OK_COUNT_REG ():                        
    return 0x04401d0

def MDIO_PHY_3_EXPANSION_1_REG ():                            
    return 0x04401d4

def MDIO_PHY_3_EXPANSION_2_REG ():                            
    return 0x04401d8

def MDIO_PHY_3_EXPANSION_REG_ACCESS_REG ():                   
    return 0x04401dc

def MDIO_PHY_3_SHADOW_18_REG ():                              
    return 0x04401e0

def MDIO_PHY_3_AUX_STATUS_REG ():                             
    return 0x04401e4

def MDIO_PHY_3_INT_STATUS_REG ():                             
    return 0x04401e8

def MDIO_PHY_3_INT_MASK_REG ():                               
    return 0x04401ec

def MDIO_PHY_3_SHADOW_1C_REG ():                              
    return 0x04401f0

def MDIO_PHY_3_SHADOW_1D_REG ():                              
    return 0x04401f4

def MDIO_PHY_3_TEST_REG ():                                   
    return 0x04401f8

def MDIO_PHY_3_RESERVED_REG ():                               
    return 0x04401fc


def MDIO_PHY_GROUP_BASE_ADDR ():
    return 0x0440000

def MDIO_PHY_GROUP_INST_OFFSET():
    return 0x0000080

# Name: dma (DMA)
# Description: DMA transfer module
# File: lib/verilog/core/dma/xml/dma.xml
def DMA_CTRL_REG ():              
    return 0x0500000

def DMA_NUM_INGRESS_PKTS_REG ():  
    return 0x0500004

def DMA_NUM_INGRESS_BYTES_REG (): 
    return 0x0500008

def DMA_NUM_EGRESS_PKTS_REG ():   
    return 0x050000c

def DMA_NUM_EGRESS_BYTES_REG ():  
    return 0x0500010

def DMA_NUM_TIMEOUTS_REG ():      
    return 0x0500014


# Name: reg_file (REG_FILE)
# Description: Register file test (simple RAM)
# File: projects/selftest/include/reg_file.xml

# Name: reg_reflect (REG_REFLECT_TEST)
# Description: Test module that returns the register address as the register value
# File: projects/selftest/include/reg_reflect.xml

# Name: clock_test (CLOCK_TEST)
# Description: Test the clock by measuring clock ticks
# File: projects/selftest/include/clock_test.xml
def CLOCK_TEST_TICKS_REG (): 
    return 0x0880000


# Name: serial_test (SERIAL_TEST)
# Description: Serial test registers for Selftest
# File: projects/selftest/include/serial_test.xml
def SERIAL_TEST_CTRL_REG ():                 
    return 0x08c0000

def SERIAL_TEST_STATUS_REG ():               
    return 0x08c0004

def SERIAL_TEST_CTRL_0_REG ():               
    return 0x08c0008

def SERIAL_TEST_STATUS_0_REG ():             
    return 0x08c000c

def SERIAL_TEST_NUM_FRAMES_SENT_0_HI_REG (): 
    return 0x08c0010

def SERIAL_TEST_NUM_FRAMES_SENT_0_LO_REG (): 
    return 0x08c0014

def SERIAL_TEST_NUM_FRAMES_RCVD_0_HI_REG (): 
    return 0x08c0018

def SERIAL_TEST_NUM_FRAMES_RCVD_0_LO_REG (): 
    return 0x08c001c

def SERIAL_TEST_CTRL_1_REG ():               
    return 0x08c0020

def SERIAL_TEST_STATUS_1_REG ():             
    return 0x08c0024

def SERIAL_TEST_NUM_FRAMES_SENT_1_HI_REG (): 
    return 0x08c0028

def SERIAL_TEST_NUM_FRAMES_SENT_1_LO_REG (): 
    return 0x08c002c

def SERIAL_TEST_NUM_FRAMES_RCVD_1_HI_REG (): 
    return 0x08c0030

def SERIAL_TEST_NUM_FRAMES_RCVD_1_LO_REG (): 
    return 0x08c0034


# Name: sram_test (SRAM_TEST)
# Description: SRAM test module
# File: projects/selftest/include/sram_test.xml
def SRAM_TEST_ERR_CNT_REG ():         
    return 0x0900000

def SRAM_TEST_ITER_NUM_REG ():        
    return 0x0900004

def SRAM_TEST_BAD_RUNS_REG ():        
    return 0x0900008

def SRAM_TEST_GOOD_RUNS_REG ():       
    return 0x090000c

def SRAM_TEST_STATUS_REG ():          
    return 0x0900010

def SRAM_TEST_EN_REG ():              
    return 0x0900014

def SRAM_TEST_CTRL_REG ():            
    return 0x0900018

def SRAM_TEST_RAND_SEED_HI_REG ():    
    return 0x090001c

def SRAM_TEST_RAND_SEED_LO_REG ():    
    return 0x0900020

def SRAM_TEST_LOG_ADDR_REG ():        
    return 0x0920000

def SRAM_TEST_LOG_EXP_DATA_HI_REG (): 
    return 0x0920004

def SRAM_TEST_LOG_EXP_DATA_LO_REG (): 
    return 0x0920008

def SRAM_TEST_LOG_RD_DATA_HI_REG ():  
    return 0x092000c

def SRAM_TEST_LOG_RD_DATA_LO_REG ():  
    return 0x0920010


# Name: sram_msb (SRAM_MSB)
# Description: SRAM most-significant bits registers
# File: projects/selftest/include/sram_msb.xml
def SRAM_MSB_SRAM1_RD_REG (): 
    return 0x0940000

def SRAM_MSB_SRAM1_WR_REG (): 
    return 0x0940004

def SRAM_MSB_SRAM2_RD_REG (): 
    return 0x0940008

def SRAM_MSB_SRAM2_WR_REG (): 
    return 0x094000c


# Name: dram_test (DRAM_TEST)
# Description: DRAM selftest
# File: projects/selftest/include/dram_test.xml
def DRAM_TEST_ERR_CNT_REG ():         
    return 0x0980000

def DRAM_TEST_ITER_NUM_REG ():        
    return 0x0980004

def DRAM_TEST_BAD_RUNS_REG ():        
    return 0x0980008

def DRAM_TEST_GOOD_RUNS_REG ():       
    return 0x098000c

def DRAM_TEST_STATUS_REG ():          
    return 0x0980010

def DRAM_TEST_EN_REG ():              
    return 0x0980014

def DRAM_TEST_CTRL_REG ():            
    return 0x0980018

def DRAM_TEST_RAND_SEED_REG ():       
    return 0x098001c

def DRAM_TEST_LOG_ADDR_REG ():        
    return 0x09a0000

def DRAM_TEST_LOG_EXP_DATA_HI_REG (): 
    return 0x09a0004

def DRAM_TEST_LOG_EXP_DATA_LO_REG (): 
    return 0x09a0008

def DRAM_TEST_LOG_RD_DATA_HI_REG ():  
    return 0x09a000c

def DRAM_TEST_LOG_RD_DATA_LO_REG ():  
    return 0x09a0010


# Name: phy_test (PHY_TEST)
# Description: Ethernet PHY test
# File: projects/selftest/include/phy_test.xml
def PHY_TEST_STATUS_REG ():                
    return 0x09c0000

def PHY_TEST_CTRL_REG ():                  
    return 0x09c0004

def PHY_TEST_SIZE_REG ():                  
    return 0x09c0008

def PHY_TEST_PATTERN_REG ():               
    return 0x09c000c

def PHY_TEST_INIT_SEQ_NO_REG ():           
    return 0x09c0010

def PHY_TEST_PHY_0_TX_STATUS_REG ():       
    return 0x09e0000

def PHY_TEST_PHY_0_TX_ITER_CNT_REG ():     
    return 0x09e0004

def PHY_TEST_PHY_0_TX_PKT_CNT_REG ():      
    return 0x09e0008

def PHY_TEST_PHY_0_TX_SEQ_NO_REG ():       
    return 0x09e000c

def PHY_TEST_PHY_0_TX_RAND_SEED_REG ():    
    return 0x09e0010

def PHY_TEST_PHY_0_RX_STATUS_REG ():       
    return 0x09e2000

def PHY_TEST_PHY_0_RX_GOOD_PKT_CNT_REG (): 
    return 0x09e2004

def PHY_TEST_PHY_0_RX_ERR_PKT_CNT_REG ():  
    return 0x09e2008

def PHY_TEST_PHY_0_RX_SEQ_NO_REG ():       
    return 0x09e200c

def PHY_TEST_PHY_0_RX_CTRL_REG ():         
    return 0x09e2010

def PHY_TEST_PHY_0_RX_LOG_STATUS_REG ():   
    return 0x09e4000

def PHY_TEST_PHY_0_RX_LOG_EXP_DATA_REG (): 
    return 0x09e4004

def PHY_TEST_PHY_0_RX_LOG_RX_DATA_REG ():  
    return 0x09e4008

def PHY_TEST_PHY_0_RX_LOG_CTRL_REG ():     
    return 0x09e400c

def PHY_TEST_PHY_1_TX_STATUS_REG ():       
    return 0x09e8000

def PHY_TEST_PHY_1_TX_ITER_CNT_REG ():     
    return 0x09e8004

def PHY_TEST_PHY_1_TX_PKT_CNT_REG ():      
    return 0x09e8008

def PHY_TEST_PHY_1_TX_SEQ_NO_REG ():       
    return 0x09e800c

def PHY_TEST_PHY_1_TX_RAND_SEED_REG ():    
    return 0x09e8010

def PHY_TEST_PHY_1_RX_STATUS_REG ():       
    return 0x09ea000

def PHY_TEST_PHY_1_RX_GOOD_PKT_CNT_REG (): 
    return 0x09ea004

def PHY_TEST_PHY_1_RX_ERR_PKT_CNT_REG ():  
    return 0x09ea008

def PHY_TEST_PHY_1_RX_SEQ_NO_REG ():       
    return 0x09ea00c

def PHY_TEST_PHY_1_RX_CTRL_REG ():         
    return 0x09ea010

def PHY_TEST_PHY_1_RX_LOG_STATUS_REG ():   
    return 0x09ec000

def PHY_TEST_PHY_1_RX_LOG_EXP_DATA_REG (): 
    return 0x09ec004

def PHY_TEST_PHY_1_RX_LOG_RX_DATA_REG ():  
    return 0x09ec008

def PHY_TEST_PHY_1_RX_LOG_CTRL_REG ():     
    return 0x09ec00c

def PHY_TEST_PHY_2_TX_STATUS_REG ():       
    return 0x09f0000

def PHY_TEST_PHY_2_TX_ITER_CNT_REG ():     
    return 0x09f0004

def PHY_TEST_PHY_2_TX_PKT_CNT_REG ():      
    return 0x09f0008

def PHY_TEST_PHY_2_TX_SEQ_NO_REG ():       
    return 0x09f000c

def PHY_TEST_PHY_2_TX_RAND_SEED_REG ():    
    return 0x09f0010

def PHY_TEST_PHY_2_RX_STATUS_REG ():       
    return 0x09f2000

def PHY_TEST_PHY_2_RX_GOOD_PKT_CNT_REG (): 
    return 0x09f2004

def PHY_TEST_PHY_2_RX_ERR_PKT_CNT_REG ():  
    return 0x09f2008

def PHY_TEST_PHY_2_RX_SEQ_NO_REG ():       
    return 0x09f200c

def PHY_TEST_PHY_2_RX_CTRL_REG ():         
    return 0x09f2010

def PHY_TEST_PHY_2_RX_LOG_STATUS_REG ():   
    return 0x09f4000

def PHY_TEST_PHY_2_RX_LOG_EXP_DATA_REG (): 
    return 0x09f4004

def PHY_TEST_PHY_2_RX_LOG_RX_DATA_REG ():  
    return 0x09f4008

def PHY_TEST_PHY_2_RX_LOG_CTRL_REG ():     
    return 0x09f400c

def PHY_TEST_PHY_3_TX_STATUS_REG ():       
    return 0x09f8000

def PHY_TEST_PHY_3_TX_ITER_CNT_REG ():     
    return 0x09f8004

def PHY_TEST_PHY_3_TX_PKT_CNT_REG ():      
    return 0x09f8008

def PHY_TEST_PHY_3_TX_SEQ_NO_REG ():       
    return 0x09f800c

def PHY_TEST_PHY_3_TX_RAND_SEED_REG ():    
    return 0x09f8010

def PHY_TEST_PHY_3_RX_STATUS_REG ():       
    return 0x09fa000

def PHY_TEST_PHY_3_RX_GOOD_PKT_CNT_REG (): 
    return 0x09fa004

def PHY_TEST_PHY_3_RX_ERR_PKT_CNT_REG ():  
    return 0x09fa008

def PHY_TEST_PHY_3_RX_SEQ_NO_REG ():       
    return 0x09fa00c

def PHY_TEST_PHY_3_RX_CTRL_REG ():         
    return 0x09fa010

def PHY_TEST_PHY_3_RX_LOG_STATUS_REG ():   
    return 0x09fc000

def PHY_TEST_PHY_3_RX_LOG_EXP_DATA_REG (): 
    return 0x09fc004

def PHY_TEST_PHY_3_RX_LOG_RX_DATA_REG ():  
    return 0x09fc008

def PHY_TEST_PHY_3_RX_LOG_CTRL_REG ():     
    return 0x09fc00c


def PHY_TEST_PHY_GROUP_BASE_ADDR ():
    return 0x09e0000

def PHY_TEST_PHY_GROUP_INST_OFFSET():
    return 0x0008000

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
def DRAM_TEST_STATUS_DONE_POS_LO():
    return 0

def DRAM_TEST_STATUS_DONE_POS_HI():
    return 4

def DRAM_TEST_STATUS_DONE_WIDTH():
    return 5

def DRAM_TEST_STATUS_FAIL_POS_LO():
    return 8

def DRAM_TEST_STATUS_FAIL_POS_HI():
    return 12

def DRAM_TEST_STATUS_FAIL_WIDTH():
    return 5


# Part 2: masks/values
def DRAM_TEST_STATUS_DONE_MASK():
    return 0x0000001f

def DRAM_TEST_STATUS_FAIL_MASK():
    return 0x00001f00


# Type: dram_test_enable
# Description: DRAM test status
# File: projects/selftest/include/dram_test.xml

# Part 1: bit positions
def DRAM_TEST_ENABLE_ENABLE_POS_LO():
    return 0

def DRAM_TEST_ENABLE_ENABLE_POS_HI():
    return 4

def DRAM_TEST_ENABLE_ENABLE_WIDTH():
    return 5


# Part 2: masks/values
def DRAM_TEST_ENABLE_ENABLE_MASK():
    return 0x0000001f


# Type: dram_test_ctrl
# Description: DRAM test status
# File: projects/selftest/include/dram_test.xml

# Part 1: bit positions
def DRAM_TEST_CTRL_RUN_POS():
    return 0

def DRAM_TEST_CTRL_REPEAT_POS():
    return 1


# Part 2: masks/values
def DRAM_TEST_CTRL_RUN():
    return 0x1; 

def DRAM_TEST_CTRL_REPEAT():
    return 0x2; 


# Type: dma_iface_ctrl
# Description: DMA interface control register
# File: lib/verilog/core/dma/xml/dma.xml

# Part 1: bit positions
def DMA_IFACE_CTRL_DISABLE_POS():
    return 0

def DMA_IFACE_CTRL_RESET_POS():
    return 1


# Part 2: masks/values
def DMA_IFACE_CTRL_DISABLE():
    return 0x001; 

def DMA_IFACE_CTRL_RESET():
    return 0x002; 


# Type: mii_ctrl
# Description: MII control register
# File: lib/verilog/core/io/mdio/xml/mdio.xml

# Part 1: bit positions
def MII_CTRL_RESET_POS():
    return 15

def MII_CTRL_INTERNAL_LOOPBACK_POS():
    return 14

def MII_CTRL_SPEED_SEL_LO_POS():
    return 13

def MII_CTRL_AUTONEG_ENABLE_POS():
    return 12

def MII_CTRL_PWR_DOWN_POS():
    return 11

def MII_CTRL_ISOLATE_POS():
    return 10

def MII_CTRL_RESTART_AUTONEG_POS():
    return 9

def MII_CTRL_DUPLEX_MODE_POS():
    return 8

def MII_CTRL_COLLISION_TEST_EN_POS():
    return 7

def MII_CTRL_SPEED_SEL_HI_POS():
    return 6


# Part 2: masks/values
def MII_CTRL_RESET():
    return 0x8000; 

def MII_CTRL_INTERNAL_LOOPBACK():
    return 0x4000; 

def MII_CTRL_SPEED_SEL_LO():
    return 0x2000; 

def MII_CTRL_AUTONEG_ENABLE():
    return 0x1000; 

def MII_CTRL_PWR_DOWN():
    return 0x0800; 

def MII_CTRL_ISOLATE():
    return 0x0400; 

def MII_CTRL_RESTART_AUTONEG():
    return 0x0200; 

def MII_CTRL_DUPLEX_MODE():
    return 0x0100; 

def MII_CTRL_COLLISION_TEST_EN():
    return 0x0080; 

def MII_CTRL_SPEED_SEL_HI():
    return 0x0040; 


# Type: mii_status
# Description: MII status register
# File: lib/verilog/core/io/mdio/xml/mdio.xml

# Part 1: bit positions
def MII_STATUS_100BASE_T4_CAPABLE_POS():
    return 15

def MII_STATUS_100BASE_X_FULL_DPLX_CAPABLE_POS():
    return 14

def MII_STATUS_100BASE_X_HALF_DPLX_CAPABLE_POS():
    return 13

def MII_STATUS_10BASE_T_FULL_DPLX_CAPABLE_POS():
    return 12

def MII_STATUS_10BASE_T_HALF_DPLX_CAPABLE_POS():
    return 11

def MII_STATUS_10BASE_T2_FULL_DPLX_CAPABLE_POS():
    return 10

def MII_STATUS_10BASE_T2_HALF_DPLX_CAPABLE_POS():
    return 9

def MII_STATUS_EXTENDED_STATUS_POS():
    return 8

def MII_STATUS_MF_PREAMBLE_SUPPRESS_POS():
    return 6

def MII_STATUS_AUTONEG_COMPLETE_POS():
    return 5

def MII_STATUS_REMOTE_FAULT_POS():
    return 4

def MII_STATUS_AUTONEG_ABILITY_POS():
    return 3

def MII_STATUS_LINK_STATUS_POS():
    return 2

def MII_STATUS_JABBER_DETECT_POS():
    return 1

def MII_STATUS_EXTENDED_CAPABILITY_POS():
    return 0


# Part 2: masks/values
def MII_STATUS_100BASE_T4_CAPABLE():
    return 0x8000; 

def MII_STATUS_100BASE_X_FULL_DPLX_CAPABLE():
    return 0x4000; 

def MII_STATUS_100BASE_X_HALF_DPLX_CAPABLE():
    return 0x2000; 

def MII_STATUS_10BASE_T_FULL_DPLX_CAPABLE():
    return 0x1000; 

def MII_STATUS_10BASE_T_HALF_DPLX_CAPABLE():
    return 0x0800; 

def MII_STATUS_10BASE_T2_FULL_DPLX_CAPABLE():
    return 0x0400; 

def MII_STATUS_10BASE_T2_HALF_DPLX_CAPABLE():
    return 0x0200; 

def MII_STATUS_EXTENDED_STATUS():
    return 0x0100; 

def MII_STATUS_MF_PREAMBLE_SUPPRESS():
    return 0x0040; 

def MII_STATUS_AUTONEG_COMPLETE():
    return 0x0020; 

def MII_STATUS_REMOTE_FAULT():
    return 0x0010; 

def MII_STATUS_AUTONEG_ABILITY():
    return 0x0008; 

def MII_STATUS_LINK_STATUS():
    return 0x0004; 

def MII_STATUS_JABBER_DETECT():
    return 0x0002; 

def MII_STATUS_EXTENDED_CAPABILITY():
    return 0x0001; 


# Type: phy_test_status
# Description: Ethernet PHY test status
# File: projects/selftest/include/phy_test.xml

# Part 1: bit positions
def PHY_TEST_STATUS_BUSY_POS():
    return 0

def PHY_TEST_STATUS_DONE_POS():
    return 4

def PHY_TEST_STATUS_GOOD_POS():
    return 8


# Part 2: masks/values
def PHY_TEST_STATUS_BUSY():
    return 0x00000001; 

def PHY_TEST_STATUS_DONE():
    return 0x00000010; 

def PHY_TEST_STATUS_GOOD():
    return 0x00000100; 


# Type: phy_test_ctrl
# Description: Ethernet PHY test control
# File: projects/selftest/include/phy_test.xml

# Part 1: bit positions
def PHY_TEST_CTRL_START_POS():
    return 0

def PHY_TEST_CTRL_REPEAT_POS():
    return 1


# Part 2: masks/values
def PHY_TEST_CTRL_START():
    return 0x1; 

def PHY_TEST_CTRL_REPEAT():
    return 0x2; 


# Type: phy_test_pattern
# Description: Ethernet PHY pattern enable
# File: projects/selftest/include/phy_test.xml

# Part 1: bit positions
def PHY_TEST_PATTERN_ENABLE_POS_LO():
    return 0

def PHY_TEST_PATTERN_ENABLE_POS_HI():
    return 4

def PHY_TEST_PATTERN_ENABLE_WIDTH():
    return 5


# Part 2: masks/values
def PHY_TEST_PATTERN_ENABLE_MASK():
    return 0x1f


# Type: phy_test_phy_tx_status
# Description: Ethernet PHY test -- individual PHY transmit status
# File: projects/selftest/include/phy_test.xml

# Part 1: bit positions
def PHY_TEST_PHY_TX_STATUS_DONE_POS():
    return 0

def PHY_TEST_PHY_TX_STATUS_CURR_PAT_POS_LO():
    return 16

def PHY_TEST_PHY_TX_STATUS_CURR_PAT_POS_HI():
    return 20

def PHY_TEST_PHY_TX_STATUS_CURR_PAT_WIDTH():
    return 5


# Part 2: masks/values
def PHY_TEST_PHY_TX_STATUS_DONE():
    return 0x00000001; 

def PHY_TEST_PHY_TX_STATUS_CURR_PAT_MASK():
    return 0x001f0000


# Type: phy_test_phy_rx_status
# Description: Ethernet PHY test -- individual PHY receive status
# File: projects/selftest/include/phy_test.xml

# Part 1: bit positions
def PHY_TEST_PHY_RX_STATUS_DONE_POS():
    return 0

def PHY_TEST_PHY_RX_STATUS_PASS_POS():
    return 4

def PHY_TEST_PHY_RX_STATUS_LOCKED_POS():
    return 8

def PHY_TEST_PHY_RX_STATUS_SEQ_NO_VALID_POS():
    return 12

def PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_POS_LO():
    return 16

def PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_POS_HI():
    return 18

def PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_WIDTH():
    return 3


# Part 2: masks/values
def PHY_TEST_PHY_RX_STATUS_DONE():
    return 0x00000001; 

def PHY_TEST_PHY_RX_STATUS_PASS():
    return 0x00000010; 

def PHY_TEST_PHY_RX_STATUS_LOCKED():
    return 0x00000100; 

def PHY_TEST_PHY_RX_STATUS_SEQ_NO_VALID():
    return 0x00001000; 

def PHY_TEST_PHY_RX_STATUS_LOCAL_SRC_PORT_MASK():
    return 0x00070000


# Type: phy_test_phy_rx_ctrl
# Description: Ethernet PHY test -- individual PHY receive control
# File: projects/selftest/include/phy_test.xml

# Part 1: bit positions
def PHY_TEST_PHY_RX_CTRL_RESET_GOOD_POS():
    return 0

def PHY_TEST_PHY_RX_CTRL_RESET_ERR_POS():
    return 1


# Part 2: masks/values
def PHY_TEST_PHY_RX_CTRL_RESET_GOOD():
    return 0x1; 

def PHY_TEST_PHY_RX_CTRL_RESET_ERR():
    return 0x2; 


# Type: phy_test_phy_rx_log_status
# Description: Ethernet PHY test -- individual PHY receive log status
# File: projects/selftest/include/phy_test.xml

# Part 1: bit positions
def PHY_TEST_PHY_RX_LOG_STATUS_FULL_POS():
    return 0

def PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_POS_LO():
    return 8

def PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_POS_HI():
    return 15

def PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_WIDTH():
    return 8


# Part 2: masks/values
def PHY_TEST_PHY_RX_LOG_STATUS_FULL():
    return 0x00000001; 

def PHY_TEST_PHY_RX_LOG_STATUS_DEPTH_MASK():
    return 0x0000ff00


# Type: phy_test_phy_rx_log_ctrl
# Description: Ethernet PHY test -- individual PHY receive log control
# File: projects/selftest/include/phy_test.xml

# Part 1: bit positions
def PHY_TEST_PHY_RX_LOG_CTRL_RESET_POS():
    return 0


# Part 2: masks/values
def PHY_TEST_PHY_RX_LOG_CTRL_RESET():
    return 0x1; 


# Type: serial_test_glbl_ctrl
# Description: Global serial test control
# File: projects/selftest/include/serial_test.xml

# Part 1: bit positions
def SERIAL_TEST_GLBL_CTRL_RESTART_POS():
    return 0

def SERIAL_TEST_GLBL_CTRL_NONSTOP_POS():
    return 1


# Part 2: masks/values
def SERIAL_TEST_GLBL_CTRL_RESTART():
    return 0x1; 

def SERIAL_TEST_GLBL_CTRL_NONSTOP():
    return 0x2; 


# Type: serial_test_iface_ctrl
# Description: Per-interface serial test control
# File: projects/selftest/include/serial_test.xml

# Part 1: bit positions
def SERIAL_TEST_IFACE_CTRL_RESET_POS():
    return 0

def SERIAL_TEST_IFACE_CTRL_LOOPBACK_POS_LO():
    return 2

def SERIAL_TEST_IFACE_CTRL_LOOPBACK_POS_HI():
    return 3

def SERIAL_TEST_IFACE_CTRL_LOOPBACK_WIDTH():
    return 2


# Part 2: masks/values
def SERIAL_TEST_IFACE_CTRL_RESET():
    return 0x1; 

def SERIAL_TEST_IFACE_CTRL_LOOPBACK_MASK():
    return 0xc


# Type: serial_test_glbl_status
# Description: Global serial test status
# File: projects/selftest/include/serial_test.xml

# Part 1: bit positions
def SERIAL_TEST_GLBL_STATUS_SUCCESSFUL_POS():
    return 0

def SERIAL_TEST_GLBL_STATUS_DONE_POS():
    return 1

def SERIAL_TEST_GLBL_STATUS_RUNNING_POS():
    return 2

def SERIAL_TEST_GLBL_STATUS_COUNT_POS_LO():
    return 3

def SERIAL_TEST_GLBL_STATUS_COUNT_POS_HI():
    return 31

def SERIAL_TEST_GLBL_STATUS_COUNT_WIDTH():
    return 29


# Part 2: masks/values
def SERIAL_TEST_GLBL_STATUS_SUCCESSFUL():
    return 0x00000001; 

def SERIAL_TEST_GLBL_STATUS_DONE():
    return 0x00000002; 

def SERIAL_TEST_GLBL_STATUS_RUNNING():
    return 0x00000004; 

def SERIAL_TEST_GLBL_STATUS_COUNT_MASK():
    return 0xfffffff8


# Type: serial_test_iface_status
# Description: Per-interface serial test status
# File: projects/selftest/include/serial_test.xml

# Part 1: bit positions
def SERIAL_TEST_IFACE_STATUS_LANE_UP_POS():
    return 0

def SERIAL_TEST_IFACE_STATUS_CHANNEL_UP_POS():
    return 1

def SERIAL_TEST_IFACE_STATUS_HARD_ERROR_POS():
    return 2

def SERIAL_TEST_IFACE_STATUS_SOFT_ERROR_POS():
    return 3

def SERIAL_TEST_IFACE_STATUS_FRAME_ERROR_POS():
    return 4

def SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_POS_LO():
    return 8

def SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_POS_HI():
    return 23

def SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_WIDTH():
    return 16


# Part 2: masks/values
def SERIAL_TEST_IFACE_STATUS_LANE_UP():
    return 0x00000001; 

def SERIAL_TEST_IFACE_STATUS_CHANNEL_UP():
    return 0x00000002; 

def SERIAL_TEST_IFACE_STATUS_HARD_ERROR():
    return 0x00000004; 

def SERIAL_TEST_IFACE_STATUS_SOFT_ERROR():
    return 0x00000008; 

def SERIAL_TEST_IFACE_STATUS_FRAME_ERROR():
    return 0x00000010; 

def SERIAL_TEST_IFACE_STATUS_ERROR_COUNT_MASK():
    return 0x00ffff00


# Type: sram_test_status
# Description: SRAM test status
# File: projects/selftest/include/sram_test.xml

# Part 1: bit positions
def SRAM_TEST_STATUS_DONE_1_POS_LO():
    return 0

def SRAM_TEST_STATUS_DONE_1_POS_HI():
    return 4

def SRAM_TEST_STATUS_DONE_1_WIDTH():
    return 5

def SRAM_TEST_STATUS_FAIL_1_POS_LO():
    return 8

def SRAM_TEST_STATUS_FAIL_1_POS_HI():
    return 12

def SRAM_TEST_STATUS_FAIL_1_WIDTH():
    return 5

def SRAM_TEST_STATUS_DONE_2_POS_LO():
    return 16

def SRAM_TEST_STATUS_DONE_2_POS_HI():
    return 20

def SRAM_TEST_STATUS_DONE_2_WIDTH():
    return 5

def SRAM_TEST_STATUS_FAIL_2_POS_LO():
    return 24

def SRAM_TEST_STATUS_FAIL_2_POS_HI():
    return 28

def SRAM_TEST_STATUS_FAIL_2_WIDTH():
    return 5


# Part 2: masks/values
def SRAM_TEST_STATUS_DONE_1_MASK():
    return 0x0000001f

def SRAM_TEST_STATUS_FAIL_1_MASK():
    return 0x00001f00

def SRAM_TEST_STATUS_DONE_2_MASK():
    return 0x001f0000

def SRAM_TEST_STATUS_FAIL_2_MASK():
    return 0x1f000000


# Type: sram_test_enable
# Description: SRAM test status
# File: projects/selftest/include/sram_test.xml

# Part 1: bit positions
def SRAM_TEST_ENABLE_TEST_EN_POS_LO():
    return 0

def SRAM_TEST_ENABLE_TEST_EN_POS_HI():
    return 4

def SRAM_TEST_ENABLE_TEST_EN_WIDTH():
    return 5

def SRAM_TEST_ENABLE_SRAM_EN_POS_LO():
    return 16

def SRAM_TEST_ENABLE_SRAM_EN_POS_HI():
    return 17

def SRAM_TEST_ENABLE_SRAM_EN_WIDTH():
    return 2


# Part 2: masks/values
def SRAM_TEST_ENABLE_TEST_EN_MASK():
    return 0x0000001f

def SRAM_TEST_ENABLE_SRAM_EN_MASK():
    return 0x00030000


# Type: sram_test_ctrl
# Description: SRAM test status
# File: projects/selftest/include/sram_test.xml

# Part 1: bit positions
def SRAM_TEST_CTRL_RUN_POS():
    return 0

def SRAM_TEST_CTRL_REPEAT_POS():
    return 1

def SRAM_TEST_CTRL_RESET_ERR_CNT_POS():
    return 8


# Part 2: masks/values
def SRAM_TEST_CTRL_RUN():
    return 0x00000001; 

def SRAM_TEST_CTRL_REPEAT():
    return 0x00000002; 

def SRAM_TEST_CTRL_RESET_ERR_CNT():
    return 0x00000100; 




# -------------------------------------
#   Register map
# -------------------------------------

import __main__;
if 'nf_regmap' not in dir(__main__):
    __main__.nf_regmap = {}

__main__.nf_regmap.update({
    0x0400000 : "DEV_ID_MD5_0_REG",
    0x0400004 : "DEV_ID_MD5_1_REG",
    0x0400008 : "DEV_ID_MD5_2_REG",
    0x040000c : "DEV_ID_MD5_3_REG",
    0x0400010 : "DEV_ID_DEVICE_ID_REG",
    0x0400014 : "DEV_ID_VERSION_REG",
    0x0400018 : "DEV_ID_CPCI_ID_REG",
    0x040001c : "DEV_ID_PROJ_DIR_0_REG",
    0x0400020 : "DEV_ID_PROJ_DIR_1_REG",
    0x0400024 : "DEV_ID_PROJ_DIR_2_REG",
    0x0400028 : "DEV_ID_PROJ_DIR_3_REG",
    0x040002c : "DEV_ID_PROJ_DIR_4_REG",
    0x0400030 : "DEV_ID_PROJ_DIR_5_REG",
    0x0400034 : "DEV_ID_PROJ_DIR_6_REG",
    0x0400038 : "DEV_ID_PROJ_DIR_7_REG",
    0x040003c : "DEV_ID_PROJ_DIR_8_REG",
    0x0400040 : "DEV_ID_PROJ_DIR_9_REG",
    0x0400044 : "DEV_ID_PROJ_DIR_10_REG",
    0x0400048 : "DEV_ID_PROJ_DIR_11_REG",
    0x040004c : "DEV_ID_PROJ_DIR_12_REG",
    0x0400050 : "DEV_ID_PROJ_DIR_13_REG",
    0x0400054 : "DEV_ID_PROJ_DIR_14_REG",
    0x0400058 : "DEV_ID_PROJ_DIR_15_REG",
    0x040005c : "DEV_ID_PROJ_NAME_0_REG",
    0x0400060 : "DEV_ID_PROJ_NAME_1_REG",
    0x0400064 : "DEV_ID_PROJ_NAME_2_REG",
    0x0400068 : "DEV_ID_PROJ_NAME_3_REG",
    0x040006c : "DEV_ID_PROJ_NAME_4_REG",
    0x0400070 : "DEV_ID_PROJ_NAME_5_REG",
    0x0400074 : "DEV_ID_PROJ_NAME_6_REG",
    0x0400078 : "DEV_ID_PROJ_NAME_7_REG",
    0x040007c : "DEV_ID_PROJ_NAME_8_REG",
    0x0400080 : "DEV_ID_PROJ_NAME_9_REG",
    0x0400084 : "DEV_ID_PROJ_NAME_10_REG",
    0x0400088 : "DEV_ID_PROJ_NAME_11_REG",
    0x040008c : "DEV_ID_PROJ_NAME_12_REG",
    0x0400090 : "DEV_ID_PROJ_NAME_13_REG",
    0x0400094 : "DEV_ID_PROJ_NAME_14_REG",
    0x0400098 : "DEV_ID_PROJ_NAME_15_REG",
    0x040009c : "DEV_ID_PROJ_DESC_0_REG",
    0x04000a0 : "DEV_ID_PROJ_DESC_1_REG",
    0x04000a4 : "DEV_ID_PROJ_DESC_2_REG",
    0x04000a8 : "DEV_ID_PROJ_DESC_3_REG",
    0x04000ac : "DEV_ID_PROJ_DESC_4_REG",
    0x04000b0 : "DEV_ID_PROJ_DESC_5_REG",
    0x04000b4 : "DEV_ID_PROJ_DESC_6_REG",
    0x04000b8 : "DEV_ID_PROJ_DESC_7_REG",
    0x04000bc : "DEV_ID_PROJ_DESC_8_REG",
    0x04000c0 : "DEV_ID_PROJ_DESC_9_REG",
    0x04000c4 : "DEV_ID_PROJ_DESC_10_REG",
    0x04000c8 : "DEV_ID_PROJ_DESC_11_REG",
    0x04000cc : "DEV_ID_PROJ_DESC_12_REG",
    0x04000d0 : "DEV_ID_PROJ_DESC_13_REG",
    0x04000d4 : "DEV_ID_PROJ_DESC_14_REG",
    0x04000d8 : "DEV_ID_PROJ_DESC_15_REG",
    0x04000dc : "DEV_ID_PROJ_DESC_16_REG",
    0x04000e0 : "DEV_ID_PROJ_DESC_17_REG",
    0x04000e4 : "DEV_ID_PROJ_DESC_18_REG",
    0x04000e8 : "DEV_ID_PROJ_DESC_19_REG",
    0x04000ec : "DEV_ID_PROJ_DESC_20_REG",
    0x04000f0 : "DEV_ID_PROJ_DESC_21_REG",
    0x04000f4 : "DEV_ID_PROJ_DESC_22_REG",
    0x04000f8 : "DEV_ID_PROJ_DESC_23_REG",
    0x04000fc : "DEV_ID_PROJ_DESC_24_REG",

    0x0440000 : "MDIO_PHY_0_CONTROL_REG",
    0x0440004 : "MDIO_PHY_0_STATUS_REG",
    0x0440008 : "MDIO_PHY_0_PHY_ID_HI_REG",
    0x044000c : "MDIO_PHY_0_PHY_ID_LO_REG",
    0x0440010 : "MDIO_PHY_0_AUTONEGOTIATION_ADVERT_REG",
    0x0440014 : "MDIO_PHY_0_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG",
    0x0440018 : "MDIO_PHY_0_AUTONEG_EXPANSION_REG",
    0x044001c : "MDIO_PHY_0_AUTONEG_NEXT_PAGE_TX_REG",
    0x0440020 : "MDIO_PHY_0_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG",
    0x0440024 : "MDIO_PHY_0_MASTER_SLAVE_CTRL_REG",
    0x0440028 : "MDIO_PHY_0_MASTER_SLAVE_STATUS_REG",
    0x044002c : "MDIO_PHY_0_PSE_CTRL_REG",
    0x0440030 : "MDIO_PHY_0_PSE_STATUS_REG",
    0x0440034 : "MDIO_PHY_0_MMD_ACCESS_CTRL_REG",
    0x0440038 : "MDIO_PHY_0_MMD_ACCESS_STATUS_REG",
    0x044003c : "MDIO_PHY_0_EXTENDED_STATUS_REG",
    0x0440040 : "MDIO_PHY_0_PHY_EXTENDED_CTRL_REG",
    0x0440044 : "MDIO_PHY_0_PHY_EXTENDED_STATUS_REG",
    0x0440048 : "MDIO_PHY_0_RX_ERROR_COUNT_REG",
    0x044004c : "MDIO_PHY_0_FALSE_CARRIER_SENSE_COUNT_REG",
    0x0440050 : "MDIO_PHY_0_RX_NOT_OK_COUNT_REG",
    0x0440054 : "MDIO_PHY_0_EXPANSION_1_REG",
    0x0440058 : "MDIO_PHY_0_EXPANSION_2_REG",
    0x044005c : "MDIO_PHY_0_EXPANSION_REG_ACCESS_REG",
    0x0440060 : "MDIO_PHY_0_SHADOW_18_REG",
    0x0440064 : "MDIO_PHY_0_AUX_STATUS_REG",
    0x0440068 : "MDIO_PHY_0_INT_STATUS_REG",
    0x044006c : "MDIO_PHY_0_INT_MASK_REG",
    0x0440070 : "MDIO_PHY_0_SHADOW_1C_REG",
    0x0440074 : "MDIO_PHY_0_SHADOW_1D_REG",
    0x0440078 : "MDIO_PHY_0_TEST_REG",
    0x044007c : "MDIO_PHY_0_RESERVED_REG",
    0x0440080 : "MDIO_PHY_1_CONTROL_REG",
    0x0440084 : "MDIO_PHY_1_STATUS_REG",
    0x0440088 : "MDIO_PHY_1_PHY_ID_HI_REG",
    0x044008c : "MDIO_PHY_1_PHY_ID_LO_REG",
    0x0440090 : "MDIO_PHY_1_AUTONEGOTIATION_ADVERT_REG",
    0x0440094 : "MDIO_PHY_1_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG",
    0x0440098 : "MDIO_PHY_1_AUTONEG_EXPANSION_REG",
    0x044009c : "MDIO_PHY_1_AUTONEG_NEXT_PAGE_TX_REG",
    0x04400a0 : "MDIO_PHY_1_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG",
    0x04400a4 : "MDIO_PHY_1_MASTER_SLAVE_CTRL_REG",
    0x04400a8 : "MDIO_PHY_1_MASTER_SLAVE_STATUS_REG",
    0x04400ac : "MDIO_PHY_1_PSE_CTRL_REG",
    0x04400b0 : "MDIO_PHY_1_PSE_STATUS_REG",
    0x04400b4 : "MDIO_PHY_1_MMD_ACCESS_CTRL_REG",
    0x04400b8 : "MDIO_PHY_1_MMD_ACCESS_STATUS_REG",
    0x04400bc : "MDIO_PHY_1_EXTENDED_STATUS_REG",
    0x04400c0 : "MDIO_PHY_1_PHY_EXTENDED_CTRL_REG",
    0x04400c4 : "MDIO_PHY_1_PHY_EXTENDED_STATUS_REG",
    0x04400c8 : "MDIO_PHY_1_RX_ERROR_COUNT_REG",
    0x04400cc : "MDIO_PHY_1_FALSE_CARRIER_SENSE_COUNT_REG",
    0x04400d0 : "MDIO_PHY_1_RX_NOT_OK_COUNT_REG",
    0x04400d4 : "MDIO_PHY_1_EXPANSION_1_REG",
    0x04400d8 : "MDIO_PHY_1_EXPANSION_2_REG",
    0x04400dc : "MDIO_PHY_1_EXPANSION_REG_ACCESS_REG",
    0x04400e0 : "MDIO_PHY_1_SHADOW_18_REG",
    0x04400e4 : "MDIO_PHY_1_AUX_STATUS_REG",
    0x04400e8 : "MDIO_PHY_1_INT_STATUS_REG",
    0x04400ec : "MDIO_PHY_1_INT_MASK_REG",
    0x04400f0 : "MDIO_PHY_1_SHADOW_1C_REG",
    0x04400f4 : "MDIO_PHY_1_SHADOW_1D_REG",
    0x04400f8 : "MDIO_PHY_1_TEST_REG",
    0x04400fc : "MDIO_PHY_1_RESERVED_REG",
    0x0440100 : "MDIO_PHY_2_CONTROL_REG",
    0x0440104 : "MDIO_PHY_2_STATUS_REG",
    0x0440108 : "MDIO_PHY_2_PHY_ID_HI_REG",
    0x044010c : "MDIO_PHY_2_PHY_ID_LO_REG",
    0x0440110 : "MDIO_PHY_2_AUTONEGOTIATION_ADVERT_REG",
    0x0440114 : "MDIO_PHY_2_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG",
    0x0440118 : "MDIO_PHY_2_AUTONEG_EXPANSION_REG",
    0x044011c : "MDIO_PHY_2_AUTONEG_NEXT_PAGE_TX_REG",
    0x0440120 : "MDIO_PHY_2_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG",
    0x0440124 : "MDIO_PHY_2_MASTER_SLAVE_CTRL_REG",
    0x0440128 : "MDIO_PHY_2_MASTER_SLAVE_STATUS_REG",
    0x044012c : "MDIO_PHY_2_PSE_CTRL_REG",
    0x0440130 : "MDIO_PHY_2_PSE_STATUS_REG",
    0x0440134 : "MDIO_PHY_2_MMD_ACCESS_CTRL_REG",
    0x0440138 : "MDIO_PHY_2_MMD_ACCESS_STATUS_REG",
    0x044013c : "MDIO_PHY_2_EXTENDED_STATUS_REG",
    0x0440140 : "MDIO_PHY_2_PHY_EXTENDED_CTRL_REG",
    0x0440144 : "MDIO_PHY_2_PHY_EXTENDED_STATUS_REG",
    0x0440148 : "MDIO_PHY_2_RX_ERROR_COUNT_REG",
    0x044014c : "MDIO_PHY_2_FALSE_CARRIER_SENSE_COUNT_REG",
    0x0440150 : "MDIO_PHY_2_RX_NOT_OK_COUNT_REG",
    0x0440154 : "MDIO_PHY_2_EXPANSION_1_REG",
    0x0440158 : "MDIO_PHY_2_EXPANSION_2_REG",
    0x044015c : "MDIO_PHY_2_EXPANSION_REG_ACCESS_REG",
    0x0440160 : "MDIO_PHY_2_SHADOW_18_REG",
    0x0440164 : "MDIO_PHY_2_AUX_STATUS_REG",
    0x0440168 : "MDIO_PHY_2_INT_STATUS_REG",
    0x044016c : "MDIO_PHY_2_INT_MASK_REG",
    0x0440170 : "MDIO_PHY_2_SHADOW_1C_REG",
    0x0440174 : "MDIO_PHY_2_SHADOW_1D_REG",
    0x0440178 : "MDIO_PHY_2_TEST_REG",
    0x044017c : "MDIO_PHY_2_RESERVED_REG",
    0x0440180 : "MDIO_PHY_3_CONTROL_REG",
    0x0440184 : "MDIO_PHY_3_STATUS_REG",
    0x0440188 : "MDIO_PHY_3_PHY_ID_HI_REG",
    0x044018c : "MDIO_PHY_3_PHY_ID_LO_REG",
    0x0440190 : "MDIO_PHY_3_AUTONEGOTIATION_ADVERT_REG",
    0x0440194 : "MDIO_PHY_3_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY_REG",
    0x0440198 : "MDIO_PHY_3_AUTONEG_EXPANSION_REG",
    0x044019c : "MDIO_PHY_3_AUTONEG_NEXT_PAGE_TX_REG",
    0x04401a0 : "MDIO_PHY_3_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE_REG",
    0x04401a4 : "MDIO_PHY_3_MASTER_SLAVE_CTRL_REG",
    0x04401a8 : "MDIO_PHY_3_MASTER_SLAVE_STATUS_REG",
    0x04401ac : "MDIO_PHY_3_PSE_CTRL_REG",
    0x04401b0 : "MDIO_PHY_3_PSE_STATUS_REG",
    0x04401b4 : "MDIO_PHY_3_MMD_ACCESS_CTRL_REG",
    0x04401b8 : "MDIO_PHY_3_MMD_ACCESS_STATUS_REG",
    0x04401bc : "MDIO_PHY_3_EXTENDED_STATUS_REG",
    0x04401c0 : "MDIO_PHY_3_PHY_EXTENDED_CTRL_REG",
    0x04401c4 : "MDIO_PHY_3_PHY_EXTENDED_STATUS_REG",
    0x04401c8 : "MDIO_PHY_3_RX_ERROR_COUNT_REG",
    0x04401cc : "MDIO_PHY_3_FALSE_CARRIER_SENSE_COUNT_REG",
    0x04401d0 : "MDIO_PHY_3_RX_NOT_OK_COUNT_REG",
    0x04401d4 : "MDIO_PHY_3_EXPANSION_1_REG",
    0x04401d8 : "MDIO_PHY_3_EXPANSION_2_REG",
    0x04401dc : "MDIO_PHY_3_EXPANSION_REG_ACCESS_REG",
    0x04401e0 : "MDIO_PHY_3_SHADOW_18_REG",
    0x04401e4 : "MDIO_PHY_3_AUX_STATUS_REG",
    0x04401e8 : "MDIO_PHY_3_INT_STATUS_REG",
    0x04401ec : "MDIO_PHY_3_INT_MASK_REG",
    0x04401f0 : "MDIO_PHY_3_SHADOW_1C_REG",
    0x04401f4 : "MDIO_PHY_3_SHADOW_1D_REG",
    0x04401f8 : "MDIO_PHY_3_TEST_REG",
    0x04401fc : "MDIO_PHY_3_RESERVED_REG",

    0x0500000 : "DMA_CTRL_REG",
    0x0500004 : "DMA_NUM_INGRESS_PKTS_REG",
    0x0500008 : "DMA_NUM_INGRESS_BYTES_REG",
    0x050000c : "DMA_NUM_EGRESS_PKTS_REG",
    0x0500010 : "DMA_NUM_EGRESS_BYTES_REG",
    0x0500014 : "DMA_NUM_TIMEOUTS_REG",

    0x0880000 : "CLOCK_TEST_TICKS_REG",

    0x08c0000 : "SERIAL_TEST_CTRL_REG",
    0x08c0004 : "SERIAL_TEST_STATUS_REG",
    0x08c0008 : "SERIAL_TEST_CTRL_0_REG",
    0x08c000c : "SERIAL_TEST_STATUS_0_REG",
    0x08c0010 : "SERIAL_TEST_NUM_FRAMES_SENT_0_HI_REG",
    0x08c0014 : "SERIAL_TEST_NUM_FRAMES_SENT_0_LO_REG",
    0x08c0018 : "SERIAL_TEST_NUM_FRAMES_RCVD_0_HI_REG",
    0x08c001c : "SERIAL_TEST_NUM_FRAMES_RCVD_0_LO_REG",
    0x08c0020 : "SERIAL_TEST_CTRL_1_REG",
    0x08c0024 : "SERIAL_TEST_STATUS_1_REG",
    0x08c0028 : "SERIAL_TEST_NUM_FRAMES_SENT_1_HI_REG",
    0x08c002c : "SERIAL_TEST_NUM_FRAMES_SENT_1_LO_REG",
    0x08c0030 : "SERIAL_TEST_NUM_FRAMES_RCVD_1_HI_REG",
    0x08c0034 : "SERIAL_TEST_NUM_FRAMES_RCVD_1_LO_REG",

    0x0900000 : "SRAM_TEST_ERR_CNT_REG",
    0x0900004 : "SRAM_TEST_ITER_NUM_REG",
    0x0900008 : "SRAM_TEST_BAD_RUNS_REG",
    0x090000c : "SRAM_TEST_GOOD_RUNS_REG",
    0x0900010 : "SRAM_TEST_STATUS_REG",
    0x0900014 : "SRAM_TEST_EN_REG",
    0x0900018 : "SRAM_TEST_CTRL_REG",
    0x090001c : "SRAM_TEST_RAND_SEED_HI_REG",
    0x0900020 : "SRAM_TEST_RAND_SEED_LO_REG",
    0x0920000 : "SRAM_TEST_LOG_ADDR_REG",
    0x0920004 : "SRAM_TEST_LOG_EXP_DATA_HI_REG",
    0x0920008 : "SRAM_TEST_LOG_EXP_DATA_LO_REG",
    0x092000c : "SRAM_TEST_LOG_RD_DATA_HI_REG",
    0x0920010 : "SRAM_TEST_LOG_RD_DATA_LO_REG",

    0x0940000 : "SRAM_MSB_SRAM1_RD_REG",
    0x0940004 : "SRAM_MSB_SRAM1_WR_REG",
    0x0940008 : "SRAM_MSB_SRAM2_RD_REG",
    0x094000c : "SRAM_MSB_SRAM2_WR_REG",

    0x0980000 : "DRAM_TEST_ERR_CNT_REG",
    0x0980004 : "DRAM_TEST_ITER_NUM_REG",
    0x0980008 : "DRAM_TEST_BAD_RUNS_REG",
    0x098000c : "DRAM_TEST_GOOD_RUNS_REG",
    0x0980010 : "DRAM_TEST_STATUS_REG",
    0x0980014 : "DRAM_TEST_EN_REG",
    0x0980018 : "DRAM_TEST_CTRL_REG",
    0x098001c : "DRAM_TEST_RAND_SEED_REG",
    0x09a0000 : "DRAM_TEST_LOG_ADDR_REG",
    0x09a0004 : "DRAM_TEST_LOG_EXP_DATA_HI_REG",
    0x09a0008 : "DRAM_TEST_LOG_EXP_DATA_LO_REG",
    0x09a000c : "DRAM_TEST_LOG_RD_DATA_HI_REG",
    0x09a0010 : "DRAM_TEST_LOG_RD_DATA_LO_REG",

    0x09c0000 : "PHY_TEST_STATUS_REG",
    0x09c0004 : "PHY_TEST_CTRL_REG",
    0x09c0008 : "PHY_TEST_SIZE_REG",
    0x09c000c : "PHY_TEST_PATTERN_REG",
    0x09c0010 : "PHY_TEST_INIT_SEQ_NO_REG",
    0x09e0000 : "PHY_TEST_PHY_0_TX_STATUS_REG",
    0x09e0004 : "PHY_TEST_PHY_0_TX_ITER_CNT_REG",
    0x09e0008 : "PHY_TEST_PHY_0_TX_PKT_CNT_REG",
    0x09e000c : "PHY_TEST_PHY_0_TX_SEQ_NO_REG",
    0x09e0010 : "PHY_TEST_PHY_0_TX_RAND_SEED_REG",
    0x09e2000 : "PHY_TEST_PHY_0_RX_STATUS_REG",
    0x09e2004 : "PHY_TEST_PHY_0_RX_GOOD_PKT_CNT_REG",
    0x09e2008 : "PHY_TEST_PHY_0_RX_ERR_PKT_CNT_REG",
    0x09e200c : "PHY_TEST_PHY_0_RX_SEQ_NO_REG",
    0x09e2010 : "PHY_TEST_PHY_0_RX_CTRL_REG",
    0x09e4000 : "PHY_TEST_PHY_0_RX_LOG_STATUS_REG",
    0x09e4004 : "PHY_TEST_PHY_0_RX_LOG_EXP_DATA_REG",
    0x09e4008 : "PHY_TEST_PHY_0_RX_LOG_RX_DATA_REG",
    0x09e400c : "PHY_TEST_PHY_0_RX_LOG_CTRL_REG",
    0x09e8000 : "PHY_TEST_PHY_1_TX_STATUS_REG",
    0x09e8004 : "PHY_TEST_PHY_1_TX_ITER_CNT_REG",
    0x09e8008 : "PHY_TEST_PHY_1_TX_PKT_CNT_REG",
    0x09e800c : "PHY_TEST_PHY_1_TX_SEQ_NO_REG",
    0x09e8010 : "PHY_TEST_PHY_1_TX_RAND_SEED_REG",
    0x09ea000 : "PHY_TEST_PHY_1_RX_STATUS_REG",
    0x09ea004 : "PHY_TEST_PHY_1_RX_GOOD_PKT_CNT_REG",
    0x09ea008 : "PHY_TEST_PHY_1_RX_ERR_PKT_CNT_REG",
    0x09ea00c : "PHY_TEST_PHY_1_RX_SEQ_NO_REG",
    0x09ea010 : "PHY_TEST_PHY_1_RX_CTRL_REG",
    0x09ec000 : "PHY_TEST_PHY_1_RX_LOG_STATUS_REG",
    0x09ec004 : "PHY_TEST_PHY_1_RX_LOG_EXP_DATA_REG",
    0x09ec008 : "PHY_TEST_PHY_1_RX_LOG_RX_DATA_REG",
    0x09ec00c : "PHY_TEST_PHY_1_RX_LOG_CTRL_REG",
    0x09f0000 : "PHY_TEST_PHY_2_TX_STATUS_REG",
    0x09f0004 : "PHY_TEST_PHY_2_TX_ITER_CNT_REG",
    0x09f0008 : "PHY_TEST_PHY_2_TX_PKT_CNT_REG",
    0x09f000c : "PHY_TEST_PHY_2_TX_SEQ_NO_REG",
    0x09f0010 : "PHY_TEST_PHY_2_TX_RAND_SEED_REG",
    0x09f2000 : "PHY_TEST_PHY_2_RX_STATUS_REG",
    0x09f2004 : "PHY_TEST_PHY_2_RX_GOOD_PKT_CNT_REG",
    0x09f2008 : "PHY_TEST_PHY_2_RX_ERR_PKT_CNT_REG",
    0x09f200c : "PHY_TEST_PHY_2_RX_SEQ_NO_REG",
    0x09f2010 : "PHY_TEST_PHY_2_RX_CTRL_REG",
    0x09f4000 : "PHY_TEST_PHY_2_RX_LOG_STATUS_REG",
    0x09f4004 : "PHY_TEST_PHY_2_RX_LOG_EXP_DATA_REG",
    0x09f4008 : "PHY_TEST_PHY_2_RX_LOG_RX_DATA_REG",
    0x09f400c : "PHY_TEST_PHY_2_RX_LOG_CTRL_REG",
    0x09f8000 : "PHY_TEST_PHY_3_TX_STATUS_REG",
    0x09f8004 : "PHY_TEST_PHY_3_TX_ITER_CNT_REG",
    0x09f8008 : "PHY_TEST_PHY_3_TX_PKT_CNT_REG",
    0x09f800c : "PHY_TEST_PHY_3_TX_SEQ_NO_REG",
    0x09f8010 : "PHY_TEST_PHY_3_TX_RAND_SEED_REG",
    0x09fa000 : "PHY_TEST_PHY_3_RX_STATUS_REG",
    0x09fa004 : "PHY_TEST_PHY_3_RX_GOOD_PKT_CNT_REG",
    0x09fa008 : "PHY_TEST_PHY_3_RX_ERR_PKT_CNT_REG",
    0x09fa00c : "PHY_TEST_PHY_3_RX_SEQ_NO_REG",
    0x09fa010 : "PHY_TEST_PHY_3_RX_CTRL_REG",
    0x09fc000 : "PHY_TEST_PHY_3_RX_LOG_STATUS_REG",
    0x09fc004 : "PHY_TEST_PHY_3_RX_LOG_EXP_DATA_REG",
    0x09fc008 : "PHY_TEST_PHY_3_RX_LOG_RX_DATA_REG",
    0x09fc00c : "PHY_TEST_PHY_3_RX_LOG_CTRL_REG",

})




# End of File
