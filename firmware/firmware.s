PORTB = $7D00
DDRB  = $7D02

E  = %01000000
RW = %00100000
RS = %00010000

INS_INIT   = %00000010
INS_4BIT   = %00101000
INS_CLEAR  = %00000001
INS_RETURN = %00000010
INS_CURSOR = %00001111

PORTB_IO_MASK = %11111111

PORTA = $7D01
DDRA  = $7D03
CLK   = $10
DATA  = $20

byte           =     $02D0             ; byte send/received
parity         =     $02D1             ; parity holder for rx
special        =     $02d2             ; ctrl, shift, caps and kb LED holder 
lastbyte       =     $02d3             ; last byte received

; kbinput - wait for a key press and return with its assigned ASCII code in A.
; kbget   - wait for a key press and return with its unprocessed scancode in A.
; kbscan  - Scan the keyboard for 105uS, returns 0 in A if no key pressed.
;           Return ambiguous DATA in A if key is pressed.  Use KBINPUT OR KBGET
;           to get the key information.  You can modify the code to automatically 
;           jump to either routine if your application needs it.          
; kbinit  - Initialize the keyboard and associated variables and set the LEDs

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

    jsr kbinit

loop:
    jsr kbinput
    cmp #$1b
    beq esc_pressed
    cmp #$08
    beq backspace_pressed
    cmp #$0d           ; enter - go to second line
    beq enter_pressed
    jsr lcd_print
    jmp loop   

esc_pressed:
    lda #INS_CLEAR
    jsr lcd_instruction
    jmp loop   

backspace_pressed:
    lda #%00010000
    jsr lcd_instruction
    lda #" "
    jsr lcd_print
    lda #%00010000
    jsr lcd_instruction
    jmp loop

enter_pressed:
    lda #%10101000 ; put cursor at position 40
    jsr lcd_instruction
    jmp loop

kbreinit:       
    jsr   kbinit 
kbinput: 
    jsr   kbtscrl           ; turn off scroll lock (ready to input)  
    bne   kbinput           ; ensure its off 
kbinput1:
    jsr   kbget             ; get a code (wait for a key to be pressed)
    jsr   kbcsrch           ; scan for 14 special case codes
kbcnvt:
    beq   kbinput1          ; 0=complete, get next scancode
    tax                     ; set up scancode as table pointer
    cmp   #$78              ; see if its the F11
    beq   kbcnvt1           ; it is, skip keypad test
    cmp   #$69              ; test for keypad codes 69
    bmi   kbcnvt1           ; thru
    cmp   #$7E              ; 7D (except 78 tested above)
    bpl   kbcnvt1           ; skip if not a keypad code
    lda   special           ; test numlock
    bit   #$02              ; numlock on?
    beq   kbcnvt2           ; no, set shifted table for special keys
    txa                     ; yes, set unshifted table for number keys
    and   #$7F              ; 
    tax                     ; 
    bra   kbcnvt3           ; skip shift test
kbcnvt1:
    lda   special           ; 
    bit   #$10              ; shift enabled?
    beq   kbcnvt3           ; no
kbcnvt2:
    txa                     ; yes
    ora   #$80              ; set shifted table
    tax                     ; 
kbcnvt3:
    lda   special           ;
    bit   #$08              ; control?
    beq   kbcnvt4           ; no
    lda   asciitbl,x        ; get ascii code
    cmp   #$8F              ; {ctrl-Printscrn - do re-init or user can remove this code }
    beq   kbreinit          ; {do kb reinit                                             }
    and   #$1F              ; mask control code (assumes A-Z is pressed)
    beq   kbinput1          ; ensure mask didn't leave 0
    tax                     ; 
    bra   kbdone            ; 
