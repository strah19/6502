PORTA = $7D01
PORTB = $7D00

LATCH_REG = $7F10
WRITE_REG = $7F11

; Direction registers
DDRA =  $7D03
DDRB =  $7D02

; Timer registers
T1CL = $7D04
T1CH = $7D05

; Status & Flag registers
ACR = $7D0B
IFR = $7D0D
IER = $7D0E

; VIA #2
PORTA2 = $7E01
DDRA2  =  $7E03

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

ticks = $0000

*=$8000
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
    jsr timer_init

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
    sta LATCH_REG
    lda #6
    sta WRITE_REG

    ; Load frequency for Channel A into its coarse tone register
    lda #A_COURSE_TONE
    sta LATCH_REG
    lda #1
    sta WRITE_REG

    ; Sets the noise and tone controls
    lda #MIXER_CONTROL
    sta LATCH_REG
    lda #%11111110      ; This will make only Channel A active
    sta WRITE_REG

    lda #A_AMP
    sta LATCH_REG
    lda #%00001111      ; This will set channel A to its highest amplitude
    sta WRITE_REG

    lda #"/"
    jsr lcd_print

    lda #%10000000
    sta PORTB

loop:
    jmp loop

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

timer_init:
    lda #0
    sta ticks
    sta ticks + 1
    sta ticks + 2
    sta ticks + 3

    lda #%01000000
    sta ACR
    lda #$3E
    sta T1CL
    lda #$9C
    sta T1CH
    lda #%11000000
    sta IER
    cli
    rts

irq:
    bit T1CL
    inc ticks
    bne irq_exit
    inc ticks + 1
    bne irq_exit
    inc ticks + 2
    bne irq_exit
    inc ticks + 3
irq_exit:
    rti

    .org $fffc
    .word reset
    .word irq

