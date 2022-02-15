code = bytearray([
  0xa9, 0xff,         # lda #$ff
  0x8d, 0x02, 0x60,   # sta $6002

  0xa9, 0x55,         # lda #$55
  0x8d, 0x00, 0x60,   # sta $6000

  0xa9, 0xaa,         # lda #$aa
  0x8d, 0x00, 0x60,   # sta $6000

  0x4c, 0x06, 0x80,   # jmp $8005
  ])


with open("rom.bin", "wb") as binary:
  binary.write(code)