kbcnvt4:
    lda   asciitbl,x        ; get ascii code
    beq   kbinput1          ; if ascii code is 0, invalid scancode, get another
    tax                     ; save ascii code in x reg
    lda   special           ; 
    bit   #$04              ; test caps lock
    beq   kbdone            ; caps lock off
    txa                     ; caps lock on - get ascii code
    cmp   #$61              ; test for lower case a
    bcc   kbdone            ; if less than, skip down
    cmp   #$7B              ; test for lower case z
    bcs   kbdone            ; if greater than, skip down
    sec                     ; alpha chr found, make it uppercase
    sbc   #$20              ; if caps on and lowercase, change to upper
    tax                     ; put new ascii to x reg
kbdone:
    phx                     ; save ascii to stack
kbdone1:
    jsr   kbtscrl           ; turn on scroll lock (not ready to receive)
    beq   kbdone1           ; ensure scroll lock is on
    pla                     ; get ASCII code
    rts                     ; return to calling program
;
;******************************************************************************
;
; scan code processing routines
;
;
kbtrap83:
    lda   #$02              ; traps the F7 code of $83 and chang
    rts                     ; 
;
kbsshift:
    lda   #$10              ; *** neat trick to tuck code inside harmless cmd
    .byte $2c               ; *** use BIT Absolute to skip lda #$02 below
kbsctrl:
    lda   #$08              ; *** disassembles as  LDA #$01
    ora   special           ;                      BIT $A902
    sta   special           ;                      ORA $02D3
    bra   kbnull            ; return with 0 in A
;
kbtnum:
    lda   special           ; toggle numlock bit in special
    eor   #$02              ; 
    sta   special           ; 
    jsr   kbsled            ; update keyboard leds
    bra   kbnull            ; return with 0 in A
;
kbresend:
    lda   lastbyte          ; 
    jsr   kbsend            ; 
    bra   kbnull            ; return with 0 in A
;
kbtcaps:
    lda   special           ; toggle caps bit in special
    eor   #$04              ; 
    sta   special           ; 
    jsr   kbsled            ; set new status leds
kbnull:
    lda   #$00              ; set caps, get next code
    rts                     ; 
;
kbExt:
    jsr   kbget             ; get next code
    cmp   #$F0              ; is it an extended key release?
    beq   kbexrls           ; test for shift, ctrl, caps
    cmp   #$14              ; right control?
    beq   kbsctrl           ; set control and get next scancode
    ldx   #$03              ; test for 4 scancode to be relocated
kbext1:
    cmp   kbextlst,x        ; scan list
    beq   kbext3            ; get DATA if match found
    dex                     ; get next item
    bpl   kbext1            ; 
    cmp   #$3F              ; not in list, test range 00-3f or 40-7f
    bmi   kbExt2            ; its a windows/alt key, just return unshifted
    ora   #$80              ; return scancode and point to shifted table
kbExt2:
    rts                     ; 
kbext3:
    lda   kbextdat,x        ; get new scancode
    rts                     ; 
;
kbextlst:
    .byte $7E               ; E07E ctrl-break scancode
    .byte $4A               ; E04A kp/
    .byte $12               ; E012 scancode
    .byte $7C               ; E07C prt scrn 
;
kbextdat:
    .byte $20               ; new ctrl-brk scancode   
    .byte $6A               ; new kp/ scancode     
    .byte $00               ; do nothing (return and get next scancode)
    .byte $0F               ; new prt scrn scancode
;
kbexrls:
    jsr   kbget             ; 
    cmp   #$12              ; is it a release of the E012 code?
    bne   kbrlse1           ; no - process normal release
    bra   kbnull            ; return with 0 in A
;
kbrlse:
    jsr   kbget             ; test for shift & ctrl
    cmp   #$12              ; 
    beq   kbrshift          ; reset shift bit 
    cmp   #$59              ; 
    beq   kbrshift          ; 
kbrlse1:
    cmp   #$14              ; 
    beq   kbrctrl           ; 
    cmp   #$11              ; alt key release
    bne   kbnull            ; return with 0 in A
kbralt:
    lda   #$13              ; new alt release scancode
    rts                     ; 
kbrctrl:
    lda   #$F7              ; reset ctrl bit in special
    .byte $2c               ; use (BIT Absolute) to skip lda #$EF if passing down
