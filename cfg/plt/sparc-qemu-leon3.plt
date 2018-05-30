####################################################################################################
#
#  vi: set ft=make:
#
#  Platform config.
#
#  This file is including in *prj file.
#
#  Based on it will be generate files:  krn-config.h, ldr-config.h, sys-config.h.
#
####################################################################################################

#---------------------------------------------------------------------------------------------------
#  system params
#---------------------------------------------------------------------------------------------------

arch             = sparc
cpu              = leon3
plat             = qemu
brd              = qemu_leon3
max_cpus         = 4
sys_clock_hz     = 40000000
ram_start        = 0x40000000
ram_sz           = 0x8000000
page_sz          = 0x1000

#---------------------------------------------------------------------------------------------------
#  kernel params
#---------------------------------------------------------------------------------------------------

krn_vaddr        = 0xf0000000
krn_tick_usec    = 10000

krn_uart_paddr   = 0x80000100
krn_uart_sz      = 0x100
krn_uart_bitrate = 115200
krn_uart_irq     = 3

krn_intc_paddr   = 0x80000200
krn_intc_sz      = 0x100

krn_timer_paddr  = 0x80000300
krn_timer_sz     = 0x100
krn_timer_irq    = 6

#---------------------------------------------------------------------------------------------------
#  bootloader params
#---------------------------------------------------------------------------------------------------

ldr_uart_paddr   = 0x80000100
ldr_uart_bitrate = 115200

#---------------------------------------------------------------------------------------------------
#  Base devices
#---------------------------------------------------------------------------------------------------

plt_uart         = sparc_apbuart
plt_intc         = sparc_irqmp
plt_timer        = sparc_gptimer
plt_mmu          = sparc_srmmu
