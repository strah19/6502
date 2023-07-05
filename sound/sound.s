; The AY-3-8910 uses a little different type of architecture. This chip takes no space up in memory, in the traditional sense.
; Instead, it uses control signals, BDIR and BC1, to tell the chip if it is inactive, reading, writing, or latching an address.
; Then, it turns it bus "on" when the correct control signals have been set. The PSG_ADDRESS_CNTRL address is only there to make
; sure that the data on the bus is not going into other places like RAM or other IO and is not interruptting anything else.

PORTA = $7D01
DDRA =  $7D03

PORTB = $7D00
DDRB =  $7D02

PORTA2 = $7E01
DDRA2  =  $7E03

T1CL = $7D04
T1CH = $7D05
ACR = $7D0B
IFR = $7D0E

E  = %01000000
RW = %00100000
RS = %00010000

INS_INIT = %00000010
INS_4BIT = %00101000
INS_CLEAR = %00000001
INS_RETURN = %00000010
INS_CURSOR = %00001111

A_FINE_TONE = %0000
A_COURSE_TONE = %0001
MIXER_CONTROL = %111
A_AMP = %1000
B_AMP = %1001
C_AMP = %1010

BDIR = %01000000
BC1 =  %10000000

PORTA_IO_MASK = %11111111
PORTB_IO_MASK = %11111111
PORTA2_IO_MASK = %11111111

    .org $8000
reset:
    ldx #$ff
    txs

    lda #PORTA_IO_MASK
    sta DDRA

    lda #PORTB_IO_MASK
    sta DDRB

    lda #PORTA2_IO_MASK
    sta DDRA2

    ; Timer initialization
    lda #0
    sta ACR

    jsr lcd_init
    lda #INS_4BIT ;4-bit mode, 5x8 font, 2 line
    jsr lcd_instruction

    lda #INS_CLEAR  ;Clear display
    jsr lcd_instruction

    lda #INS_RETURN  ;Return home
    jsr lcd_instruction

    lda #INS_CURSOR  ;Display on, cursor on, blink on
    jsr lcd_instruction

    ; Load frequency for Channel A into its fine tone register
    lda #A_FINE_TONE
    jsr latch_address
    lda #6
    jsr write

    ; Load frequency for Channel A into its coarse tone register
    lda #A_COURSE_TONE
    jsr latch_address
    lda #1
    jsr write

    ; Sets the noise and tone controls
    lda #MIXER_CONTROL
    jsr latch_address
    lda #%11111110      ; This will make only Channel A active
    jsr write 

    lda #A_AMP
    jsr latch_address
    lda #%00001111      ; This will set channel A to its highest amplitude
    jsr write

    lda #"/"
    jsr lcd_print

    lda #%10000000
    sta PORTB

loop:
    jmp loop

latch_address:
    pha     ; Store A on stack

    lda #%00000000      
    sta PORTA       ; Before a latch, we will make sure set the function to inactive

    lda #%11000000      ; This will set BDIR & BC1 to high which is the control for latching
    sta PORTA

    pla     ; Get the address from A
    sta PORTA2     ; The address does not really matter, we just need to load the address onto the bus and make sure A9B is active (which occures at this address)

    ; Need to set function to inactive again
    lda #0      
    sta PORTA       ; Before a latch, we will make sure set the function to inactive

    rts     ; Return

write:
    pha

    lda #0      
    sta PORTA       ; Before a latch, we will make sure set the function to inactive

    lda #%01000000  ;This will set the BDIR & BC1 correctly for writing to PSG
    sta PORTA

    pla     ; Get the data from A
    sta PORTA2   ; Again, address does not matter but we are using this control address so we aren't writing data to random places

    ; Need to set function to inactive again
    lda #0      
    sta PORTA       ; Before a latch, we will make sure set the function to inactive    

    rts     ; Return

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

delay:
    ; Loading $9C40 will cause a 10 ms timer delay with a 4 Mhz clock
    lda #$40
    sta T1CL
    lda #$9C
    sta T1CH
delay_loop:
    bit IFR
    bvc delay_loop
    lda T1CL
    rts

    .org $fffc
    .word reset
    .word $0000

