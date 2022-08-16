EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "6502 Interface"
Date ""
Rev "1.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1100 750  0    50   ~ 0
2pb0
Text Label 1100 850  0    50   ~ 0
2pb1
Text Label 1100 950  0    50   ~ 0
2pb2
Text Label 1100 1050 0    50   ~ 0
2pb3
Text Label 1100 1150 0    50   ~ 0
2pb4
Text Label 1100 1250 0    50   ~ 0
2pb5
Text Label 1100 1350 0    50   ~ 0
2pb6
Text Label 1100 1450 0    50   ~ 0
2pb7
Entry Wire Line
	1000 1350 1100 1450
Entry Wire Line
	1000 1250 1100 1350
Entry Wire Line
	1000 1150 1100 1250
Entry Wire Line
	1000 1050 1100 1150
Entry Wire Line
	1000 950  1100 1050
Entry Wire Line
	1000 850  1100 950 
Entry Wire Line
	1000 750  1100 850 
Entry Wire Line
	1000 650  1100 750 
Text GLabel 1000 650  0    50   Input ~ 0
2pb[0..7]
Entry Wire Line
	2500 650  2600 750 
Entry Wire Line
	2500 750  2600 850 
Entry Wire Line
	2500 850  2600 950 
Entry Wire Line
	2500 950  2600 1050
Text Label 2900 750  2    50   ~ 0
decode0
Text Label 2900 850  2    50   ~ 0
decode1
Text Label 2900 950  2    50   ~ 0
decode2
Text Label 2900 1050 2    50   ~ 0
decode3
Text GLabel 2500 700  0    50   Input ~ 0
decode[0..4]
$Comp
L power:+5V #PWR061
U 1 1 62705ABA
P 6300 1600
F 0 "#PWR061" H 6300 1450 50  0001 C CNN
F 1 "+5V" H 6315 1773 50  0000 C CNN
F 2 "" H 6300 1600 50  0001 C CNN
F 3 "" H 6300 1600 50  0001 C CNN
	1    6300 1600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Mini-DIN-6 J11
U 1 1 62F0854A
P 6600 1600
F 0 "J11" H 6600 1967 50  0000 C CNN
F 1 "Mini-DIN-6" H 6600 1876 50  0000 C CNN
F 2 "6502Computer:mini_din-6" H 6600 1600 50  0001 C CNN
F 3 "http://service.powerdynamics.com/ec/Catalog17/Section%2011.pdf" H 6600 1600 50  0001 C CNN
	1    6600 1600
	1    0    0    -1  
$EndComp
NoConn ~ 6300 1700
NoConn ~ 6300 1500
$Comp
L Connector_Generic:Conn_01x05 J8
U 1 1 63047F58
P 3150 950
F 0 "J8" H 3230 992 50  0000 L CNN
F 1 "Conn_01x05" H 3230 901 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x05_P1.27mm_Vertical" H 3150 950 50  0001 C CNN
F 3 "~" H 3150 950 50  0001 C CNN
	1    3150 950 
	1    0    0    -1  
$EndComp
Entry Wire Line
	2500 1050 2600 1150
Text Label 2900 1150 2    50   ~ 0
decode4
Text Label 6900 1500 0    50   ~ 0
1pa4
Entry Wire Line
	7100 1500 7200 1600
Entry Wire Line
	7100 1700 7200 1800
Text Label 6900 1700 0    50   ~ 0
1pa5
Text GLabel 7200 1600 2    50   Input ~ 0
1pa[4..5]
$Comp
L power:GND #PWR?
U 1 1 6342FD0F
P 7050 1800
AR Path="/6342FD0F" Ref="#PWR?"  Part="1" 
AR Path="/62243A53/6342FD0F" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 7050 1550 50  0001 C CNN
F 1 "GND" H 7055 1627 50  0000 C CNN
F 2 "" H 7050 1800 50  0001 C CNN
F 3 "" H 7050 1800 50  0001 C CNN
	1    7050 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 6226E6E6
P 1500 1050
AR Path="/6226E6E6" Ref="J?"  Part="1" 
AR Path="/62243A53/6226E6E6" Ref="J3"  Part="1" 
F 0 "J3" H 1580 1042 50  0000 L CNN
F 1 "Conn_01x08" H 1580 951 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x08_P1.27mm_Vertical" H 1500 1050 50  0001 C CNN
F 3 "~" H 1500 1050 50  0001 C CNN
	1    1500 1050
	1    0    0    -1  
$EndComp
Text GLabel 4200 950  0    50   Input ~ 0
EXT_IN2
Text GLabel 4200 850  0    50   Input ~ 0
EXT_IN1
$Comp
L Connector_Generic:Conn_01x02 J15
U 1 1 6301442C
P 4400 850
F 0 "J15" H 4480 842 50  0000 L CNN
F 1 "Conn_01x02" H 4480 751 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 4400 850 50  0001 C CNN
F 3 "~" H 4400 850 50  0001 C CNN
	1    4400 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1350 1100 1350
Wire Wire Line
	2600 750  2950 750 
Wire Wire Line
	2600 850  2950 850 
Wire Wire Line
	2600 950  2950 950 
Wire Wire Line
	2600 1050 2950 1050
Wire Wire Line
	2600 1150 2950 1150
Wire Wire Line
	6900 1700 7100 1700
Wire Wire Line
	6900 1500 7100 1500
Wire Bus Line
	7200 1600 7200 1800
Wire Wire Line
	7050 1800 7050 1600
Wire Wire Line
	7050 1600 6900 1600
Wire Wire Line
	1100 1450 1300 1450
Wire Wire Line
	1100 1250 1300 1250
Wire Wire Line
	1100 1150 1300 1150
Wire Wire Line
	1100 1050 1300 1050
Wire Wire Line
	1100 950  1300 950 