kbrshift:
    lda   #$EF              ; reset shift bit in special
    and   special           ; 
    sta   special           ; 
    bra   kbnull            ; return with 0 in A
;
kbtscrl:
    lda   special           ; toggle scroll lock bit in special
    eor   #$01              ; 
    sta   special           ; 
    jsr   kbsled            ; update keyboard leds
    lda   special           ; 
    bit   #$01              ; check scroll lock status bit
    rts                     ; return
;
kbBrk:
    ldx   #$07              ; ignore next 7 scancodes then
kbBrk1:
    jsr   kbget             ; get scancode
    dex                     ; 
    bne   kbBrk1            ; 
    lda   #$10              ; new scan code
    rts                     ; 
;
kbcsrch:
    ldx   #$0E              ; 14 codes to check
kbcsrch1:
    cmp   kbclst,x          ; search scancode table for special processing
    beq   kbcsrch2          ; if found run the routine
    dex                     ; 
    bpl   kbcsrch1          ; 
    rts                     ; no match, return from here for further processing
kbcsrch2:
    txa                     ; code found - get index
    asl                     ; mult by two
    tax                     ; save back to x
    lda   byte              ; load scancode back into A 
    jmp   (kbccmd,x)        ; execute scancode routine, return 0 if done
                                       ; nonzero scancode if ready for ascii conversion
;
;keyboard command/scancode test list
; db=define byte, stores one byte of DATA
;
kbclst:        .byte $83               ; F7 - move to scancode 02
               .byte $58               ; caps
               .byte $12               ; Lshift
               .byte $59               ; Rshift
               .byte $14               ; ctrl
               .byte $77               ; num lock
               .byte $E1               ; Extended pause break 
               .byte $E0               ; Extended key handler
               .byte $F0               ; Release 1 byte key code
               .byte $FA               ; Ack 
               .byte $AA               ; POST passed
               .byte $EE               ; Echo
               .byte $FE               ; resend
               .byte $FF               ; overflow/error
               .byte $00               ; underflow/error
;
; command/scancode jump table
; 
kbccmd:        .word kbtrap83          ; 
               .word kbtcaps           ; 
               .word kbsshift          ; 
               .word kbsshift          ; 
               .word kbsctrl           ; 
               .word kbtnum            ; 
               .word kbBrk             ; 
               .word kbExt             ; 
               .word kbrlse            ; 
               .word kbnull            ; 
               .word kbnull            ; 
               .word kbnull            ; 
               .word kbresend          ; 
               .word kbflush           ; 
               .word kbflush           ; 

kbscan:
    ldx   #$05              ; timer: x = (cycles - 40)/13   (105-40)/13=5
    lda   DDRA         ; 
    and   #$CF              ; set CLK to input (change if port bits change)
    sta   DDRA         ; 
kbscan1:
    lda   #CLK              ; 
    bit   PORTA         ; 
    beq   kbscan2           ; if CLK goes low, DATA ready
    dex                     ; reduce timer
    bne   kbscan1           ; wait while CLK is high
    jsr   kbdis             ; timed out, no DATA, disable receiver
    lda   #$00              ; set DATA not ready flag
    rts                     ; return 
kbscan2:
    jsr   kbdis             ; disable the receiver so other routines get it
; Three alternative exits if DATA is ready to be received: Either return or jmp to handler
    rts                     ; return (A<>0, A=CLK bit mask value from kbdis)
;               jmp   KBINPUT           ; if key pressed, decode it with KBINPUT
;               jmp   KBGET             ; if key pressed, decode it with KBGET
;
;
kbflush: 
    lda   #$f4              ; flush buffer
;
; send a byte to the keyboard
;
kbsend:
    sta   byte              ; save byte to send
    phx                     ; save registers
    phy                     ; 
    sta   lastbyte          ; keep just in case the send fails
    lda   PORTA         ; 
    and   #$EF              ; CLK low, DATA high (change if port bits change)
    ora   #DATA             ; 
    sta   PORTA         ; 
    lda   DDRA         ; 
    ora   #$30              ;  bit bits high (change if port bits change)
    sta   DDRA         ; set outputs, CLK=0, DATA=1
    lda   #$10              ; 1Mhz cpu clock delay (delay = cpuCLK/62500)
