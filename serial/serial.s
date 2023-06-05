ACIA_DATA = $7F00
ACIA_STATUS = $7F01
ACIA_COMMAND = $7F02
ACIA_CONTROL = $7F03

PORTB = $7D00
DDRB =  $7D02

E  = %01000000
RW = %00100000
RS = %00010000

INS_INIT = %00000010
INS_4BIT = %00101000
INS_CLEAR = %00000001
INS_RETURN = %00000010
INS_CURSOR = %00001111

PORTB_IO_MASK = %11111111

    .org $8000
reset:
    ldx #$ff    
    txs

    lda #PORTB_IO_MASK
    sta DDRB

    jsr lcd_init
    lda #INS_4BIT ;4-bit mode, 5x8 font, 2 line
    jsr lcd_instruction

    lda #INS_CLEAR  ;Clear display
    jsr lcd_instruction

    lda #INS_RETURN  ;Return home
    jsr lcd_instruction

    lda #INS_CURSOR  ;Display on, cursor on, blink on
    jsr lcd_instruction

    lda #"a"
    jsr lcd_print

    lda #$00
    sta ACIA_STATUS             ;Soft reset

    lda #$0b				;No parity, no echo, no interrupt
    sta ACIA_COMMAND

    lda #$1f				;1 stop bit, 8 data bits, 19200 baud
    sta ACIA_CONTROL

    ldx #0
send_msg:
    lda message, x
    beq done
    jsr send_char
    inx
    jmp send_msg
done:

wait_rxd_full:	 
    lda ACIA_STATUS
    and #$08
    beq wait_rxd_full
    lda ACIA_DATA
    jsr lcd_print
    jmp wait_rxd_full

message: .asciiz "Hello World"

send_char:
    lda ACIA_DATA
    pha
wait_txd_full:
    lda ACIA_STATUS
    and #$10
    beq wait_txd_full
    jsr tx_wait
    pla
    rts    

tx_wait:
    phx
    ldx #100
tx_wait1:
    dex
    bne tx_wait1
    plx
    rts

lcd_wait:
    pha ;Save our instruction
    lda #%11110000  ;We want to read the lower nibble and make sure the busy flag is not high
    sta DDRB    ;Change directions
lcd_busy:
    lda #RW ;Set the r/w pin
    sta PORTB
    ora #E ;Also then set the enable
    sta PORTB
    lda PORTB ;This has the busy flag

    pha ;This has the higher nibble

    lda #RW ;Set the r/w pin
    sta PORTB
    ora #E ;Also then set the enable
    sta PORTB
    lda PORTB ;This is the lower nibble, we don't actually need this because it has the address counter but is necessary to finish getting all 8 bits
    pla ;Get back the busy flag
    and #%00001000  ;Get just the busy flag

    bne lcd_busy    ;If it is true, go back to the lcd_busy label

    lda #0
    sta PORTB
    lda #PORTB_IO_MASK  ;Sets them back to output
    sta DDRB
    pla ;Get back the initial instruction
    rts
lcd_instruction:
    jsr lcd_wait
    pha ;Save the accumulator to the stack
    lsr ;Shift over 4 bits because the LCD first needs the upper nibble of our instruction
    lsr
    lsr
    lsr
    sta PORTB   ;Send to VIA
    ora #E  ;Set enable pin
    sta PORTB
    eor #E  ;Clear enable
    sta PORTB
    pla ;Get back our initial instruction
    and #%00001111  ;Only care about the lowwer nibble now to send
    sta PORTB   ;Send to VIA
    ora #E  ;Set enable pin
    sta PORTB
    eor #E  ;Clear enable
    sta PORTB
    rts
lcd_init:
  lda #INS_INIT ; Set 4-bit mode
  sta PORTB
  ora #E
  sta PORTB
  and #%00001111
  sta PORTB
  rts
lcd_print:
    jsr lcd_wait
    pha ;Save data
    lsr ;Get high nibble first
    lsr
    lsr
    lsr
    ora #RS ;Set RS
    sta PORTB
    ora #E  ;Set enable
    sta PORTB
    eor #E  ;Clear enable
    sta PORTB
    pla ;Get lower nibble
    and #%00001111  ;Make sure its just the char
    ora #RS
    sta PORTB
    ora #E
    sta PORTB
    eor #E
    sta PORTB
    rts

    .org $fffc
    .word reset   
    .word $0000