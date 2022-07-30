EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "6502 Interface"
Date ""
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 6226E6A2
P 1450 2700
AR Path="/6226E6A2" Ref="J?"  Part="1" 
AR Path="/62243A53/6226E6A2" Ref="J4"  Part="1" 
F 0 "J4" H 1530 2692 50  0000 L CNN
F 1 "Conn_01x08" H 1530 2601 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x08_P1.27mm_Vertical" H 1450 2700 50  0001 C CNN
F 3 "~" H 1450 2700 50  0001 C CNN
	1    1450 2700
	1    0    0    -1  
$EndComp
Entry Wire Line
	950  2300 1050 2400
Entry Wire Line
	950  2400 1050 2500
Entry Wire Line
	950  2500 1050 2600
Entry Wire Line
	950  2600 1050 2700
Entry Wire Line
	950  2700 1050 2800
Entry Wire Line
	950  2800 1050 2900
Entry Wire Line
	950  2900 1050 3000
Entry Wire Line
	950  3000 1050 3100
Wire Wire Line
	1050 2400 1250 2400
Wire Wire Line
	1250 2500 1050 2500
Wire Wire Line
	1050 2600 1250 2600
Wire Wire Line
	1050 2700 1250 2700
Wire Wire Line
	1050 2800 1250 2800
Wire Wire Line
	1050 2900 1250 2900
Wire Wire Line
	1050 3000 1250 3000
Text Label 1050 2400 0    50   ~ 0
2pa0
Text Label 1050 2500 0    50   ~ 0
2pa1
Text Label 1050 2600 0    50   ~ 0
2pa2
Text Label 1050 2700 0    50   ~ 0
2pa3
Text Label 1050 2800 0    50   ~ 0
2pa4
Text Label 1050 2900 0    50   ~ 0
2pa5
Text Label 1050 3000 0    50   ~ 0
2pa6
Text Label 1050 3100 0    50   ~ 0
2pa7
Wire Wire Line
	1050 3100 1250 3100
Text Label 1050 1550 0    50   ~ 0
2pb0
Text Label 1050 1650 0    50   ~ 0
2pb1
Text Label 1050 1750 0    50   ~ 0
2pb2
Text Label 1050 1850 0    50   ~ 0
2pb3
Text Label 1050 1950 0    50   ~ 0
2pb4
Text Label 1050 2050 0    50   ~ 0
2pb5
Text Label 1050 2150 0    50   ~ 0
2pb6
Text Label 1050 2250 0    50   ~ 0
2pb7
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 6226E6C8
P 1450 1000
AR Path="/6226E6C8" Ref="J?"  Part="1" 
AR Path="/62243A53/6226E6C8" Ref="J2"  Part="1" 
F 0 "J2" H 1530 992 50  0000 L CNN
F 1 "Conn_01x08" H 1530 901 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x08_P1.27mm_Vertical" H 1450 1000 50  0001 C CNN
F 3 "~" H 1450 1000 50  0001 C CNN
	1    1450 1000
	1    0    0    -1  
$EndComp
Entry Wire Line
	1050 1400 950  1300
Entry Wire Line
	1050 1300 950  1200
Entry Wire Line
	1050 1200 950  1100
Entry Wire Line
	1050 1100 950  1000
Entry Wire Line
	1050 1000 950  900 
Entry Wire Line
	1050 900  950  800 
Entry Wire Line
	1050 800  950  700 
Entry Wire Line
	1050 700  950  600 
Text Label 1150 700  2    50   ~ 0
d7
Text Label 1150 800  2    50   ~ 0
d6
Text Label 1150 900  2    50   ~ 0
d5
Text Label 1150 1000 2    50   ~ 0
d4
Text Label 1150 1100 2    50   ~ 0
d3
Text Label 1150 1200 2    50   ~ 0
d2
Text Label 1150 1300 2    50   ~ 0
d1
Text Label 1150 1400 2    50   ~ 0
d0
Wire Wire Line
	1250 1400 1050 1400
Wire Wire Line
	1250 1300 1050 1300
Wire Wire Line
	1250 1200 1050 1200
Wire Wire Line
	1250 1100 1050 1100
Wire Wire Line
	1250 1000 1050 1000
Wire Wire Line
	1250 900  1050 900 
Wire Wire Line
	1250 800  1050 800 
