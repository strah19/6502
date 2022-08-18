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

# PCB
The main PCB motherboard has a number of interfaces to make it easy to expand the computer. Firstly, the board has 4 expansion ports with a pinout as follows: <br/> <br/>
![Expansion Slot](https://github.com/strah19/6502/blob/master/docs/expansion.png?raw=true)
<br/> <br/>
Power input is 12V. There is also
a Mini Din-6 for a PS2 keyboard. However, if the correct assembly code is used, a mouse could replace this or a mouse can be added through an expansion port if desired. There are also headers for access to the IO active address lines and extra bits from the VIA's which can be used. 

# Notes
- If the GAL chip is ever reprogrammed and the ROM, RAM, or VIA's ever get moved, the addresses in the assembly code will have to be edited for that code to work. 
- The RAM is banked. This means that there are 16 possible memory blocks between $0000 and $7EFF. The banks are controlled by the first four bits in the first VIA on port A. If these do not get initialized, they will all be zero and the first bank will be enabled. This system gives nearly 512 KB of RAM.

# Datasheets
- <a href = "https://www.mouser.com/datasheet/2/436/w65c02s-2572.pdf"> W65C02 (MPU) </a>
- <a href = "https://www.mouser.com/datasheet/2/436/w65c22-1197.pdf"> W65C22 (VIA) </a> 
- <a href = "https://www.mouser.com/datasheet/2/268/doc0006-1108095.pdf"> AT28C256 (ROM) </a>
- <a href = "https://www.mouser.com/datasheet/2/12/AS6C4008-1265427.pdf"> AS6C4008 (RAM) </a>
- <a href = "https://www.mouser.com/datasheet/2/256/DS1501-DS1511-465962.pdf"> DS1511 (RTC) </a>
- <a href = "https://www.westerndesigncenter.com/wdc/documentation/w65c51n.pdf"> W65C11 (ACIA) </a>
- <a href = "https://www.sparkfun.com/datasheets/LCD/HD44780.pdf"> HD44780 (20x4 LCD) </a>
- <a href = "https://www.jameco.com/Jameco/Products/ProdDS/670442-DS01.pdf"> IRF4905 (MOSFET) </a>
- <a href = "https://www.jameco.com/Jameco/Products/ProdDS/51262.pdf"> LM780 (5V Voltage Regulator) </a>
- <a href = "https://www.jameco.com/Jameco/Products/ProdDS/46375.pdf"> 74LS08 (AND Gates) </a>
- <a href = "http://map.grauw.nl/resources/sound/texas_instruments_sn76489an.pdf"> SN76489AN (Sound Chip) </a>
- <a href = "https://www.seattleu.edu/media/college-of-science-and-engineering/files/departments/electricalandcomputerengineering/74ls1545606.pdf"> 74LS154 (4 to 16 line decoder) </a>
- <a href = "https://www.mouser.com/datasheet/2/268/doc0735-1369018.pdf"> Atmel ATF22V10C (Memory Mapper) </a>