Wire Wire Line
	1300 850  1100 850 
Wire Wire Line
	1100 750  1300 750 
$Comp
L Connector:Jack-DC J?
U 1 1 62F58ACC
P 8150 1250
AR Path="/62F58ACC" Ref="J?"  Part="1" 
AR Path="/62243A53/62F58ACC" Ref="J12"  Part="1" 
F 0 "J12" H 8207 1575 50  0000 C CNN
F 1 "Jack-DC" H 8207 1484 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 8200 1210 50  0001 C CNN
F 3 "~" H 8200 1210 50  0001 C CNN
	1    8150 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62F58AD2
P 8450 1450
AR Path="/62F58AD2" Ref="#PWR?"  Part="1" 
AR Path="/62243A53/62F58AD2" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 8450 1200 50  0001 C CNN
F 1 "GND" H 8450 1300 50  0000 C CNN
F 2 "" H 8450 1450 50  0001 C CNN
F 3 "" H 8450 1450 50  0001 C CNN
	1    8450 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PMOS_GDS Q1
U 1 1 6311C8B1
P 8650 1250
F 0 "Q1" H 8855 1296 50  0000 L CNN
F 1 "FQP47P06" H 8855 1205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-251-3-1EP_Horizontal_TabDown" H 8850 1350 50  0001 C CNN
F 3 "~" H 8650 1250 50  0001 C CNN
	1    8650 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8450 1350 8450 1450
Wire Wire Line
	8650 1450 8450 1450
Connection ~ 8450 1450
$Comp
L power:GND #PWR?
U 1 1 63190A1D
P 9500 1650
AR Path="/63190A1D" Ref="#PWR?"  Part="1" 
AR Path="/62243A53/63190A1D" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 9500 1400 50  0001 C CNN
F 1 "GND" H 9500 1500 50  0000 C CNN
F 2 "" H 9500 1650 50  0001 C CNN
F 3 "" H 9500 1650 50  0001 C CNN
	1    9500 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6319116C
P 9950 1150
AR Path="/6319116C" Ref="#PWR?"  Part="1" 
AR Path="/62243A53/6319116C" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 9950 1000 50  0001 C CNN
F 1 "+5V" V 9965 1278 50  0000 L CNN
F 2 "" H 9950 1150 50  0001 C CNN
F 3 "" H 9950 1150 50  0001 C CNN
	1    9950 1150
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:LM7805_TO220 U13
U 1 1 6318EF21
P 9500 1150
F 0 "U13" H 9500 1392 50  0000 C CNN
F 1 "LM7805_TO220" H 9500 1301 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-251-3-1EP_Horizontal_TabDown" H 9500 1375 50  0001 C CIN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MC7800-D.PDF" H 9500 1100 50  0001 C CNN
	1    9500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1450 9500 1650
Connection ~ 9500 1450
Wire Wire Line
	9500 1450 9850 1450
Wire Wire Line
	9800 1150 9850 1150
Wire Wire Line
	9850 1150 9950 1150
Connection ~ 9850 1150
Wire Wire Line
	8850 1150 9000 1150
Connection ~ 9000 1150
Wire Wire Line
	9000 1150 9200 1150
Wire Wire Line
	9000 1450 9500 1450
Text Label 1100 1650 0    50   ~ 0
2pa0
Text Label 1100 1750 0    50   ~ 0
2pa1
Text Label 1100 1850 0    50   ~ 0
2pa2
Text Label 1100 1950 0    50   ~ 0
2pa3
Text Label 1100 2050 0    50   ~ 0
2pa4
Text Label 1100 2150 0    50   ~ 0
2pa5
Text Label 1100 2250 0    50   ~ 0
2pa6
Text Label 1100 2350 0    50   ~ 0
2pa7
Entry Wire Line
	1000 2250 1100 2350
Entry Wire Line
	1000 2150 1100 2250
Entry Wire Line
	1000 2050 1100 2150
Entry Wire Line
	1000 1950 1100 2050
Entry Wire Line
	1000 1850 1100 1950
Entry Wire Line
	1000 1750 1100 1850
Entry Wire Line
	1000 1650 1100 1750
Entry Wire Line
	1000 1550 1100 1650
Text GLabel 1000 1550 0    50   Input ~ 0
2pa[0..7]
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 63110813
P 1500 1950
AR Path="/63110813" Ref="J?"  Part="1" 
AR Path="/62243A53/63110813" Ref="J4"  Part="1" 
F 0 "J4" H 1580 1942 50  0000 L CNN
F 1 "Conn_01x08" H 1580 1851 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x08_P1.27mm_Vertical" H 1500 1950 50  0001 C CNN
F 3 "~" H 1500 1950 50  0001 C CNN
	1    1500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2250 1100 2250
Wire Wire Line
	1100 2350 1300 2350
Wire Wire Line
	1100 2150 1300 2150
Wire Wire Line
	1100 2050 1300 2050
Wire Wire Line
	1100 1950 1300 1950
Wire Wire Line
	1100 1850 1300 1850
Wire Wire Line
	1300 1750 1100 1750
Wire Wire Line
	1100 1650 1300 1650
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 63115AAE
P 1500 2650
F 0 "J5" H 1580 2692 50  0000 L CNN
F 1 "Conn_01x03" H 1580 2601 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x03_P1.27mm_Vertical" H 1500 2650 50  0001 C CNN
F 3 "~" H 1500 2650 50  0001 C CNN
	1    1500 2650
	1    0    0    -1  
$EndComp
Text Label 1300 2550 2    50   ~ 0
1pa6
Text Label 1300 2650 2    50   ~ 0
1pa7
Entry Wire Line
	1000 2450 1100 2550
Entry Wire Line
	1000 2550 1100 2650
Wire Wire Line
	1100 2550 1300 2550
Wire Wire Line
	1100 2650 1300 2650