Wire Wire Line
	1250 700  1050 700 
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 6226E6E6
P 1450 1850
AR Path="/6226E6E6" Ref="J?"  Part="1" 
AR Path="/62243A53/6226E6E6" Ref="J3"  Part="1" 
F 0 "J3" H 1530 1842 50  0000 L CNN
F 1 "Conn_01x08" H 1530 1751 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x08_P1.27mm_Vertical" H 1450 1850 50  0001 C CNN
F 3 "~" H 1450 1850 50  0001 C CNN
	1    1450 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2250 1250 2250
Wire Wire Line
	1250 2150 1050 2150
Wire Wire Line
	1050 2050 1250 2050
Wire Wire Line
	1050 1950 1250 1950
Wire Wire Line
	1050 1850 1250 1850
Wire Wire Line
	1050 1750 1250 1750
Wire Wire Line
	1250 1650 1050 1650
Wire Wire Line
	1050 1550 1250 1550
Entry Wire Line
	950  2150 1050 2250
Entry Wire Line
	950  2050 1050 2150
Entry Wire Line
	950  1950 1050 2050
Entry Wire Line
	950  1850 1050 1950
Entry Wire Line
	950  1750 1050 1850
Entry Wire Line
	950  1650 1050 1750
Entry Wire Line
	950  1550 1050 1650
Entry Wire Line
	950  1450 1050 1550
Text GLabel 950  1450 0    50   Input ~ 0
2pb[0..7]
Text GLabel 950  600  0    50   Input ~ 0
d[0..7]
Text GLabel 950  2300 0    50   Input ~ 0
2pa[0..7]
$Comp
L Connector_Generic:Conn_01x16 J6
U 1 1 622BB1F1
P 3750 1500
F 0 "J6" H 3830 1492 50  0000 L CNN
F 1 "Conn_01x16" H 3830 1401 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x16_P1.27mm_Vertical" H 3750 1500 50  0001 C CNN
F 3 "~" H 3750 1500 50  0001 C CNN
	1    3750 1500
	1    0    0    -1  
$EndComp
Entry Wire Line
	3200 700  3300 800 
Entry Wire Line
	3200 800  3300 900 
Entry Wire Line
	3200 900  3300 1000
Entry Wire Line
	3200 1000 3300 1100
Entry Wire Line
	3200 1100 3300 1200
Entry Wire Line
	3200 1200 3300 1300
Entry Wire Line
	3200 1300 3300 1400
Entry Wire Line
	3200 1400 3300 1500
Entry Wire Line
	3200 1500 3300 1600
Entry Wire Line
	3200 1600 3300 1700
Entry Wire Line
	3200 1700 3300 1800
Entry Wire Line
	3200 1800 3300 1900
Entry Wire Line
	3200 1900 3300 2000
Entry Wire Line
	3200 2000 3300 2100
Entry Wire Line
	3200 2100 3300 2200
Entry Wire Line
	3200 2200 3300 2300
Wire Wire Line
	3300 800  3550 800 
Wire Wire Line
	3300 900  3550 900 
Wire Wire Line
	3300 1000 3550 1000
Wire Wire Line
	3300 1100 3550 1100
Wire Wire Line
	3300 1200 3550 1200
Wire Wire Line
	3300 1300 3550 1300
Wire Wire Line
	3300 1400 3550 1400
Wire Wire Line
	3300 1500 3550 1500
Wire Wire Line
	3300 1600 3550 1600
Wire Wire Line
	3300 1700 3550 1700
Wire Wire Line
	3300 1800 3550 1800
Wire Wire Line
	3300 1900 3550 1900
Wire Wire Line
	3300 2000 3550 2000
Wire Wire Line
	3300 2100 3550 2100
Wire Wire Line
	3300 2200 3550 2200
Wire Wire Line
	3300 2300 3550 2300
