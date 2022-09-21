   .org $8000
reset:
    ldx #$ff    
    txs

loop:
    nop
    jmp loop

    .org $fffc
    .word reset   
    .word $0000