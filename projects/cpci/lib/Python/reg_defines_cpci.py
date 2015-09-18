#!/usr/bin/python
#############################################################
#
# Python register defines
#
# Project: CPCI (cpci)
# Description: NetFPGA PCI interface
#
#############################################################

# -------------------------------------
#   Version Information
# -------------------------------------
# CPCI version number (major number)
def CPCI_VERSION_ID ():
    return 0x000004

# CPCI revision number (minor number)
def CPCI_REVISION_ID ():
    return 0x01


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


# ===== File: projects/cpci/include/cpci_regs.xml =====

# Default maximum time for DMA transfers (in clock cycles)
def CPCI_DMA_XFER_TIME_DEFAULT ():  
    return 30000

# Default maximum number of retries for DMA transactions
def CPCI_DMA_RETRIES_DEFAULT ():    
    return 0xffff

# Default maximum Virtex register read time
def CPCI_CNET_READ_TIME_DEFAULT (): 
    return 4000

# Number of PCI cycles in an interation
def CPCI_P_MAX_DEFAULT ():          
    return 3333333

# Expected number of CPCI-Virtex clocks in the PCI period defined above
def CPCI_N_EXP_DEFAULT ():          
    return 6250000



## -------------------------------------
##   Modules
## -------------------------------------

# Module tags
def CPCI_BASE_ADDR (): 
    return 0x0000000




# -------------------------------------
#   Registers
# -------------------------------------

# Name: cpci (CPCI)
# Description: CPCI registers
# File: projects/cpci/include/cpci_regs.xml
def CPCI_ID_REG ():                  
    return 0x0000000

def CPCI_BOARD_ID_REG ():            
    return 0x0000004

def CPCI_CTRL_REG ():                
    return 0x0000008

def CPCI_RESET_REG ():               
    return 0x000000c

def CPCI_ERROR_REG ():               
    return 0x0000010

def CPCI_DUMMY_REG ():               
    return 0x0000020

def CPCI_INTERRUPT_MASK_REG ():      
    return 0x0000040

def CPCI_INTERRUPT_STATUS_REG ():    
    return 0x0000044

def CPCI_CNET_CLK_SEL_REG ():        
    return 0x0000050

def CPCI_REPROG_DATA_REG ():         
    return 0x0000100

def CPCI_REPROG_STATUS_REG ():       
    return 0x0000104

def CPCI_REPROG_CTRL_REG ():         
    return 0x0000108

def CPCI_DMA_ADDR_I_REG ():          
    return 0x0000140

def CPCI_DMA_ADDR_E_REG ():          
    return 0x0000144

def CPCI_DMA_SIZE_I_REG ():          
    return 0x0000148

def CPCI_DMA_SIZE_E_REG ():          
    return 0x000014c

def CPCI_DMA_CTRL_I_REG ():          
    return 0x0000150

def CPCI_DMA_CTRL_E_REG ():          
    return 0x0000154

def CPCI_DMA_QUEUE_STATUS_REG ():    
    return 0x0000158

def CPCI_DMA_XFER_TIME_REG ():       
    return 0x0000180

def CPCI_DMA_RETRIES_REG ():         
    return 0x0000184

def CPCI_CNET_READ_TIME_REG ():      
    return 0x0000188

def CPCI_DMA_INGRESS_PKT_CNT_REG (): 
    return 0x0000400

def CPCI_DMA_EGRESS_PKT_CNT_REG ():  
    return 0x0000404

def CPCI_CPCI_REG_READ_CNT_REG ():   
    return 0x0000408

def CPCI_CPCI_REG_WRITE_CNT_REG ():  
    return 0x000040c

def CPCI_CNET_REG_READ_CNT_REG ():   
    return 0x0000410

def CPCI_CNET_REG_WRITE_CNT_REG ():  
    return 0x0000414

def CPCI_CLOCK_CHECK_N_CLK_REG ():   
    return 0x0000500

def CPCI_CLOCK_CHECK_P_MAX_REG ():   
    return 0x0000504

def CPCI_CLOCK_CHECK_N_EXP_REG ():   
    return 0x0000508

def CPCI_PCI_CLK_CNT_REG ():         
    return 0x0000510

def CPCI_CPCI_RESET_CNT_REG ():      
    return 0x0000520




# -------------------------------------
#   Bitmasks
# -------------------------------------