kbsendw:
    dec                     ; 
    bne   kbsendw           ; 64uS delay
    ldy   #$00              ; parity counter
    ldx   #$08              ; bit counter 
    lda   PORTA         ; 
    and   #$CF              ; CLK low, DATA low (change if port bits change)
    sta   PORTA         ; 
    lda   DDRA         ; 
    and   #$EF              ; set CLK as input (change if port bits change)
    sta   DDRA         ; set outputs
    jsr   kbhighlow         ; 
kbsend1:
    ror   byte              ; get lsb first
    bcs   kbmark            ; 
    lda   PORTA         ; 
    and   #$DF              ; turn off DATA bit (change if port bits change)
    sta   PORTA         ; 
    bra   kbnext            ; 
kbmark:
    lda   PORTA         ; 
    ora   #DATA             ; 
    sta   PORTA         ; 
    iny                     ; inc parity counter
kbnext:
    jsr   kbhighlow         ; 
    dex                     ; 
    bne   kbsend1           ; send 8 DATA bits
    tya                     ; get parity count
    and   #$01              ; get odd or even
    bne   kbpclr            ; if odd, send 0
    lda   PORTA         ; 
    ora   #DATA             ; if even, send 1
    sta   PORTA         ; 
    bra   kback             ; 
kbpclr:
    lda   PORTA         ; 
    and   #$DF              ; send DATA=0 (change if port bits change)
    sta   PORTA         ; 
kback:
    jsr   kbhighlow         ; 
    lda   DDRA         ; 
    and   #$CF              ; set CLK & DATA to input (change if port bits change)
    sta   DDRA         ; 
    ply                     ; restore saved registers
    plx                     ; 
    jsr   kbhighlow         ; wait for ack from keyboard
    bne   kbinit            ; VERY RUDE error handler - re-init the keyboard
kbsend2:
    lda   PORTA         ; 
    and   #CLK              ; 
    beq   kbsend2           ; wait while CLK low
    bra   kbdis             ; diable kb sending

kberror:
    lda   #$FE              ; resend cmd
    jsr   kbsend 
kbget:         
    phx                     ; 
    phy                     ; 
    lda   #$00              ; 
    sta   byte              ; clear scankey holder
    sta   parity            ; clear parity holder
    ldy   #$00              ; clear parity counter
    ldx   #$08              ; bit counter 
    lda   DDRA         ; 
    and   #$CF              ; set CLK to input (change if port bits change)
    sta   DDRA         ; 
kbget1:
    lda   #CLK              ; 
    bit   PORTA         ; 
    bne   kbget1            ; wait while CLK is high
    lda   PORTA         ; 
    and   #DATA             ; get start bit 
    bne   kbget1            ; if 1, false start bit, do again 
kbget2:
    jsr   kbhighlow         ; wait for CLK to return high then go low again
    cmp   #$01              ; set c if DATA bit=1, clr if DATA bit=0
                                       ; (change if port bits change) ok unless DATA=01 or 80
                                       ; in that case, use ASL or LSR to set carry bit
    ror   byte              ; save bit to byte holder
    bpl   kbget3            ; 
    iny                     ; add 1 to parity counter
kbget3:
    dex                     ; dec bit counter
    bne   kbget2            ; get next bit if bit count > 0 
    jsr   kbhighlow         ; wait for parity bit
    beq   kbget4            ; if parity bit 0 do nothing
    inc   parity            ; if 1, set parity to 1        
kbget4:
    tya                     ; get parity count
    ply                     ; 
    plx                     ; 
    eor   parity            ; compare with parity bit
    and   #$01              ; mask bit 1 only
    beq   kberror           ; bad parity
    jsr   kbhighlow         ; wait for stop bit
    beq   kberror           ; 0=bad stop bit 
    lda   byte              ; if byte & parity 0,  
    beq   kbget             ; no DATA, do again
    jsr   kbdis             ; 
    lda   byte              ; 
    rts                     ; 