Wire Bus Line
	1000 2450 1000 2550
Text GLabel 1000 2450 0    50   Input ~ 0
1pa[6..7]
Text GLabel 1100 2750 0    50   Input ~ 0
1pb[7..7]
Text Label 1300 2750 2    50   ~ 0
1pb7
Wire Wire Line
	1100 2750 1300 2750
$Comp
L Device:CP C18
U 1 1 632AC05F
P 9850 1300
F 0 "C18" H 9968 1346 50  0000 L CNN
F 1 "1uF" H 9968 1255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 9888 1150 50  0001 C CNN
F 3 "~" H 9850 1300 50  0001 C CNN
	1    9850 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C17
U 1 1 632AD60F
P 9000 1300
F 0 "C17" H 9118 1346 50  0000 L CNN
F 1 "1uF" H 9118 1255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 9038 1150 50  0001 C CNN
F 3 "~" H 9000 1300 50  0001 C CNN
	1    9000 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR060
U 1 1 63360F70
P 1650 5450
F 0 "#PWR060" H 1650 5200 50  0001 C CNN
F 1 "GND" H 1655 5277 50  0000 C CNN
F 2 "" H 1650 5450 50  0001 C CNN
F 3 "" H 1650 5450 50  0001 C CNN
	1    1650 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 6226BD03
P 2750 1950
AR Path="/6226BD03" Ref="J?"  Part="1" 
AR Path="/62243A53/6226BD03" Ref="J9"  Part="1" 
F 0 "J9" H 2830 1942 50  0000 L CNN
F 1 "Conn_01x08" H 2830 1851 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x08_P1.27mm_Vertical" H 2750 1950 50  0001 C CNN
F 3 "~" H 2750 1950 50  0001 C CNN
	1    2750 1950
	1    0    0    -1  
$EndComp
Text GLabel 2550 1650 0    50   Input ~ 0
1CB1
Text GLabel 2550 1750 0    50   Input ~ 0
1CB2
Text GLabel 2550 1850 0    50   Input ~ 0
1CA1
Text GLabel 2550 1950 0    50   Input ~ 0
1CA2
Text GLabel 2550 2050 0    50   Input ~ 0
2CB1
Text GLabel 2550 2150 0    50   Input ~ 0
2CB2
Text GLabel 2550 2250 0    50   Input ~ 0
2CA1
Text GLabel 2550 2350 0    50   Input ~ 0
2CA2
$Comp
L Connector_Generic:Conn_01x02 J17
U 1 1 6300F15C
P 10350 1700
F 0 "J17" H 10430 1692 50  0000 L CNN
F 1 "Conn_01x02" H 10430 1601 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 10350 1700 50  0001 C CNN
F 3 "~" H 10350 1700 50  0001 C CNN
	1    10350 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR057
U 1 1 62EF54DD
P 10150 1700
F 0 "#PWR057" H 10150 1550 50  0001 C CNN
F 1 "+5V" H 10165 1873 50  0000 C CNN
F 2 "" H 10150 1700 50  0001 C CNN
F 3 "" H 10150 1700 50  0001 C CNN
	1    10150 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR058
U 1 1 62EF4B72
P 10150 1800
F 0 "#PWR058" H 10150 1550 50  0001 C CNN
F 1 "GND" H 10155 1627 50  0000 C CNN
F 2 "" H 10150 1800 50  0001 C CNN
F 3 "" H 10150 1800 50  0001 C CNN
	1    10150 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR050
U 1 1 631D1DCC
P 3600 5450
F 0 "#PWR050" H 3600 5200 50  0001 C CNN
F 1 "GND" H 3605 5277 50  0000 C CNN
F 2 "" H 3600 5450 50  0001 C CNN
F 3 "" H 3600 5450 50  0001 C CNN
	1    3600 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR054
U 1 1 631E4DCA
P 5500 5450
F 0 "#PWR054" H 5500 5200 50  0001 C CNN
F 1 "GND" H 5505 5277 50  0000 C CNN
F 2 "" H 5500 5450 50  0001 C CNN
F 3 "" H 5500 5450 50  0001 C CNN
	1    5500 5450
	1    0    0    -1  
$EndComp
Text GLabel 8150 3550 2    50   Input ~ 0
d[0..8]
Text Label 7950 3450 0    50   ~ 0
d0
Text Label 7950 3550 0    50   ~ 0
d1
Text Label 7950 3650 0    50   ~ 0
d2
Text Label 7950 3750 0    50   ~ 0
d3
Text Label 7950 3850 0    50   ~ 0
d4
Text Label 7950 3950 0    50   ~ 0
d5
Text Label 7950 4050 0    50   ~ 0
d6
Text Label 7950 4150 0    50   ~ 0
d7
Entry Wire Line
	8050 4150 8150 4250
Entry Wire Line
	8050 4050 8150 4150
Entry Wire Line
	8050 3950 8150 4050
Entry Wire Line
	8050 3850 8150 3950
Entry Wire Line
	8050 3750 8150 3850
Entry Wire Line
	8050 3650 8150 3750
Entry Wire Line
	8050 3550 8150 3650
Entry Wire Line
	8050 3450 8150 3550
$Comp
L power:GND #PWR064
U 1 1 631F835E
P 7350 5450
F 0 "#PWR064" H 7350 5200 50  0001 C CNN
F 1 "GND" H 7355 5277 50  0000 C CNN
F 2 "" H 7350 5450 50  0001 C CNN
F 3 "" H 7350 5450 50  0001 C CNN
	1    7350 5450
	1    0    0    -1  
$EndComp
Text GLabel 4000 5950 0    50   Input ~ 0
dev[2..3]
$Comp
L power:+5V #PWR062
U 1 1 631F8352
P 7350 5350
F 0 "#PWR062" H 7350 5200 50  0001 C CNN
F 1 "+5V" H 7365 5523 50  0000 C CNN
F 2 "" H 7350 5350 50  0001 C CNN
F 3 "" H 7350 5350 50  0001 C CNN
	1    7350 5350
	0    -1   -1   0   