Text Label 3500 800  2    50   ~ 0
a0
Text Label 3500 900  2    50   ~ 0
a1
Text Label 3500 1000 2    50   ~ 0
a2
Text Label 3500 1100 2    50   ~ 0
a3
Text Label 3500 1200 2    50   ~ 0
a4
Text Label 3500 1300 2    50   ~ 0
a5
Text Label 3500 1400 2    50   ~ 0
a6
Text Label 3500 1500 2    50   ~ 0
a7
Text Label 3500 1600 2    50   ~ 0
a8
Text Label 3500 1700 2    50   ~ 0
a9
Text Label 3500 1800 2    50   ~ 0
a10
Text Label 3500 1900 2    50   ~ 0
a11
Text Label 3500 2000 2    50   ~ 0
a12
Text Label 3500 2100 2    50   ~ 0
a13
Text Label 3500 2200 2    50   ~ 0
a14
Text Label 3500 2300 2    50   ~ 0
a15
$Comp
L power:+5V #PWR064
U 1 1 622DA189
P 10350 1000
F 0 "#PWR064" H 10350 850 50  0001 C CNN
F 1 "+5V" H 10365 1173 50  0000 C CNN
F 2 "" H 10350 1000 50  0001 C CNN
F 3 "" H 10350 1000 50  0001 C CNN
	1    10350 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1000 10350 1000
$Comp
L power:+5V #PWR058
U 1 1 622D9438
P 8800 1000
F 0 "#PWR058" H 8800 850 50  0001 C CNN
F 1 "+5V" H 8815 1173 50  0000 C CNN
F 2 "" H 8800 1000 50  0001 C CNN
F 3 "" H 8800 1000 50  0001 C CNN
	1    8800 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR057
U 1 1 622D999A
P 8550 2300
F 0 "#PWR057" H 8550 2050 50  0001 C CNN
F 1 "GND" H 8555 2127 50  0000 C CNN
F 2 "" H 8550 2300 50  0001 C CNN
F 3 "" H 8550 2300 50  0001 C CNN
	1    8550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1000 8800 1000
$Comp
L 74xx:74HC595 U?
U 1 1 622B8FCF
P 8550 1600
AR Path="/622B8FCF" Ref="U?"  Part="1" 
AR Path="/62243A53/622B8FCF" Ref="U13"  Part="1" 
F 0 "U13" H 8550 2381 50  0000 C CNN
F 1 "74HC595" H 8550 2290 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 8550 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 8550 1600 50  0001 C CNN
	1    8550 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR056
U 1 1 622E4A05
P 8150 1800
F 0 "#PWR056" H 8150 1550 50  0001 C CNN
F 1 "GND" H 8155 1627 50  0000 C CNN
F 2 "" H 8150 1800 50  0001 C CNN
F 3 "" H 8150 1800 50  0001 C CNN
	1    8150 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR060
U 1 1 622E50B1
P 9700 1800
F 0 "#PWR060" H 9700 1550 50  0001 C CNN
F 1 "GND" H 9705 1627 50  0000 C CNN
F 2 "" H 9700 1800 50  0001 C CNN
F 3 "" H 9700 1800 50  0001 C CNN
	1    9700 1800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U12
U 2 1 622E96F7
P 6950 1650
F 0 "U12" H 6950 1967 50  0000 C CNN
F 1 "74HC14" H 6950 1876 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6950 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 6950 1650 50  0001 C CNN
	2    6950 1650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U12
U 7 1 622E9F0D
P 5700 1500
F 0 "U12" H 5930 1546 50  0000 L CNN
F 1 "74HC14" H 5930 1455 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5700 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 5700 1500 50  0001 C CNN
	7    5700 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR052
U 1 1 622EB267
P 5700 1000
F 0 "#PWR052" H 5700 850 50  0001 C CNN
F 1 "+5V" H 5715 1173 50  0000 C CNN
F 2 "" H 5700 1000 50  0001 C CNN
F 3 "" H 5700 1000 50  0001 C CNN
	1    5700 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR053
U 1 1 622EB7DC
P 5700 2000
F 0 "#PWR053" H 5700 1750 50  0001 C CNN
F 1 "GND" H 5705 1827 50  0000 C CNN
F 2 "" H 5700 2000 50  0001 C CNN
F 3 "" H 5700 2000 50  0001 C CNN
	1    5700 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 62266E5A
P 3750 2850
AR Path="/62266E5A" Ref="J?"  Part="1" 
AR Path="/62243A53/62266E5A" Ref="J7"  Part="1" 
F 0 "J7" H 3830 2842 50  0000 L CNN
F 1 "Conn_01x08" H 3830 2751 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x08_P1.27mm_Vertical" H 3750 2850 50  0001 C CNN
F 3 "~" H 3750 2850 50  0001 C CNN
	1    3750 2850
	1    0    0    -1  