;
kbdis:
    lda   PORTA         ; disable kb from sending more DATA
    and   #$EF              ; CLK = 0 (change if port bits change)
    sta   PORTA         ; 
    lda   DDRA         ; set CLK to ouput low
    and   #$CF              ; (stop more DATA until ready) (change if port bits change)
    ora   #CLK              ; 
    sta   DDRA         ; 
    rts 

kbinit:
    lda   #$02              ; init - num lock on, all other off
    sta   special           ; 
kbinit1:
    lda   #$ff              ; keybrd reset
    jsr   kbsend            ; reset keyboard
    jsr   kbget             ; 
    cmp   #$FA              ; ack?
    bne   kbinit1           ; resend reset cmd
    jsr   kbget             ; 
    cmp   #$AA              ; reset ok
    bne   kbinit1           ; resend reset cmd        
                            ; fall into to set the leds
kbsled:
    lda   #$ED              ; Set the keybrd LED's from kbleds variable
    jsr   kbsend            ; 
    jsr   kbget             ; 
    cmp   #$FA              ; ack?
    bne   kbsled            ; resend led cmd        
    lda   special           ; 
    and   #$07              ; ensure bits 3-7 are 0
    jsr   kbsend            ; 
    rts                     ; 
                                       ;
kbhighlow:
    lda   #CLK              ; wait for a low to high to low transition
    bit   PORTA         ; 
    beq   kbhighlow         ; wait while CLK low
kbhl1:
    bit   PORTA         ; 
    bne   kbhl1             ; wait while CLK is high
    lda   PORTA         ; 
    and   #DATA             ; get DATA line state
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
    pha ;Save DATA
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

keyboard_interrupt:
    rti
nmi:
    rti