$EndComp
Text GLabel 7000 5000 0    50   Input ~ 0
dev[13..15]
Text Label 7350 5250 2    50   ~ 0
dev15
Text Label 7350 5150 2    50   ~ 0
dev14
Text Label 7350 5050 2    50   ~ 0
dev13
Text GLabel 7850 5250 2    50   Input ~ 0
PHI1O
Text GLabel 7850 5150 2    50   Input ~ 0
NMI
Wire Wire Line
	7100 3450 7350 3450
Wire Wire Line
	7850 3850 8050 3850
Wire Wire Line
	7100 3950 7350 3950
Wire Wire Line
	7850 3950 8050 3950
Wire Wire Line
	7100 4050 7350 4050
Wire Wire Line
	7850 4050 8050 4050
Wire Wire Line
	7100 4150 7350 4150
Wire Wire Line
	7850 4150 8050 4150
Wire Wire Line
	7100 4250 7350 4250
Wire Wire Line
	7100 4350 7350 4350
Wire Wire Line
	7850 3450 8050 3450
Wire Wire Line
	7100 4450 7350 4450
Wire Wire Line
	7100 4550 7350 4550
Wire Wire Line
	7100 4650 7350 4650
Wire Wire Line
	7100 4750 7350 4750
Wire Wire Line
	7100 4850 7350 4850
Wire Wire Line
	7100 3550 7350 3550
Wire Wire Line
	7100 4950 7350 4950
Wire Wire Line
	7350 5050 7100 5050
Wire Wire Line
	7350 5150 7100 5150
Wire Wire Line
	7350 5250 7100 5250
Wire Wire Line
	7850 3550 8050 3550
Wire Wire Line
	7100 3650 7350 3650
Wire Wire Line
	7850 3650 8050 3650
Wire Wire Line
	7100 3750 7350 3750
Wire Wire Line
	7850 3750 8050 3750
Wire Wire Line
	7100 3850 7350 3850
Entry Wire Line
	7100 5250 7000 5150
Entry Wire Line
	7100 5150 7000 5050
Entry Wire Line
	7100 5050 7000 4950
Text Label 7300 4950 2    50   ~ 0
a15
Text Label 7300 4850 2    50   ~ 0
a14
Text Label 7300 4750 2    50   ~ 0
a13
Text Label 7300 4650 2    50   ~ 0
a12
Text Label 7300 4550 2    50   ~ 0
a11
Text Label 7300 4450 2    50   ~ 0
a10
Text Label 7300 4350 2    50   ~ 0
a9
Text Label 7300 4250 2    50   ~ 0
a8
Text Label 7300 4150 2    50   ~ 0
a7
Text Label 7300 4050 2    50   ~ 0
a6
Text Label 7300 3950 2    50   ~ 0
a5
Text Label 7300 3850 2    50   ~ 0
a4
Text Label 7300 3750 2    50   ~ 0
a3
Text Label 7300 3650 2    50   ~ 0
a2
Text Label 7300 3550 2    50   ~ 0
a1
Text Label 7300 3450 2    50   ~ 0
a0
Entry Wire Line
	7000 4850 7100 4950
Entry Wire Line
	7000 4750 7100 4850
Entry Wire Line
	7000 4650 7100 4750
Entry Wire Line
	7000 4550 7100 4650
Entry Wire Line
	7000 4450 7100 4550
Entry Wire Line
	7000 4350 7100 4450
Entry Wire Line
	7000 4250 7100 4350
Entry Wire Line
	7000 4150 7100 4250
Entry Wire Line
	7000 4050 7100 4150
Entry Wire Line
	7000 3950 7100 4050
Entry Wire Line
	7000 3850 7100 3950
Entry Wire Line
	7000 3750 7100 3850
Entry Wire Line
	7000 3650 7100 3750
Entry Wire Line
	7000 3550 7100 3650
Entry Wire Line
	7000 3450 7100 3550
Entry Wire Line
	7000 3350 7100 3450
Text GLabel 7850 4250 2    50   Input ~ 0
RW
Text GLabel 7850 4350 2    50   Input ~ 0
PHI2
Text GLabel 7850 4450 2    50   Input ~ 0
RESET
Text GLabel 7850 4550 2    50   Input ~ 0
SYNC
Text GLabel 7850 4650 2    50   Input ~ 0
IRQ
Text GLabel 7850 4750 2    50   Input ~ 0
BE
Text GLabel 7850 4850 2    50   Input ~ 0
RDY
Text GLabel 7850 4950 2    50   Input ~ 0
VP
Text GLabel 7000 3350 0    50   Input ~ 0
a[0..15]
Text GLabel 7850 5050 2    50   Input ~ 0
ML
$Comp
L power:+5V #PWR053
U 1 1 631E4DBE
P 5500 5350
F 0 "#PWR053" H 5500 5200 50  0001 C CNN
F 1 "+5V" H 5515 5523 50  0000 C CNN
F 2 "" H 5500 5350 50  0001 C CNN
F 3 "" H 5500 5350 50  0001 C CNN
	1    5500 5350
	0    -1   -1   0   
$EndComp
Text GLabel 5150 5000 0    50   Input ~ 0
dev[10..12]
Text Label 5500 5250 2    50   ~ 0
dev12
Text Label 5500 5150 2    50   ~ 0
dev11
Text Label 5500 5050 2    50   ~ 0
dev10
Text GLabel 6000 5250 2    50   Input ~ 0
PHI1O
Text GLabel 6000 5150 2    50   Input ~ 0
NMI
Wire Wire Line
	5250 3450 5500 3450
