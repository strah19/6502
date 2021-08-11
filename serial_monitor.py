# Copyright 2021 by strah19.
# All rights reserved.
# This file is part of the EEPROM Programmer project that can be found on Github.
# It sets up a serial communication with the Arduino and then sends or recieves data
# with the Arduino to either load a binary into the EEPROM or read data from the EEPROM.

import serial
import time

com = input("enter port (COM1, COM2, COM3, etc.) of the arduino:  ")

arduino = serial.Serial(port=com, baudrate=9600, timeout=.1)
print("connected!")

def serial_read():
  data = arduino.read()
  return data

while True:
  #cmd = input("enter binary file: ")
  #with open(cmd, "rb") as binary:
   # rom_data = bytearray(binary.read())
    #arduino.write(rom_data)

    #for writing a specific address
    data1 = int(input("enter data for 0x7ffc: "))
    data2 = int(input("enter data for 0x7ffd: "))

    pair = bytearray()
    pair.append(data1)
    pair.append(data2)

    arduino.write(pair)