asciitbl:      .byte $00               ; 00 no key pressed
               .byte $89               ; 01 F9
               .byte $87               ; 02 relocated F7
               .byte $85               ; 03 F5
               .byte $83               ; 04 F3
               .byte $81               ; 05 F1
               .byte $82               ; 06 F2
               .byte $8C               ; 07 F12
               .byte $00               ; 08 
               .byte $8A               ; 09 F10
               .byte $88               ; 0A F8
               .byte $86               ; 0B F6
               .byte $84               ; 0C F4
               .byte $09               ; 0D tab
               .byte $60               ; 0E `~
               .byte $8F               ; 0F relocated Print Screen key
               .byte $03               ; 10 relocated Pause/Break key
               .byte $A0               ; 11 left alt (right alt too)
               .byte $00               ; 12 left shift
               .byte $E0               ; 13 relocated Alt release code
               .byte $00               ; 14 left ctrl (right ctrl too)
               .byte $71               ; 15 qQ
               .byte $31               ; 16 1!
               .byte $00               ; 17 
               .byte $00               ; 18 
               .byte $00               ; 19 
               .byte $7A               ; 1A zZ
               .byte $73               ; 1B sS
               .byte $61               ; 1C aA
               .byte $77               ; 1D wW
               .byte $32               ; 1E 2@
               .byte $A1               ; 1F Windows 98 menu key (left side)
               .byte $02               ; 20 relocated ctrl-break key
               .byte $63               ; 21 cC
               .byte $78               ; 22 xX
               .byte $64               ; 23 dD
               .byte $65               ; 24 eE
               .byte $34               ; 25 4$
               .byte $33               ; 26 3#
               .byte $A2               ; 27 Windows 98 menu key (right side)
               .byte $00               ; 28
               .byte $20               ; 29 space
               .byte $76               ; 2A vV
               .byte $66               ; 2B fF
               .byte $74               ; 2C tT
               .byte $72               ; 2D rR
               .byte $35               ; 2E 5%
               .byte $A3               ; 2F Windows 98 option key (right click, right side)
               .byte $00               ; 30
               .byte $6E               ; 31 nN
               .byte $62               ; 32 bB
               .byte $68               ; 33 hH
               .byte $67               ; 34 gG
               .byte $79               ; 35 yY
               .byte $36               ; 36 6^
               .byte $00               ; 37
               .byte $00               ; 38
               .byte $00               ; 39
               .byte $6D               ; 3A mM
               .byte $6A               ; 3B jJ
               .byte $75               ; 3C uU
               .byte $37               ; 3D 7&
               .byte $38               ; 3E 8*
               .byte $00               ; 3F
               .byte $00               ; 40
               .byte $2C               ; 41 ,<
               .byte $6B               ; 42 kK
               .byte $69               ; 43 iI
               .byte $6F               ; 44 oO
               .byte $30               ; 45 0)
               .byte $39               ; 46 9(
               .byte $00               ; 47
               .byte $00               ; 48
               .byte $2E               ; 49 .>
               .byte $2F               ; 4A /?
               .byte $6C               ; 4B lL
               .byte $3B               ; 4C ;:
               .byte $70               ; 4D pP
               .byte $2D               ; 4E -_
               .byte $00               ; 4F
               .byte $00               ; 50
               .byte $00               ; 51
               .byte $27               ; 52 '"
               .byte $00               ; 53
               .byte $5B               ; 54 [{
               .byte $3D               ; 55 =+
               .byte $00               ; 56
               .byte $00               ; 57
               .byte $00               ; 58 caps
               .byte $00               ; 59 r shift
               .byte $0D               ; 5A <Enter>
               .byte $5D               ; 5B ]}
               .byte $00               ; 5C
               .byte $5C               ; 5D \|
               .byte $00               ; 5E
               .byte $00               ; 5F
               .byte $00               ; 60
               .byte $00               ; 61
               .byte $00               ; 62
               .byte $00               ; 63
               .byte $00               ; 64
               .byte $00               ; 65
               .byte $08               ; 66 bkspace
               .byte $00               ; 67
               .byte $00               ; 68
               .byte $31               ; 69 kp 1
               .byte $2f               ; 6A kp / converted from E04A in code
               .byte $34               ; 6B kp 4
               .byte $37               ; 6C kp 7
               .byte $00               ; 6D
               .byte $00               ; 6E
               .byte $00               ; 6F
               .byte $30               ; 70 kp 0
               .byte $2E               ; 71 kp .
               .byte $32               ; 72 kp 2
               .byte $35               ; 73 kp 5
               .byte $36               ; 74 kp 6
               .byte $38               ; 75 kp 8
               .byte $1B               ; 76 esc
               .byte $00               ; 77 num lock
               .byte $8B               ; 78 F11
               .byte $2B               ; 79 kp +
               .byte $33               ; 7A kp 3
               .byte $2D               ; 7B kp -
               .byte $2A               ; 7C kp *
               .byte $39               ; 7D kp 9
               .byte $8D               ; 7E scroll lock
               .byte $00               ; 7F 
;
; Table for shifted scancodes 
;        
               .byte $00               ; 80 
               .byte $C9               ; 81 F9
               .byte $C7               ; 82 relocated F7 
               .byte $C5               ; 83 F5 (F7 actual scancode=83)
               .byte $C3               ; 84 F3
               .byte $C1               ; 85 F1
               .byte $C2               ; 86 F2
               .byte $CC               ; 87 F12
               .byte $00               ; 88 
               .byte $CA               ; 89 F10
               .byte $C8               ; 8A F8
               .byte $C6               ; 8B F6
               .byte $C4               ; 8C F4
               .byte $09               ; 8D tab
               .byte $7E               ; 8E `~
               .byte $CF               ; 8F relocated Print Screen key
               .byte $03               ; 90 relocated Pause/Break key
               .byte $A0               ; 91 left alt (right alt)
               .byte $00               ; 92 left shift
               .byte $E0               ; 93 relocated Alt release code
               .byte $00               ; 94 left ctrl (and right ctrl)
               .byte $51               ; 95 qQ
               .byte $21               ; 96 1!
               .byte $00               ; 97 
               .byte $00               ; 98 
               .byte $00               ; 99 
               .byte $5A               ; 9A zZ
               .byte $53               ; 9B sS
               .byte $41               ; 9C aA
               .byte $57               ; 9D wW
               .byte $40               ; 9E 2@
               .byte $E1               ; 9F Windows 98 menu key (left side)
               .byte $02               ; A0 relocated ctrl-break key
               .byte $43               ; A1 cC
               .byte $58               ; A2 xX
               .byte $44               ; A3 dD
               .byte $45               ; A4 eE
               .byte $24               ; A5 4$
               .byte $23               ; A6 3#
               .byte $E2               ; A7 Windows 98 menu key (right side)
               .byte $00               ; A8
               .byte $20               ; A9 space
               .byte $56               ; AA vV
               .byte $46               ; AB fF
               .byte $54               ; AC tT
               .byte $52               ; AD rR
               .byte $25               ; AE 5%
               .byte $E3               ; AF Windows 98 option key (right click, right side)
               .byte $00               ; B0
               .byte $4E               ; B1 nN
               .byte $42               ; B2 bB
               .byte $48               ; B3 hH
               .byte $47               ; B4 gG
               .byte $59               ; B5 yY
               .byte $5E               ; B6 6^
               .byte $00               ; B7
               .byte $00               ; B8
               .byte $00               ; B9
               .byte $4D               ; BA mM
               .byte $4A               ; BB jJ
               .byte $55               ; BC uU
               .byte $26               ; BD 7&
               .byte $2A               ; BE 8*
               .byte $00               ; BF
               .byte $00               ; C0
               .byte $3C               ; C1 ,<
               .byte $4B               ; C2 kK
               .byte $49               ; C3 iI
               .byte $4F               ; C4 oO
               .byte $29               ; C5 0)
               .byte $28               ; C6 9(
               .byte $00               ; C7
               .byte $00               ; C8
               .byte $3E               ; C9 .>
               .byte $3F               ; CA /?
               .byte $4C               ; CB lL
               .byte $3A               ; CC ;:
               .byte $50               ; CD pP
               .byte $5F               ; CE -_
               .byte $00               ; CF
               .byte $00               ; D0
               .byte $00               ; D1
               .byte $22               ; D2 '"
               .byte $00               ; D3
               .byte $7B               ; D4 [{
               .byte $2B               ; D5 =+
               .byte $00               ; D6
               .byte $00               ; D7
               .byte $00               ; D8 caps
               .byte $00               ; D9 r shift
               .byte $0D               ; DA <Enter>
               .byte $7D               ; DB ]}
               .byte $00               ; DC
               .byte $7C               ; DD \|
               .byte $00               ; DE
               .byte $00               ; DF
               .byte $00               ; E0
               .byte $00               ; E1
               .byte $00               ; E2
               .byte $00               ; E3
               .byte $00               ; E4
               .byte $00               ; E5
               .byte $08               ; E6 bkspace
               .byte $00               ; E7
               .byte $00               ; E8
               .byte $91               ; E9 kp 1
               .byte $2f               ; EA kp / converted from E04A in code
               .byte $94               ; EB kp 4
               .byte $97               ; EC kp 7
               .byte $00               ; ED
               .byte $00               ; EE
               .byte $00               ; EF
               .byte $90               ; F0 kp 0
               .byte $7F               ; F1 kp .
               .byte $92               ; F2 kp 2
               .byte $95               ; F3 kp 5
               .byte $96               ; F4 kp 6
               .byte $98               ; F5 kp 8
               .byte $1B               ; F6 esc
               .byte $00               ; F7 num lock
               .byte $CB               ; F8 F11
               .byte $2B               ; F9 kp +
               .byte $93               ; FA kp 3
               .byte $2D               ; FB kp -
               .byte $2A               ; FC kp *
               .byte $99               ; FD kp 9
               .byte $CD               ; FE scroll lock

    .org $fffc
    .word reset   
    .word $0000