Wire Wire Line
	6000 3850 6200 3850
Wire Wire Line
	5250 3950 5500 3950
Wire Wire Line
	6000 3950 6200 3950
Wire Wire Line
	5250 4050 5500 4050
Wire Wire Line
	6000 4050 6200 4050
Wire Wire Line
	5250 4150 5500 4150
Wire Wire Line
	6000 4150 6200 4150
Wire Wire Line
	5250 4250 5500 4250
Wire Wire Line
	5250 4350 5500 4350
Wire Wire Line
	6000 3450 6200 3450
Wire Wire Line
	5250 4450 5500 4450
Wire Wire Line
	5250 4550 5500 4550
Wire Wire Line
	5250 4650 5500 4650
Wire Wire Line
	5250 4750 5500 4750
Wire Wire Line
	5250 4850 5500 4850
Wire Wire Line
	5250 3550 5500 3550
Wire Wire Line
	5250 4950 5500 4950
Wire Wire Line
	5500 5050 5250 5050
Wire Wire Line
	5500 5150 5250 5150
Wire Wire Line
	5500 5250 5250 5250
Wire Wire Line
	6000 3550 6200 3550
Wire Wire Line
	5250 3650 5500 3650
Wire Wire Line
	6000 3650 6200 3650
Wire Wire Line
	5250 3750 5500 3750
Wire Wire Line
	6000 3750 6200 3750
Wire Wire Line
	5250 3850 5500 3850
Entry Wire Line
	5250 5250 5150 5150
Entry Wire Line
	5250 5150 5150 5050
Entry Wire Line
	5250 5050 5150 4950
Text Label 5450 4950 2    50   ~ 0
a15
Text Label 5450 4850 2    50   ~ 0
a14
Text Label 5450 4750 2    50   ~ 0
a13
Text Label 5450 4650 2    50   ~ 0
a12
Text Label 5450 4550 2    50   ~ 0
a11
Text Label 5450 4450 2    50   ~ 0
a10
Text Label 5450 4350 2    50   ~ 0
a9
Text Label 5450 4250 2    50   ~ 0
a8
Text Label 5450 4150 2    50   ~ 0
a7
Text Label 5450 4050 2    50   ~ 0
a6
Text Label 5450 3950 2    50   ~ 0
a5
Text Label 5450 3850 2    50   ~ 0
a4
Text Label 5450 3750 2    50   ~ 0
a3
Text Label 5450 3650 2    50   ~ 0
a2
Text Label 5450 3550 2    50   ~ 0
a1
Text Label 5450 3450 2    50   ~ 0
a0
Entry Wire Line
	5150 4850 5250 4950
Entry Wire Line
	5150 4750 5250 4850
Entry Wire Line
	5150 4650 5250 4750
Entry Wire Line
	5150 4550 5250 4650
Entry Wire Line
	5150 4450 5250 4550
Entry Wire Line
	5150 4350 5250 4450
Entry Wire Line
	5150 4250 5250 4350
Entry Wire Line
	5150 4150 5250 4250
Entry Wire Line
	5150 4050 5250 4150
Entry Wire Line
	5150 3950 5250 4050
Entry Wire Line
	5150 3850 5250 3950
Entry Wire Line
	5150 3750 5250 3850
Entry Wire Line
	5150 3650 5250 3750
Entry Wire Line
	5150 3550 5250 3650
Entry Wire Line
	5150 3450 5250 3550
Entry Wire Line
	5150 3350 5250 3450
Entry Wire Line
	6200 3450 6300 3550
Entry Wire Line
	6200 3550 6300 3650
Entry Wire Line
	6200 3650 6300 3750
Entry Wire Line
	6200 3750 6300 3850
Entry Wire Line
	6200 3850 6300 3950
Entry Wire Line
	6200 3950 6300 4050
Entry Wire Line
	6200 4050 6300 4150
Entry Wire Line
	6200 4150 6300 4250
Text Label 6100 4150 0    50   ~ 0
d7
Text Label 6100 4050 0    50   ~ 0
d6
Text Label 6100 3950 0    50   ~ 0
d5
Text Label 6100 3850 0    50   ~ 0
d4
Text Label 6100 3750 0    50   ~ 0
d3
Text Label 6100 3650 0    50   ~ 0
d2
Text Label 6100 3550 0    50   ~ 0
d1
Text Label 6100 3450 0    50   ~ 0
d0
Text GLabel 6000 4250 2    50   Input ~ 0
RW
Text GLabel 6000 4350 2    50   Input ~ 0
PHI2
Text GLabel 6000 4450 2    50   Input ~ 0
RESET
Text GLabel 6000 4550 2    50   Input ~ 0
SYNC
Text GLabel 6000 4650 2    50   Input ~ 0
IRQ
Text GLabel 6000 4750 2    50   Input ~ 0
BE
Text GLabel 6000 4850 2    50   Input ~ 0
RDY
Text GLabel 6000 4950 2    50   Input ~ 0
VP
Text GLabel 5150 3350 0    50   Input ~ 0
a[0..15]
Text GLabel 6300 3550 2    50   Input ~ 0
d[0..8]
Text GLabel 6000 5050 2    50   Input ~ 0
ML
$Comp
L power:+5V #PWR049
U 1 1 631D1DC0
P 3600 5350
F 0 "#PWR049" H 3600 5200 50  0001 C CNN
F 1 "+5V" H 3615 5523 50  0000 C CNN
F 2 "" H 3600 5350 50  0001 C CNN
F 3 "" H 3600 5350 50  0001 C CNN
	1    3600 5350
	0    -1   -1   0   
$EndComp
Text GLabel 3250 5000 0    50   Input ~ 0
dev[7..9]
Text Label 3600 5250 2    50   ~ 0
dev9
Text Label 3600 5150 2    50   ~ 0
dev8
Text Label 3600 5050 2    50   ~ 0
dev7
Text GLabel 4100 5250 2    50   Input ~ 0
PHI1O
Text GLabel 4100 5150 2    50   Input ~ 0
NMI
Wire Wire Line
	3350 3450 3600 3450
