#include "basic.s"
#include "bios.s"
#include "basic_mon.s"
#include "io.s"
#include "lcd.s"
#include "util.s"

RESET:
  ldx #$ff    
  txs
  
  jsr init_timer11_freerun

  jmp WOZ_RESET

NMI:
  rti
IRQ:
  jsr IRQ_VIAS
  rti

number: .word 1729

#include "wozmon.s"

    *=$FFFA
    .dsb (*-END_WOZ), 0
    *=$FFFA
      .word NMI           ; NMI vector
      .word RESET         ; RESET vector
      .word IRQ           ; IRQ vector

