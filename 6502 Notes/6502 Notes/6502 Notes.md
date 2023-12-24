11/12/2023
- The current v2 system is useable but a v3 is required. There are spacing issues with the I/O parts and the headers have connection issues with the I/O at needs to be fixed. Also, a RTC should be added plus a Power manager for possibly supporting using an ATX power supply.
- For VASM: ..\\..\\vasm6502_oldstyle.exe -Fbin -dotdir -wdc02 sound.s -o sound
- For AX: ..\\ax basic_mon.s -o basic_mon
- I need to write a driver for the sound hardware.
- I also need to add to the main firmware code the ability to send an assembly file to the computer and get it to run (use a different RAM bank).
- This is code to get the Green LED to light up:
- ```
```
	lda $7F00
	ora #$80
	sta $7F00 
	lda $7F02
	ora #$80
	sta $7F02
```
- I need to write some code for SPI as well...for now I'll have to use Bit Banging.