Wire Wire Line
	4100 3850 4300 3850
Wire Wire Line
	3350 3950 3600 3950
Wire Wire Line
	4100 3950 4300 3950
Wire Wire Line
	3350 4050 3600 4050
Wire Wire Line
	4100 4050 4300 4050
Wire Wire Line
	3350 4150 3600 4150
Wire Wire Line
	4100 4150 4300 4150
Wire Wire Line
	3350 4250 3600 4250
Wire Wire Line
	3350 4350 3600 4350
Wire Wire Line
	4100 3450 4300 3450
Wire Wire Line
	3350 4450 3600 4450
Wire Wire Line
	3350 4550 3600 4550
Wire Wire Line
	3350 4650 3600 4650
Wire Wire Line
	3350 4750 3600 4750
Wire Wire Line
	3350 4850 3600 4850
Wire Wire Line
	3350 3550 3600 3550
Wire Wire Line
	3350 4950 3600 4950
Wire Wire Line
	3600 5050 3350 5050
Wire Wire Line
	3600 5150 3350 5150
Wire Wire Line
	3600 5250 3350 5250
Wire Wire Line
	4100 3550 4300 3550
Wire Wire Line
	3350 3650 3600 3650
Wire Wire Line
	4100 3650 4300 3650
Wire Wire Line
	3350 3750 3600 3750
Wire Wire Line
	4100 3750 4300 3750
Wire Wire Line
	3350 3850 3600 3850
Entry Wire Line
	3350 5250 3250 5150
Entry Wire Line
	3350 5150 3250 5050
Entry Wire Line
	3350 5050 3250 4950
Text Label 3550 4950 2    50   ~ 0
a15
Text Label 3550 4850 2    50   ~ 0
a14
Text Label 3550 4750 2    50   ~ 0
a13
Text Label 3550 4650 2    50   ~ 0
a12
Text Label 3550 4550 2    50   ~ 0
a11
Text Label 3550 4450 2    50   ~ 0
a10
Text Label 3550 4350 2    50   ~ 0
a9
Text Label 3550 4250 2    50   ~ 0
a8
Text Label 3550 4150 2    50   ~ 0
a7
Text Label 3550 4050 2    50   ~ 0
a6
Text Label 3550 3950 2    50   ~ 0
a5
Text Label 3550 3850 2    50   ~ 0
a4
Text Label 3550 3750 2    50   ~ 0
a3
Text Label 3550 3650 2    50   ~ 0
a2
Text Label 3550 3550 2    50   ~ 0
a1
Text Label 3550 3450 2    50   ~ 0
a0
Entry Wire Line
	3250 4850 3350 4950
Entry Wire Line
	3250 4750 3350 4850
Entry Wire Line
	3250 4650 3350 4750
Entry Wire Line
	3250 4550 3350 4650
Entry Wire Line
	3250 4450 3350 4550
Entry Wire Line
	3250 4350 3350 4450
Entry Wire Line
	3250 4250 3350 4350
Entry Wire Line
	3250 4150 3350 4250
Entry Wire Line
	3250 4050 3350 4150
Entry Wire Line
	3250 3950 3350 4050
Entry Wire Line
	3250 3850 3350 3950
Entry Wire Line
	3250 3750 3350 3850
Entry Wire Line
	3250 3650 3350 3750
Entry Wire Line
	3250 3550 3350 3650
Entry Wire Line
	3250 3450 3350 3550
Entry Wire Line
	3250 3350 3350 3450
Entry Wire Line
	4300 3450 4400 3550
Entry Wire Line
	4300 3550 4400 3650
Entry Wire Line
	4300 3650 4400 3750
Entry Wire Line
	4300 3750 4400 3850
Entry Wire Line
	4300 3850 4400 3950
Entry Wire Line
	4300 3950 4400 4050
Entry Wire Line
	4300 4050 4400 4150
Entry Wire Line
	4300 4150 4400 4250
Text Label 4200 4150 0    50   ~ 0
d7
Text Label 4200 4050 0    50   ~ 0
d6
Text Label 4200 3950 0    50   ~ 0
d5
Text Label 4200 3850 0    50   ~ 0
d4
Text Label 4200 3750 0    50   ~ 0
d3
Text Label 4200 3650 0    50   ~ 0
d2
Text Label 4200 3550 0    50   ~ 0
d1
Text Label 4200 3450 0    50   ~ 0
d0
Text GLabel 4100 4250 2    50   Input ~ 0
RW
Text GLabel 4100 4350 2    50   Input ~ 0
PHI2
Text GLabel 4100 4450 2    50   Input ~ 0
RESET
Text GLabel 4100 4550 2    50   Input ~ 0
SYNC
Text GLabel 4100 4650 2    50   Input ~ 0
IRQ
Text GLabel 4100 4750 2    50   Input ~ 0
BE
Text GLabel 4100 4850 2    50   Input ~ 0
RDY
Text GLabel 4100 4950 2    50   Input ~ 0
VP
Text GLabel 3250 3350 0    50   Input ~ 0
a[0..15]
Text GLabel 4400 3550 2    50   Input ~ 0
d[0..8]
Text GLabel 4100 5050 2    50   Input ~ 0
ML
$Comp
L power:+5V #PWR069
U 1 1 63499AAE
P 1650 5350
F 0 "#PWR069" H 1650 5200 50  0001 C CNN
F 1 "+5V" H 1665 5523 50  0000 C CNN
F 2 "" H 1650 5350 50  0001 C CNN
F 3 "" H 1650 5350 50  0001 C CNN
	1    1650 5350
	0    -1   -1   0   
