import serial

ser = serial.Serial('COM2',19200  )  # open serial port
print(ser.name)         # check which port was really used
ser.close()    