# Type: cpci_id
# Description: CPCI ID
# File: projects/cpci/include/cpci_regs.xml

# Part 1: bit positions
def CPCI_ID_VERSION_POS_LO():
    return 0

def CPCI_ID_VERSION_POS_HI():
    return 23

def CPCI_ID_VERSION_WIDTH():
    return 24

def CPCI_ID_REVISION_POS_LO():
    return 24

def CPCI_ID_REVISION_POS_HI():
    return 31

def CPCI_ID_REVISION_WIDTH():
    return 8


# Part 2: masks/values
def CPCI_ID_VERSION_MASK():
    return 0x00ffffff

def CPCI_ID_REVISION_MASK():
    return 0xff000000


# Type: cpci_board_id
# Description: CPCI board ID
# File: projects/cpci/include/cpci_regs.xml

# Part 1: bit positions
def CPCI_BOARD_ID_JMPR_POS():
    return 0

def CPCI_BOARD_ID_ROTARY_POS_LO():
    return 8

def CPCI_BOARD_ID_ROTARY_POS_HI():
    return 11

def CPCI_BOARD_ID_ROTARY_WIDTH():
    return 4


# Part 2: masks/values
def CPCI_BOARD_ID_JMPR():
    return 0x00000001; 

def CPCI_BOARD_ID_ROTARY_MASK():
    return 0x00000f00


# Type: cpci_ctrl
# Description: Control register
# File: projects/cpci/include/cpci_regs.xml

# Part 1: bit positions
def CPCI_CTRL_LED_POS():
    return 0

def CPCI_CTRL_CNET_RESET_POS():
    return 8

def CPCI_CTRL_LITTLE_ENDIAN_POS():
    return 16


# Part 2: masks/values
def CPCI_CTRL_LED():
    return 0x00000001; 

def CPCI_CTRL_CNET_RESET():
    return 0x00000100; 

def CPCI_CTRL_LITTLE_ENDIAN():
    return 0x00010000; 


# Type: cpci_reset
# Description: Reset the board
# File: projects/cpci/include/cpci_regs.xml

# Part 1: bit positions
def CPCI_RESET_RESET_POS():
    return 0


# Part 2: masks/values
def CPCI_RESET_RESET():
    return 0x1; 


# Type: cpci_error
# Description: CPCI error
# File: projects/cpci/include/cpci_regs.xml

# Part 1: bit positions
def CPCI_ERROR_CNET_RD_TIMEOUT_POS():
    return 25

def CPCI_ERROR_CNET_ERR_POS():
    return 24

def CPCI_ERROR_PROG_OVERFLOW_POS():
    return 17

def CPCI_ERROR_PROG_ERROR_POS():
    return 16

def CPCI_ERROR_DMA_TIMEOUT_POS():
    return 10

def CPCI_ERROR_DMA_RETRY_EXPIRE_POS():
    return 9

def CPCI_ERROR_DMA_BUF_OVERFLOW_POS():
    return 8

def CPCI_ERROR_DMA_RD_SIZE_ERR_POS():
    return 6

def CPCI_ERROR_DMA_WR_SIZE_ERR_POS():
    return 5

def CPCI_ERROR_DMA_RD_ADDR_ERR_POS():
    return 4

def CPCI_ERROR_DMA_WR_ADDR_ERR_POS():
    return 3

def CPCI_ERROR_DMA_RD_MAC_ERR_POS():
    return 2

def CPCI_ERROR_DMA_WR_MAC_ERR_POS():
    return 1

def CPCI_ERROR_DMA_FATAL_ERR_POS():
    return 0


# Part 2: masks/values
def CPCI_ERROR_CNET_RD_TIMEOUT():
    return 0x02000000; 

def CPCI_ERROR_CNET_ERR():
    return 0x01000000; 

def CPCI_ERROR_PROG_OVERFLOW():
    return 0x00020000; 

def CPCI_ERROR_PROG_ERROR():
    return 0x00010000; 

def CPCI_ERROR_DMA_TIMEOUT():
    return 0x00000400; 

def CPCI_ERROR_DMA_RETRY_EXPIRE():
    return 0x00000200; 

def CPCI_ERROR_DMA_BUF_OVERFLOW():
    return 0x00000100; 

def CPCI_ERROR_DMA_RD_SIZE_ERR():
    return 0x00000040; 