$EndComp
Text GLabel 3550 2550 0    50   Input ~ 0
PHI2
Text GLabel 3550 2650 0    50   Input ~ 0
VP
Text GLabel 3550 2750 0    50   Input ~ 0
PHI1O
Text GLabel 3550 2850 0    50   Input ~ 0
IRQ
Text GLabel 3550 2950 0    50   Input ~ 0
ML
Text GLabel 3550 3050 0    50   Input ~ 0
SYNC
Text GLabel 3550 3150 0    50   Input ~ 0
RW
Text GLabel 3550 3250 0    50   Input ~ 0
RESET
Text GLabel 3200 700  0    50   Input ~ 0
a[0..15]
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 6226BD03
P 5200 2850
AR Path="/6226BD03" Ref="J?"  Part="1" 
AR Path="/62243A53/6226BD03" Ref="J9"  Part="1" 
F 0 "J9" H 5280 2842 50  0000 L CNN
F 1 "Conn_01x08" H 5280 2751 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x08_P1.27mm_Vertical" H 5200 2850 50  0001 C CNN
F 3 "~" H 5200 2850 50  0001 C CNN
	1    5200 2850
	1    0    0    -1  
$EndComp
Text GLabel 5000 2550 0    50   Input ~ 0
1CB1
Text GLabel 5000 2650 0    50   Input ~ 0
1CB2
Text GLabel 5000 2750 0    50   Input ~ 0
1CA1
Text GLabel 5000 2850 0    50   Input ~ 0
1CA2
Text GLabel 5000 2950 0    50   Input ~ 0
2CB1
Text GLabel 5000 3050 0    50   Input ~ 0
2CB2
Text GLabel 5000 3150 0    50   Input ~ 0
2CA1
Text GLabel 5000 3250 0    50   Input ~ 0
2CA2
Entry Wire Line
	1050 4550 950  4450
Entry Wire Line
	1050 4450 950  4350
Entry Wire Line
	1050 4350 950  4250
Entry Wire Line
	1050 4250 950  4150
Entry Wire Line
	1050 4150 950  4050
Entry Wire Line
	1050 4050 950  3950
Entry Wire Line
	1050 3950 950  3850
Entry Wire Line
	1050 3850 950  3750
Entry Wire Line
	1050 3750 950  3650
Entry Wire Line
	1050 3650 950  3550
Entry Wire Line
	1050 3550 950  3450
Entry Wire Line
	1050 3450 950  3350
Entry Wire Line
	1050 3350 950  3250
Wire Wire Line
	1300 4550 1050 4550
Wire Wire Line
	1300 4450 1050 4450
Wire Wire Line
	1300 4350 1050 4350
Wire Wire Line
	1300 4250 1050 4250
Wire Wire Line
	1300 4150 1050 4150
Wire Wire Line
	1300 4050 1050 4050
Wire Wire Line
	1300 3950 1050 3950
Wire Wire Line
	1300 3850 1050 3850
Wire Wire Line
	1300 3750 1050 3750
Wire Wire Line
	1300 3650 1050 3650
Wire Wire Line
	1300 3550 1050 3550
Wire Wire Line
	1300 3450 1050 3450
Wire Wire Line
	1300 3350 1050 3350
Text GLabel 950  4100 0    50   Input ~ 0
dev[0..15]
Entry Wire Line
	1050 4650 950  4550
Entry Wire Line
	1050 4750 950  4650
Entry Wire Line
	1050 4850 950  4750
Text Label 1300 4850 2    50   ~ 0
dev0
Text Label 1300 4750 2    50   ~ 0
dev1
Text Label 1300 4650 2    50   ~ 0
dev2
Text Label 1300 4550 2    50   ~ 0
dev3
Text Label 1300 4450 2    50   ~ 0
dev4
Text Label 1300 4350 2    50   ~ 0
dev5
Text Label 1300 4250 2    50   ~ 0
dev6
Text Label 1300 4150 2    50   ~ 0
dev7
Text Label 1300 4050 2    50   ~ 0
dev8
Text Label 1300 3950 2    50   ~ 0
dev9
Text Label 1300 3850 2    50   ~ 0
dev10
Text Label 1300 3750 2    50   ~ 0
dev11
Text Label 1300 3650 2    50   ~ 0
dev12
Text Label 1300 3550 2    50   ~ 0
dev13
Text Label 1300 3450 2    50   ~ 0
dev14
Text Label 1300 3350 2    50   ~ 0
dev15
Wire Wire Line
	1050 4850 1300 4850