$EndComp
Text GLabel 1300 5000 0    50   Input ~ 0
dev[4..6]
Text Label 1650 5250 2    50   ~ 0
dev6
Text Label 1650 5150 2    50   ~ 0
dev5
Text Label 1650 5050 2    50   ~ 0
dev4
Text GLabel 2150 5250 2    50   Input ~ 0
PHI1O
Text GLabel 2150 5150 2    50   Input ~ 0
NMI
Wire Wire Line
	1400 3450 1650 3450
Wire Wire Line
	2150 3850 2350 3850
Wire Wire Line
	1400 3950 1650 3950
Wire Wire Line
	2150 3950 2350 3950
Wire Wire Line
	1400 4050 1650 4050
Wire Wire Line
	2150 4050 2350 4050
Wire Wire Line
	1400 4150 1650 4150
Wire Wire Line
	2150 4150 2350 4150
Wire Wire Line
	1400 4250 1650 4250
Wire Wire Line
	1400 4350 1650 4350
Wire Wire Line
	2150 3450 2350 3450
Wire Wire Line
	1400 4450 1650 4450
Wire Wire Line
	1400 4550 1650 4550
Wire Wire Line
	1400 4650 1650 4650
Wire Wire Line
	1400 4750 1650 4750
Wire Wire Line
	1400 4850 1650 4850
Wire Wire Line
	1400 3550 1650 3550
Wire Wire Line
	1400 4950 1650 4950
Wire Wire Line
	1650 5050 1400 5050
Wire Wire Line
	1650 5150 1400 5150
Wire Wire Line
	1650 5250 1400 5250
Wire Wire Line
	2150 3550 2350 3550
Wire Wire Line
	1400 3650 1650 3650
Wire Wire Line
	2150 3650 2350 3650
Wire Wire Line
	1400 3750 1650 3750
Wire Wire Line
	2150 3750 2350 3750
Wire Wire Line
	1400 3850 1650 3850
Entry Wire Line
	1400 5250 1300 5150
Entry Wire Line
	1400 5150 1300 5050
Entry Wire Line
	1400 5050 1300 4950
Text Label 1600 4950 2    50   ~ 0
a15
Text Label 1600 4850 2    50   ~ 0
a14
Text Label 1600 4750 2    50   ~ 0
a13
Text Label 1600 4650 2    50   ~ 0
a12
Text Label 1600 4550 2    50   ~ 0
a11
Text Label 1600 4450 2    50   ~ 0
a10
Text Label 1600 4350 2    50   ~ 0
a9
Text Label 1600 4250 2    50   ~ 0
a8
Text Label 1600 4150 2    50   ~ 0
a7
Text Label 1600 4050 2    50   ~ 0
a6
Text Label 1600 3950 2    50   ~ 0
a5
Text Label 1600 3850 2    50   ~ 0
a4
Text Label 1600 3750 2    50   ~ 0
a3
Text Label 1600 3650 2    50   ~ 0
a2
Text Label 1600 3550 2    50   ~ 0
a1
Text Label 1600 3450 2    50   ~ 0
a0
Entry Wire Line
	1300 4850 1400 4950
Entry Wire Line
	1300 4750 1400 4850
Entry Wire Line
	1300 4650 1400 4750
Entry Wire Line
	1300 4550 1400 4650
Entry Wire Line
	1300 4450 1400 4550
Entry Wire Line
	1300 4350 1400 4450
Entry Wire Line
	1300 4250 1400 4350
Entry Wire Line
	1300 4150 1400 4250
Entry Wire Line
	1300 4050 1400 4150
Entry Wire Line
	1300 3950 1400 4050
Entry Wire Line
	1300 3850 1400 3950
Entry Wire Line
	1300 3750 1400 3850
Entry Wire Line
	1300 3650 1400 3750
Entry Wire Line
	1300 3550 1400 3650
Entry Wire Line
	1300 3450 1400 3550
Entry Wire Line
	1300 3350 1400 3450
Entry Wire Line
	2350 3450 2450 3550
Entry Wire Line
	2350 3550 2450 3650
Entry Wire Line
	2350 3650 2450 3750
Entry Wire Line
	2350 3750 2450 3850
Entry Wire Line
	2350 3850 2450 3950
Entry Wire Line
	2350 3950 2450 4050
Entry Wire Line
	2350 4050 2450 4150
Entry Wire Line
	2350 4150 2450 4250
Text Label 2250 4150 0    50   ~ 0
d7
Text Label 2250 4050 0    50   ~ 0
d6
Text Label 2250 3950 0    50   ~ 0
d5
Text Label 2250 3850 0    50   ~ 0
d4
Text Label 2250 3750 0    50   ~ 0
d3
Text Label 2250 3650 0    50   ~ 0
d2
Text Label 2250 3550 0    50   ~ 0
d1
Text Label 2250 3450 0    50   ~ 0
d0
Text GLabel 2150 4250 2    50   Input ~ 0
RW
Text GLabel 2150 4350 2    50   Input ~ 0
PHI2
Text GLabel 2150 4450 2    50   Input ~ 0
RESET
Text GLabel 2150 4550 2    50   Input ~ 0
SYNC
Text GLabel 2150 4650 2    50   Input ~ 0
IRQ
Text GLabel 2150 4750 2    50   Input ~ 0
BE
Text GLabel 2150 4850 2    50   Input ~ 0
RDY
Text GLabel 2150 4950 2    50   Input ~ 0
VP
Text GLabel 1300 3350 0    50   Input ~ 0
a[0..15]
Text GLabel 2450 3550 2    50   Input ~ 0
d[0..8]
Text GLabel 2150 5050 2    50   Input ~ 0
ML
Wire Wire Line
	4100 6050 4350 6050
Wire Wire Line
	4100 6150 4350 6150