def CPCI_ERROR_DMA_WR_SIZE_ERR():
    return 0x00000020; 

def CPCI_ERROR_DMA_RD_ADDR_ERR():
    return 0x00000010; 

def CPCI_ERROR_DMA_WR_ADDR_ERR():
    return 0x00000008; 

def CPCI_ERROR_DMA_RD_MAC_ERR():
    return 0x00000004; 

def CPCI_ERROR_DMA_WR_MAC_ERR():
    return 0x00000002; 

def CPCI_ERROR_DMA_FATAL_ERR():
    return 0x00000001; 


# Type: cpci_interrupt
# Description: CPCI error
# File: projects/cpci/include/cpci_regs.xml

# Part 1: bit positions
def CPCI_INTERRUPT_DMA_RD_DONE_POS():
    return 31

def CPCI_INTERRUPT_DMA_WR_DONE_POS():
    return 30

def CPCI_INTERRUPT_PHY_INTR_POS():
    return 29

def CPCI_INTERRUPT_DMA_QUEUE_STATUS_CHANGE_POS():
    return 9

def CPCI_INTERRUPT_PKT_AVAIL_POS():
    return 8

def CPCI_INTERRUPT_CNET_ERR_POS():
    return 5

def CPCI_INTERRUPT_CNET_RD_TIMEOUT_POS():
    return 4

def CPCI_INTERRUPT_PROG_ERROR_POS():
    return 3

def CPCI_INTERRUPT_DMA_TIMEOUT_POS():
    return 2

def CPCI_INTERRUPT_DMA_GENERAL_POS():
    return 1

def CPCI_INTERRUPT_DMA_FATAL_POS():
    return 0


# Part 2: masks/values
def CPCI_INTERRUPT_DMA_RD_DONE():
    return 0x80000000; 

def CPCI_INTERRUPT_DMA_WR_DONE():
    return 0x40000000; 

def CPCI_INTERRUPT_PHY_INTR():
    return 0x20000000; 

def CPCI_INTERRUPT_DMA_QUEUE_STATUS_CHANGE():
    return 0x00000200; 

def CPCI_INTERRUPT_PKT_AVAIL():
    return 0x00000100; 

def CPCI_INTERRUPT_CNET_ERR():
    return 0x00000020; 

def CPCI_INTERRUPT_CNET_RD_TIMEOUT():
    return 0x00000010; 

def CPCI_INTERRUPT_PROG_ERROR():
    return 0x00000008; 

def CPCI_INTERRUPT_DMA_TIMEOUT():
    return 0x00000004; 

def CPCI_INTERRUPT_DMA_GENERAL():
    return 0x00000002; 

def CPCI_INTERRUPT_DMA_FATAL():
    return 0x00000001; 


# Type: cpci_cnet_clk_sel
# Description: CNET (Virtex) clock selection
# File: projects/cpci/include/cpci_regs.xml

# Part 1: bit positions
def CPCI_CNET_CLK_SEL_CLK_125_POS():
    return 0


# Part 2: masks/values
def CPCI_CNET_CLK_SEL_CLK_125():
    return 0x1; 


# Type: cpci_reprog_status
# Description: CNET (Virtex) reprogramming status
# File: projects/cpci/include/cpci_regs.xml

# Part 1: bit positions
def CPCI_REPROG_STATUS_REPROG_POS():
    return 0

def CPCI_REPROG_STATUS_EMPTY_POS():
    return 1

def CPCI_REPROG_STATUS_DONE_POS():
    return 8

def CPCI_REPROG_STATUS_INIT_POS():
    return 16


# Part 2: masks/values
def CPCI_REPROG_STATUS_REPROG():
    return 0x00000001; 

def CPCI_REPROG_STATUS_EMPTY():
    return 0x00000002; 

def CPCI_REPROG_STATUS_DONE():
    return 0x00000100; 

def CPCI_REPROG_STATUS_INIT():
    return 0x00010000; 


# Type: cpci_reprog_ctrl
# Description: CNET (Virtex) reprogramming control
# File: projects/cpci/include/cpci_regs.xml

# Part 1: bit positions
def CPCI_REPROG_CTRL_RESET_POS():
    return 0


# Part 2: masks/values
def CPCI_REPROG_CTRL_RESET():
    return 0x1; 


# Type: cpci_dma_ctrl
# Description: DMA control
# File: projects/cpci/include/cpci_regs.xml

