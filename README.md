# 6502
This 6502 homebrew computer was created to learn about computer architecture, assembly language, and electronics. This repository holds the assembly for the processor, references for developers, schematics, and PCBs for the project. All the chips and components for the main board can all be easily found and bought on websites such as Digikey, Mouser, or Jameco. However, to keep the design in line with the time period, some chips such as the sound and video chip (which will be on different boards) must be found on Ebay or an equivalent as they are no longer manufactured. The main board will have 4 expansion slots which will make it easy to add and modularize the computer. 

# Memory Map
| Address       | Devices |
| ------------- | ------- | 
| $0000 - $7EFF | RAM     | 
| $7D00 - $7D0F | VIA 1   | 
| $7E00 - $7E0F | VIA 2   | 
| $7F00 - $7FFF | IO      | 
| $8000 - $FFFF | ROM     | 

# Build
To run vasm, the 6502 assembler, the command is `.\vasm6502_oldstyle.exe -Fbin -dotdir -wdc02 file.s -o objectname`.

To update the memory mapper, WinCUPL is needed for the PLD. The software is very easy to use. The current running memory mapper can be found in memory_mapper folder. Then, using a universal programmer, the code can be uploaded to the chip just like how it is done for the ROM. When editing the layout, the pin assignment cannot be changed (ex. pin 21 goes to devices no matter what) but what can be changed is what part of memory each device connected to the bus uses. Also, there are three extra output pins that can be programmed in for extra devices.

# PCB
The main PCB motherboard has a number of interfaces to make it easy to expand the computer. Firstly, the board has 4 expansion ports with a pinout as follows: <br/> <br/>
![Expansion Slot](https://github.com/strah19/6502/blob/master/docs/expansion.png?raw=true)
<br/> <br/>
Power input is 5V. There is also
a Mini Din-6 for a PS2 keyboard. However, if the correct assembly code is used, a mouse could replace this or a mouse can be added through an expansion port if desired. There are also headers for access to the IO active address lines and extra bits from the VIA's which can be used. 
<br/><br/>
![PCB](https://github.com/strah19/6502/blob/master/docs/3dpcb.png?raw=true)

# Notes
- If the GAL chip is ever reprogrammed and the ROM, RAM, or VIA's ever get moved, the addresses in the assembly code will have to be edited for that code to work. 
- The RAM is banked. This means that there are 16 possible memory blocks between $0000 and $7EFF. The banks are controlled by the first four bits in the first VIA on port A. If these do not get initialized, they will all be zero and the first bank will be enabled. This system gives nearly 512 KB of RAM.
- <b/>The PCB Silkscreen that shows the labeling of the IO devices is incorrect. Here is a table of the translation: <b/>

| Label IO       | Real IO | 
| -------------- | ------- |
|       IO0      |   IO12  | 
|       IO1      |   IO13  | 
|       IO2      |   IO14  | 
|       IO3      |   IO15  | 
|       IO4      |   IO0   | 
|       IO5      |   IO1   | 
|       IO6      |   IO2   | 
|       IO7      |   IO3   | 
|       IO8      |   IO4   | 
|       IO9      |   IO5   | 
|      IO10      |   IO6   | 
|      IO11      |   IO7   | 
|      IO12      |   IO8   | 
|      IO13      |   IO9   | 
|      IO14      |   IO10  | 
|      IO15      |   IO11  |
- Never assume that the assembly has been compiled even if there is output file. 

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