Text Label 4150 6050 0    50   ~ 0
dev2
$Comp
L Connector_Generic:Conn_01x02 J13
U 1 1 6321103B
P 4550 6050
F 0 "J13" H 4630 6042 50  0000 L CNN
F 1 "Conn_01x02" H 4630 5951 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 4550 6050 50  0001 C CNN
F 3 "~" H 4550 6050 50  0001 C CNN
	1    4550 6050
	1    0    0    -1  
$EndComp
Text Label 4150 6150 0    50   ~ 0
dev3
Entry Wire Line
	4000 5950 4100 6050
Entry Wire Line
	4000 6050 4100 6150
Wire Bus Line
	4000 5950 4000 6050
$Comp
L power:GND #PWR066
U 1 1 631F8358
P 7850 5450
F 0 "#PWR066" H 7850 5200 50  0001 C CNN
F 1 "GND" H 7855 5277 50  0000 C CNN
F 2 "" H 7850 5450 50  0001 C CNN
F 3 "" H 7850 5450 50  0001 C CNN
	1    7850 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR065
U 1 1 631F834C
P 7850 5350
F 0 "#PWR065" H 7850 5200 50  0001 C CNN
F 1 "+5V" H 7865 5523 50  0000 C CNN
F 2 "" H 7850 5350 50  0001 C CNN
F 3 "" H 7850 5350 50  0001 C CNN
	1    7850 5350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR059
U 1 1 631E4DC4
P 6000 5450
F 0 "#PWR059" H 6000 5200 50  0001 C CNN
F 1 "GND" H 6005 5277 50  0000 C CNN
F 2 "" H 6000 5450 50  0001 C CNN
F 3 "" H 6000 5450 50  0001 C CNN
	1    6000 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR055
U 1 1 631E4DB8
P 6000 5350
F 0 "#PWR055" H 6000 5200 50  0001 C CNN
F 1 "+5V" H 6015 5523 50  0000 C CNN
F 2 "" H 6000 5350 50  0001 C CNN
F 3 "" H 6000 5350 50  0001 C CNN
	1    6000 5350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR052
U 1 1 631D1DC6
P 4100 5450
F 0 "#PWR052" H 4100 5200 50  0001 C CNN
F 1 "GND" H 4105 5277 50  0000 C CNN
F 2 "" H 4100 5450 50  0001 C CNN
F 3 "" H 4100 5450 50  0001 C CNN
	1    4100 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR051
U 1 1 631D1DBA
P 4100 5350
F 0 "#PWR051" H 4100 5200 50  0001 C CNN
F 1 "+5V" H 4115 5523 50  0000 C CNN
F 2 "" H 4100 5350 50  0001 C CNN
F 3 "" H 4100 5350 50  0001 C CNN
	1    4100 5350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR063
U 1 1 63360F6A
P 2150 5450
F 0 "#PWR063" H 2150 5200 50  0001 C CNN
F 1 "GND" H 2155 5277 50  0000 C CNN
F 2 "" H 2150 5450 50  0001 C CNN
F 3 "" H 2150 5450 50  0001 C CNN
	1    2150 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR070
U 1 1 63499170
P 2150 5350
F 0 "#PWR070" H 2150 5200 50  0001 C CNN
F 1 "+5V" H 2165 5523 50  0000 C CNN
F 2 "" H 2150 5350 50  0001 C CNN
F 3 "" H 2150 5350 50  0001 C CNN
	1    2150 5350
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x21_Odd_Even J14
U 1 1 631F8364
P 7550 4450
F 0 "J14" H 7600 5667 50  0000 C CNN
F 1 "Conn_02x21_Odd_Even" H 7600 5576 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x21_P1.27mm_Vertical" H 7550 4450 50  0001 C CNN
F 3 "~" H 7550 4450 50  0001 C CNN
	1    7550 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x21_Odd_Even J10
U 1 1 631E4DD0
P 5700 4450
F 0 "J10" H 5750 5667 50  0000 C CNN
F 1 "Conn_02x21_Odd_Even" H 5750 5576 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x21_P1.27mm_Vertical" H 5700 4450 50  0001 C CNN
F 3 "~" H 5700 4450 50  0001 C CNN
	1    5700 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x21_Odd_Even J6
U 1 1 631D1DD2
P 3800 4450
F 0 "J6" H 3850 5667 50  0000 C CNN
F 1 "Conn_02x21_Odd_Even" H 3850 5576 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x21_P1.27mm_Vertical" H 3800 4450 50  0001 C CNN
F 3 "~" H 3800 4450 50  0001 C CNN
	1    3800 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x21_Odd_Even J2
U 1 1 630D8C84
P 1850 4450
F 0 "J2" H 1900 5667 50  0000 C CNN
F 1 "Conn_02x21_Odd_Even" H 1900 5576 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x21_P1.27mm_Vertical" H 1850 4450 50  0001 C CNN
F 3 "~" H 1850 4450 50  0001 C CNN
	1    1850 4450
	1    0    0    -1  
$EndComp
Wire Bus Line
	1300 4950 1300 5150
Wire Bus Line
	3250 4950 3250 5150
Wire Bus Line
	5150 4950 5150 5150
Wire Bus Line
	7000 4950 7000 5150
Wire Bus Line
	2500 650  2500 1050
Wire Bus Line
	1000 650  1000 1350
Wire Bus Line
	1000 1550 1000 2250
Wire Bus Line
	8150 3550 8150 4250
Wire Bus Line
	6300 3550 6300 4250
Wire Bus Line
	4400 3550 4400 4250
Wire Bus Line
	2450 3550 2450 4250
Wire Bus Line
	7000 3350 7000 4850
Wire Bus Line
	5150 3350 5150 4850
Wire Bus Line
	3250 3350 3250 4850
Wire Bus Line
	1300 3350 1300 4850
$EndSCHEMATC
