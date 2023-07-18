    .org $8000

reset:
    lda #$ff
    sta $FD02

    lda #$50
    sta $7D00
loop:
    ror
    sta $7D00

    jmp loop

    .org $fffc
    .word reset
    .word $0000