Wire Wire Line
	1050 4650 1300 4650
Wire Wire Line
	1050 4750 1300 4750
$Comp
L Connector_Generic:Conn_01x16 J5
U 1 1 624BC856
P 1500 4050
F 0 "J5" H 1580 4042 50  0000 L CNN
F 1 "Conn_01x16" H 1580 3951 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x16_P1.27mm_Vertical" H 1500 4050 50  0001 C CNN
F 3 "~" H 1500 4050 50  0001 C CNN
	1    1500 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J10
U 1 1 626702FA
P 5250 3750
F 0 "J10" H 5330 3742 50  0000 L CNN
F 1 "Conn_01x06" H 5330 3651 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x06_P1.27mm_Vertical" H 5250 3750 50  0001 C CNN
F 3 "~" H 5250 3750 50  0001 C CNN
	1    5250 3750
	1    0    0    -1  
$EndComp
Entry Wire Line
	3100 3550 3200 3650
Entry Wire Line
	3100 3650 3200 3750
Entry Wire Line
	3100 3750 3200 3850
Entry Wire Line
	3100 3850 3200 3950
Wire Wire Line
	3200 3650 3550 3650
Wire Wire Line
	3200 3750 3550 3750
Wire Wire Line
	3200 3850 3550 3850
Wire Wire Line
	3200 3950 3550 3950
Text Label 3500 3650 2    50   ~ 0
decode0
Text Label 3500 3750 2    50   ~ 0
decode1
Text Label 3500 3850 2    50   ~ 0
decode2
Text Label 3500 3950 2    50   ~ 0
decode3
Text GLabel 3100 3600 0    50   Input ~ 0
decode[0..3]
$Comp
L power:GND #PWR050
U 1 1 626AC510
P 5050 3550
F 0 "#PWR050" H 5050 3300 50  0001 C CNN
F 1 "GND" H 5055 3377 50  0000 C CNN
F 2 "" H 5050 3550 50  0001 C CNN
F 3 "" H 5050 3550 50  0001 C CNN
	1    5050 3550
	-1   0    0    1   
$EndComp
Text GLabel 5050 3650 0    50   Input ~ 0
TxD
Text GLabel 5050 3750 0    50   Input ~ 0
RxD
$Comp
L power:+5V #PWR049
U 1 1 626B2010
P 4900 3850
F 0 "#PWR049" H 4900 3700 50  0001 C CNN
F 1 "+5V" H 4915 4023 50  0000 C CNN
F 2 "" H 4900 3850 50  0001 C CNN
F 3 "" H 4900 3850 50  0001 C CNN
	1    4900 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 3850 5050 3850
Text GLabel 5050 3950 0    50   Input ~ 0
RTS
$Comp
L power:GND #PWR051
U 1 1 626BB39D
P 5050 4050
F 0 "#PWR051" H 5050 3800 50  0001 C CNN
F 1 "GND" H 5055 3877 50  0000 C CNN
F 2 "" H 5050 4050 50  0001 C CNN
F 3 "" H 5050 4050 50  0001 C CNN
	1    5050 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector:DIN-6 J11
U 1 1 626C7539
P 9400 3100
F 0 "J11" H 9400 3581 50  0000 C CNN
F 1 "DIN-6" H 9400 3490 50  0000 C CNN
F 2 "6502:mini_din-6" H 9400 3100 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 9400 3100 50  0001 C CNN
	1    9400 3100
	1    0    0    -1  
$EndComp
Text GLabel 9100 3200 0    50   Input ~ 0
PS2_D
$Comp
L power:GND #PWR063
U 1 1 626FE9D8
P 10100 2800
F 0 "#PWR063" H 10100 2550 50  0001 C CNN
F 1 "GND" H 10105 2627 50  0000 C CNN
F 2 "" H 10100 2800 50  0001 C CNN
F 3 "" H 10100 2800 50  0001 C CNN
	1    10100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2800 10100 2800
