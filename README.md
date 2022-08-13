# 6502
This 6502 homebrew computer was created to learn about computer architecture, assembly language, and electronics. This repository holds the assembly for the processor, references for developers, schematics, and PCBs for the project. All the chips and components for the main board can all be easily found and bought on websites such as Digikey, Mouser, or Jameco. However, to keep the design in line with the time period, some chips such as the sound and video chip (which will be on different boards) must be found on Ebay or an equivalent as they are no longer manufactured. The main board will have 4 expansion slots which will make it easy to add and modularize the computer.

# Memory Map
| Address       | Devices |
| ------------- | ------- | 
| $0000 - $7EFF | RAM     | 
| $7F00 - $7F01 | VIA 1   | 
| $7F00 - $7F02 | VIA 2   | 
| $7F03 - $7FFF | IO      | 
| $8000 - $FFFF | ROM     | 

# Build
To run vasm, the 6502 assembler, the command is `.\vasm6502_oldstyle.exe -Fbin -dotdir file.s -o objectname`.

# Notes
- If the GAL chip is ever reprogrammed and the ROM, RAM, or VIA's ever get moved, the addresses in the assembly code will have to be edited for that code to work. 
- The RAM is banked. This means that there are 16 possible memory blocks between $0000 and $7EFF. The banks are controlled by the first four bits in the first VIA on port A. If these do not get initialized, they will all be zero and the first bank will be enabled. This system gives nearly 512 MB of RAM.
