import serial

com = input("enter port (COM1, COM2, COM3, etc.) of the 6502:  ")

ser = serial.Serial(port=com, baudrate=19200, timeout=.1)  # open serial port
print(ser.name)         # check which port was really used

ser.close()    