$Comp
L power:+5V #PWR061
U 1 1 62705ABA
P 9700 3000
F 0 "#PWR061" H 9700 2850 50  0001 C CNN
F 1 "+5V" H 9715 3173 50  0000 C CNN
F 2 "" H 9700 3000 50  0001 C CNN
F 3 "" H 9700 3000 50  0001 C CNN
	1    9700 3000
	0    1    1    0   
$EndComp
Text GLabel 9700 3200 2    50   Input ~ 0
PS2_CLK
NoConn ~ 9400 3400
NoConn ~ 9100 3000
Text GLabel 8150 1200 0    50   Input ~ 0
PS2_D
Wire Wire Line
	8950 2100 9350 2100
Wire Wire Line
	9350 2100 9350 1200
Wire Wire Line
	9350 1200 9700 1200
$Comp
L Device:R R6
U 1 1 6271CDA7
P 9550 1500
F 0 "R6" V 9343 1500 50  0000 C CNN
F 1 "1K" V 9434 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9480 1500 50  0001 C CNN
F 3 "~" H 9550 1500 50  0001 C CNN
	1    9550 1500
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR059
U 1 1 6271D986
P 9400 1500
F 0 "#PWR059" H 9400 1350 50  0001 C CNN
F 1 "+5V" H 9415 1673 50  0000 C CNN
F 2 "" H 9400 1500 50  0001 C CNN
F 3 "" H 9400 1500 50  0001 C CNN
	1    9400 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 62723688
P 8000 1500
F 0 "R5" V 7793 1500 50  0000 C CNN
F 1 "1K" V 7884 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7930 1500 50  0001 C CNN
F 3 "~" H 8000 1500 50  0001 C CNN
	1    8000 1500
	0    1    1    0   
$EndComp
Text GLabel 6650 1650 0    50   Input ~ 0
PS2_CLK
Wire Wire Line
	7250 1650 7300 1650
$Comp
L power:+5V #PWR055
U 1 1 62724246
P 7850 1500
F 0 "#PWR055" H 7850 1350 50  0001 C CNN
F 1 "+5V" H 7865 1673 50  0000 C CNN
F 2 "" H 7850 1500 50  0001 C CNN
F 3 "" H 7850 1500 50  0001 C CNN
	1    7850 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 6273740D
P 7300 1800
F 0 "R4" H 7370 1846 50  0000 L CNN
F 1 "21K" H 7370 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7230 1800 50  0001 C CNN
F 3 "~" H 7300 1800 50  0001 C CNN
	1    7300 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:D D2
U 1 1 62737B36
P 7600 1800
F 0 "D2" V 7646 1720 50  0000 R CNN
F 1 "5.1V" V 7555 1720 50  0000 R CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 7600 1800 50  0001 C CNN
F 3 "~" H 7600 1800 50  0001 C CNN
	1    7600 1800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C16
U 1 1 627381B1
P 7300 2450
F 0 "C16" H 7415 2496 50  0000 L CNN
F 1 "0.1uF" H 7415 2405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 7338 2300 50  0001 C CNN
F 3 "~" H 7300 2450 50  0001 C CNN
	1    7300 2450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U12
U 1 1 622E8F88
P 7750 2300
F 0 "U12" H 7750 2617 50  0000 C CNN
F 1 "74HC14" H 7750 2526 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 7750 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7750 2300 50  0001 C CNN
	1    7750 2300
	1    0    0    -1  
$EndComp
Connection ~ 7300 1650
Wire Wire Line
	7600 1950 7300 1950
Wire Wire Line
	7300 1950 7300 2300
Wire Wire Line
	7300 2300 7450 2300
Connection ~ 7300 1950
Connection ~ 7300 2300
$Comp
L power:GND #PWR054
U 1 1 62745B4A
P 7300 2600
F 0 "#PWR054" H 7300 2350 50  0001 C CNN
F 1 "GND" H 7305 2427 50  0000 C CNN
F 2 "" H 7300 2600 50  0001 C CNN
F 3 "" H 7300 2600 50  0001 C CNN
	1    7300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2300 8050 1700
Wire Wire Line
	8050 1700 8150 1700
Wire Wire Line
	7300 1650 7600 1650
Wire Wire Line
	8050 2300 8050 2550
Wire Wire Line
	8050 2550 9600 2550
Wire Wire Line
	9600 2550 9600 1700
Wire Wire Line
	9600 1700 9700 1700