# Part 1: bit positions
def CPCI_DMA_CTRL_NF2_IS_OWNER_POS():
    return 0

def CPCI_DMA_CTRL_PORT_POS_LO():
    return 8

def CPCI_DMA_CTRL_PORT_POS_HI():
    return 9

def CPCI_DMA_CTRL_PORT_WIDTH():
    return 2


# Part 2: masks/values
def CPCI_DMA_CTRL_NF2_IS_OWNER():
    return 0x00000001; 

def CPCI_DMA_CTRL_PORT_MASK():
    return 0x00000300


# Type: cpci_dma_queue_status
# Description: DMA queue status
# File: projects/cpci/include/cpci_regs.xml

# Part 1: bit positions
def CPCI_DMA_QUEUE_STATUS_PKT_AVAIL_POS_LO():
    return 16

def CPCI_DMA_QUEUE_STATUS_PKT_AVAIL_POS_HI():
    return 31

def CPCI_DMA_QUEUE_STATUS_PKT_AVAIL_WIDTH():
    return 16

def CPCI_DMA_QUEUE_STATUS_CAN_WR_PKT_POS_LO():
    return 0

def CPCI_DMA_QUEUE_STATUS_CAN_WR_PKT_POS_HI():
    return 15

def CPCI_DMA_QUEUE_STATUS_CAN_WR_PKT_WIDTH():
    return 16


# Part 2: masks/values
def CPCI_DMA_QUEUE_STATUS_PKT_AVAIL_MASK():
    return 0xffff0000

def CPCI_DMA_QUEUE_STATUS_CAN_WR_PKT_MASK():
    return 0x0000ffff




# -------------------------------------
#   Register map
# -------------------------------------

import __main__;
if 'nf_regmap' not in dir(__main__):
    __main__.nf_regmap = {}

__main__.nf_regmap.update({
    0x0000000 : "CPCI_ID_REG",
    0x0000004 : "CPCI_BOARD_ID_REG",
    0x0000008 : "CPCI_CTRL_REG",
    0x000000c : "CPCI_RESET_REG",
    0x0000010 : "CPCI_ERROR_REG",
    0x0000020 : "CPCI_DUMMY_REG",
    0x0000040 : "CPCI_INTERRUPT_MASK_REG",
    0x0000044 : "CPCI_INTERRUPT_STATUS_REG",
    0x0000050 : "CPCI_CNET_CLK_SEL_REG",
    0x0000100 : "CPCI_REPROG_DATA_REG",
    0x0000104 : "CPCI_REPROG_STATUS_REG",
    0x0000108 : "CPCI_REPROG_CTRL_REG",
    0x0000140 : "CPCI_DMA_ADDR_I_REG",
    0x0000144 : "CPCI_DMA_ADDR_E_REG",
    0x0000148 : "CPCI_DMA_SIZE_I_REG",
    0x000014c : "CPCI_DMA_SIZE_E_REG",
    0x0000150 : "CPCI_DMA_CTRL_I_REG",
    0x0000154 : "CPCI_DMA_CTRL_E_REG",
    0x0000158 : "CPCI_DMA_QUEUE_STATUS_REG",
    0x0000180 : "CPCI_DMA_XFER_TIME_REG",
    0x0000184 : "CPCI_DMA_RETRIES_REG",
    0x0000188 : "CPCI_CNET_READ_TIME_REG",
    0x0000400 : "CPCI_DMA_INGRESS_PKT_CNT_REG",
    0x0000404 : "CPCI_DMA_EGRESS_PKT_CNT_REG",
    0x0000408 : "CPCI_CPCI_REG_READ_CNT_REG",
    0x000040c : "CPCI_CPCI_REG_WRITE_CNT_REG",
    0x0000410 : "CPCI_CNET_REG_READ_CNT_REG",
    0x0000414 : "CPCI_CNET_REG_WRITE_CNT_REG",
    0x0000500 : "CPCI_CLOCK_CHECK_N_CLK_REG",
    0x0000504 : "CPCI_CLOCK_CHECK_P_MAX_REG",
    0x0000508 : "CPCI_CLOCK_CHECK_N_EXP_REG",
    0x0000510 : "CPCI_PCI_CLK_CNT_REG",
    0x0000520 : "CPCI_CPCI_RESET_CNT_REG",

})




# End of File