Connection ~ 8050 2300
Text GLabel 8050 2550 0    50   Input ~ 0
1CA1
NoConn ~ 10500 2100
NoConn ~ 8950 1200
NoConn ~ 8950 1300
Entry Wire Line
	9200 1400 9300 1500
Entry Wire Line
	9200 1500 9300 1600
Entry Wire Line
	9200 1600 9300 1700
Entry Wire Line
	9200 1700 9300 1800
Entry Wire Line
	9200 1800 9300 1900
Entry Wire Line
	9200 1900 9300 2000
Wire Wire Line
	8950 1400 9200 1400
Wire Wire Line
	8950 1500 9200 1500
Wire Wire Line
	8950 1600 9200 1600
Wire Wire Line
	8950 1700 9200 1700
Wire Wire Line
	8950 1800 9200 1800
Wire Wire Line
	8950 1900 9200 1900
Text Label 8950 1400 0    50   ~ 0
1pa7
Text Label 8950 1500 0    50   ~ 0
1pa6
Text Label 8950 1600 0    50   ~ 0
1pa5
Text Label 8950 1700 0    50   ~ 0
1pa4
Text Label 8950 1800 0    50   ~ 0
1pa3
Text Label 8950 1900 0    50   ~ 0
1pa2
Entry Wire Line
	10750 1200 10850 1300
Entry Wire Line
	10750 1300 10850 1400
Wire Wire Line
	10500 1200 10750 1200
Wire Wire Line
	10500 1300 10750 1300
Text Label 10500 1200 0    50   ~ 0
1pa1
Text Label 10500 1300 0    50   ~ 0
1pa0
Wire Bus Line
	9300 700  10850 700 
Text GLabel 9300 1000 0    50   Input ~ 0
1pa[0..7]
NoConn ~ 10500 1900
NoConn ~ 10500 1800
NoConn ~ 10500 1700
NoConn ~ 10500 1600
NoConn ~ 10500 1500
NoConn ~ 10500 1400
$Comp
L 74xx:74HC595 U?
U 1 1 622B8FC9
P 10100 1600
AR Path="/622B8FC9" Ref="U?"  Part="1" 
AR Path="/62243A53/622B8FC9" Ref="U14"  Part="1" 
F 0 "U14" H 10100 2381 50  0000 C CNN
F 1 "74HC595" H 10100 2290 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 10100 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 10100 1600 50  0001 C CNN
	1    10100 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR062
U 1 1 62E23DE4
P 10100 2300
F 0 "#PWR062" H 10100 2050 50  0001 C CNN
F 1 "GND" H 10105 2127 50  0000 C CNN
F 2 "" H 10100 2300 50  0001 C CNN
F 3 "" H 10100 2300 50  0001 C CNN
	1    10100 2300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U12
U 3 1 6232CC5F
P 7200 1000
F 0 "U12" H 7200 1317 50  0000 C CNN
F 1 "74HC14" H 7200 1226 50  0000 C CNN
F 2 "" H 7200 1000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7200 1000 50  0001 C CNN
	3    7200 1000
	1    0    0    -1  
$EndComp
Text GLabel 6900 1000 0    50   Input ~ 0
PS2_CLK
Wire Wire Line
	7500 1000 7500 1400
Wire Wire Line
	7500 1400 8150 1400
Wire Wire Line
	7500 1000 7500 750 
Wire Wire Line
	7500 750  9650 750 
Wire Wire Line
	9650 750  9650 1400
Wire Wire Line
	9650 1400 9700 1400
Connection ~ 7500 1000
Wire Bus Line
	10850 700  10850 1400
Wire Bus Line
	3100 3550 3100 3850
Wire Bus Line
	950  2300 950  3000
Wire Bus Line
	950  600  950  1300
Wire Bus Line
	950  1450 950  2150
Wire Bus Line
	9300 700  9300 2000
Wire Bus Line
	3200 700  3200 2200
Wire Bus Line
	950  3250 950  4750
$Comp
L Connector_Generic:Conn_01x04 J8
U 1 1 63226BEA
P 3750 3750
F 0 "J8" H 3830 3742 50  0000 L CNN
F 1 "Conn_01x04" H 3830 3651 50  0000 L CNN
F 2 "" H 3750 3750 50  0001 C CNN
F 3 "~" H 3750 3750 50  0001 C CNN
	1    3750 3750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
