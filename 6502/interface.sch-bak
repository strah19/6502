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
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 6226BD03
P 7000 2450
AR Path="/6226BD03" Ref="J?"  Part="1" 
AR Path="/62243A53/6226BD03" Ref="J9"  Part="1" 
F 0 "J9" H 7080 2442 50  0000 L CNN
F 1 "Conn_01x08" H 7080 2351 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x08_P1.27mm_Vertical" H 7000 2450 50  0001 C CNN
F 3 "~" H 7000 2450 50  0001 C CNN
	1    7000 2450
	1    0    0    -1  
$EndComp
Text GLabel 6800 2150 0    50   Input ~ 0
1CB1
Text GLabel 6800 2250 0    50   Input ~ 0
1CB2
Text GLabel 6800 2350 0    50   Input ~ 0
1CA1
Text GLabel 6800 2450 0    50   Input ~ 0
1CA2
Text GLabel 6800 2550 0    50   Input ~ 0
2CB1
Text GLabel 6800 2650 0    50   Input ~ 0
2CB2
Text GLabel 6800 2750 0    50   Input ~ 0
2CA1
Text GLabel 6800 2850 0    50   Input ~ 0
2CA2
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
F 2 "" H 6600 1600 50  0001 C CNN
F 3 "http://service.powerdynamics.com/ec/Catalog17/Section%2011.pdf" H 6600 1600 50  0001 C CNN
	1    6600 1600
	1    0    0    -1  
$EndComp
NoConn ~ 6300 1700
NoConn ~ 6300 1500
$Comp
L Connector:AudioJack2 J10
U 1 1 62F1A817
P 5300 1550
F 0 "J10" H 5332 1875 50  0000 C CNN
F 1 "AudioJack2" H 5332 1784 50  0000 C CNN
F 2 "" H 5300 1550 50  0001 C CNN
F 3 "~" H 5300 1550 50  0001 C CNN
	1    5300 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR054
U 1 1 62F1ADA7
P 5850 1450
F 0 "#PWR054" H 5850 1200 50  0001 C CNN
F 1 "GND" H 5855 1277 50  0000 C CNN
F 2 "" H 5850 1450 50  0001 C CNN
F 3 "" H 5850 1450 50  0001 C CNN
	1    5850 1450
	1    0    0    -1  
$EndComp
Text GLabel 5500 1550 3    50   Input ~ 0
AUDIO_OUT
$Comp
L Connector:Jack-DC J?
U 1 1 62F58ACC
P 8000 1550
AR Path="/62F58ACC" Ref="J?"  Part="1" 
AR Path="/62243A53/62F58ACC" Ref="J12"  Part="1" 
F 0 "J12" H 8057 1875 50  0000 C CNN
F 1 "Jack-DC" H 8057 1784 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 8050 1510 50  0001 C CNN
F 3 "~" H 8050 1510 50  0001 C CNN
	1    8000 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62F58AD2
P 8300 1650
AR Path="/62F58AD2" Ref="#PWR?"  Part="1" 
AR Path="/62243A53/62F58AD2" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 8300 1400 50  0001 C CNN
F 1 "GND" H 8305 1477 50  0000 C CNN
F 2 "" H 8300 1650 50  0001 C CNN
F 3 "" H 8300 1650 50  0001 C CNN
	1    8300 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62F58AD8
P 8300 1450
AR Path="/62F58AD8" Ref="#PWR?"  Part="1" 
AR Path="/62243A53/62F58AD8" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 8300 1300 50  0001 C CNN
F 1 "+5V" V 8315 1578 50  0000 L CNN
F 2 "" H 8300 1450 50  0001 C CNN
F 3 "" H 8300 1450 50  0001 C CNN
	1    8300 1450
	0    1    1    0   
$EndComp
$Comp
L Connector:DB9_Female J1
U 1 1 62F5EEAC
P 8050 2600
F 0 "J1" H 8230 2646 50  0000 L CNN
F 1 "DB9_Female" H 8230 2555 50  0000 L CNN
F 2 "" H 8050 2600 50  0001 C CNN
F 3 " ~" H 8050 2600 50  0001 C CNN
	1    8050 2600
	1    0    0    -1  
$EndComp
Text GLabel 7750 2200 0    50   Input ~ 0
DCD
Text GLabel 7750 2400 0    50   Input ~ 0
TxD
Text GLabel 7750 2600 0    50   Input ~ 0
RxD
Text GLabel 7750 2800 0    50   Input ~ 0
DTR
$Comp
L power:GND #PWR033
U 1 1 62F6729D
P 7750 3000
F 0 "#PWR033" H 7750 2750 50  0001 C CNN
F 1 "GND" H 7755 2827 50  0000 C CNN
F 2 "" H 7750 3000 50  0001 C CNN
F 3 "" H 7750 3000 50  0001 C CNN
	1    7750 3000
	1    0    0    -1  
$EndComp
Text GLabel 7750 2300 0    50   Input ~ 0
DSR
Text GLabel 7750 2500 0    50   Input ~ 0
RTS
Text GLabel 7750 2700 0    50   Input ~ 0
CTS
Text GLabel 7750 2900 0    50   Input ~ 0
RI
$Comp
L Connector_Generic:Conn_01x05 J8
U 1 1 63047F58
P 3150 950
F 0 "J8" H 3230 992 50  0000 L CNN
F 1 "Conn_01x05" H 3230 901 50  0000 L CNN
F 2 "" H 3150 950 50  0001 C CNN
F 3 "~" H 3150 950 50  0001 C CNN
	1    3150 950 
	1    0    0    -1  
$EndComp
Entry Wire Line
	2500 1050 2600 1150
Text Label 2900 1150 2    50   ~ 0
decode4
Text Label 6900 1700 0    50   ~ 0
1pa4
Entry Wire Line
	7100 1500 7200 1600
Entry Wire Line
	7100 1700 7200 1800
Text Label 6900 1500 0    50   ~ 0
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
L power:PWR_FLAG #FLG02
U 1 1 635886B8
P 8300 1350
F 0 "#FLG02" H 8300 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 8300 1523 50  0000 C CNN
F 2 "" H 8300 1350 50  0001 C CNN
F 3 "~" H 8300 1350 50  0001 C CNN
	1    8300 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J7
U 1 1 639D01CD
P 9200 3350
F 0 "J7" H 9280 3342 50  0000 L CNN
F 1 "Conn_01x06" H 9280 3251 50  0000 L CNN
F 2 "" H 9200 3350 50  0001 C CNN
F 3 "~" H 9200 3350 50  0001 C CNN
	1    9200 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 639D1BD5
P 9000 3650
F 0 "#PWR0102" H 9000 3400 50  0001 C CNN
F 1 "GND" H 9005 3477 50  0000 C CNN
F 2 "" H 9000 3650 50  0001 C CNN
F 3 "" H 9000 3650 50  0001 C CNN
	1    9000 3650
	1    0    0    -1  
$EndComp
Text GLabel 9000 3550 0    50   Input ~ 0
RTS
Text GLabel 9000 3350 0    50   Input ~ 0
RxD
Text GLabel 9000 3250 0    50   Input ~ 0
TxD
$Comp
L power:GND #PWR0103
U 1 1 639D240E
P 9000 3150
F 0 "#PWR0103" H 9000 2900 50  0001 C CNN
F 1 "GND" H 9005 2977 50  0000 C CNN
F 2 "" H 9000 3150 50  0001 C CNN
F 3 "" H 9000 3150 50  0001 C CNN
	1    9000 3150
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 639D5AD4
P 8750 3450
F 0 "#PWR0104" H 8750 3300 50  0001 C CNN
F 1 "+5V" H 8765 3623 50  0000 C CNN
F 2 "" H 8750 3450 50  0001 C CNN
F 3 "" H 8750 3450 50  0001 C CNN
	1    8750 3450
	0    -1   -1   0   
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
F 2 "" H 4400 850 50  0001 C CNN
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
	5500 1450 5850 1450
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
	8300 1350 8300 1450
Connection ~ 8300 1450
Wire Wire Line
	8750 3450 9000 3450
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
L Connector_Generic:Conn_01x02 J17
U 1 1 6300F15C
P 6050 3100
F 0 "J17" H 6130 3092 50  0000 L CNN
F 1 "Conn_01x02" H 6130 3001 50  0000 L CNN
F 2 "" H 6050 3100 50  0001 C CNN
F 3 "~" H 6050 3100 50  0001 C CNN
	1    6050 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR057
U 1 1 62EF54DD
P 5850 3100
F 0 "#PWR057" H 5850 2950 50  0001 C CNN
F 1 "+5V" H 5865 3273 50  0000 C CNN
F 2 "" H 5850 3100 50  0001 C CNN
F 3 "" H 5850 3100 50  0001 C CNN
	1    5850 3100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR058
U 1 1 62EF4B72
P 5850 3200
F 0 "#PWR058" H 5850 2950 50  0001 C CNN
F 1 "GND" H 5855 3027 50  0000 C CNN
F 2 "" H 5850 3200 50  0001 C CNN
F 3 "" H 5850 3200 50  0001 C CNN
	1    5850 3200
	1    0    0    -1  
$EndComp
Text GLabel 9000 2800 0    50   Input ~ 0
RI
Text GLabel 9000 2700 0    50   Input ~ 0
DTR
Text GLabel 9000 2600 0    50   Input ~ 0
CTS
Text GLabel 9000 2500 0    50   Input ~ 0
RxD
Text GLabel 9000 2400 0    50   Input ~ 0
RTS
Text GLabel 9000 2300 0    50   Input ~ 0
TxD
Text GLabel 9000 2200 0    50   Input ~ 0
DSR
Text GLabel 9000 2100 0    50   Input ~ 0
DCD
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 62F68A87
P 9200 2400
AR Path="/62F68A87" Ref="J?"  Part="1" 
AR Path="/62243A53/62F68A87" Ref="J13"  Part="1" 
F 0 "J13" H 9280 2392 50  0000 L CNN
F 1 "Conn_01x08" H 9280 2301 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x08_P1.27mm_Vertical" H 9200 2400 50  0001 C CNN
F 3 "~" H 9200 2400 50  0001 C CNN
	1    9200 2400
	1    0    0    -1  
$EndComp
Text GLabel 4150 6700 2    50   Input ~ 0
RTC_SWQ
Text GLabel 4150 6600 2    50   Input ~ 0
ML
Text GLabel 4150 6800 2    50   Input ~ 0
RTC_PWR
Text GLabel 3300 6550 0    50   Input ~ 0
dev[13..15]
Text GLabel 4450 5100 2    50   Input ~ 0
d[0..8]
Text GLabel 3300 4900 0    50   Input ~ 0
a[0..15]
$Comp
L power:GND #PWR068
U 1 1 63360E17
P 4150 7100
F 0 "#PWR068" H 4150 6850 50  0001 C CNN
F 1 "GND" H 4155 6927 50  0000 C CNN
F 2 "" H 4150 7100 50  0001 C CNN
F 3 "" H 4150 7100 50  0001 C CNN
	1    4150 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR066
U 1 1 63360E1D
P 3650 7100
F 0 "#PWR066" H 3650 6850 50  0001 C CNN
F 1 "GND" H 3655 6927 50  0000 C CNN
F 2 "" H 3650 7100 50  0001 C CNN
F 3 "" H 3650 7100 50  0001 C CNN
	1    3650 7100
	1    0    0    -1  
$EndComp
Text GLabel 4150 6500 2    50   Input ~ 0
VP
Text GLabel 4150 6400 2    50   Input ~ 0
RDY
Text GLabel 4150 6300 2    50   Input ~ 0
BE
Text GLabel 4150 6200 2    50   Input ~ 0
IRQ
Text GLabel 4150 6100 2    50   Input ~ 0
SYNC
Text GLabel 4150 6000 2    50   Input ~ 0
RESET
Text GLabel 4150 5900 2    50   Input ~ 0
PHI2
Text GLabel 4150 5800 2    50   Input ~ 0
RW
Wire Wire Line
	4150 5700 4350 5700
Wire Wire Line
	4150 5600 4350 5600
Wire Wire Line
	4150 5500 4350 5500
Wire Wire Line
	4150 5400 4350 5400
Wire Wire Line
	4150 5300 4350 5300
Wire Wire Line
	4150 5200 4350 5200
Wire Wire Line
	4150 5100 4350 5100
Wire Wire Line
	4150 5000 4350 5000
Text Label 4250 5000 0    50   ~ 0
d0
Text Label 4250 5100 0    50   ~ 0
d1
Text Label 4250 5200 0    50   ~ 0
d2
Text Label 4250 5300 0    50   ~ 0
d3
Text Label 4250 5400 0    50   ~ 0
d4
Text Label 4250 5500 0    50   ~ 0
d5
Text Label 4250 5600 0    50   ~ 0
d6
Text Label 4250 5700 0    50   ~ 0
d7
Entry Wire Line
	4350 5700 4450 5800
Entry Wire Line
	4350 5600 4450 5700
Entry Wire Line
	4350 5500 4450 5600
Entry Wire Line
	4350 5400 4450 5500
Entry Wire Line
	4350 5300 4450 5400
Entry Wire Line
	4350 5200 4450 5300
Entry Wire Line
	4350 5100 4450 5200
Entry Wire Line
	4350 5000 4450 5100
Entry Wire Line
	3300 4900 3400 5000
Entry Wire Line
	3300 5000 3400 5100
Entry Wire Line
	3300 5100 3400 5200
Entry Wire Line
	3300 5200 3400 5300
Entry Wire Line
	3300 5300 3400 5400
Entry Wire Line
	3300 5400 3400 5500
Entry Wire Line
	3300 5500 3400 5600
Entry Wire Line
	3300 5600 3400 5700
Entry Wire Line
	3300 5700 3400 5800
Entry Wire Line
	3300 5800 3400 5900
Entry Wire Line
	3300 5900 3400 6000
Entry Wire Line
	3300 6000 3400 6100
Entry Wire Line
	3300 6100 3400 6200
Entry Wire Line
	3300 6200 3400 6300
Entry Wire Line
	3300 6300 3400 6400
Entry Wire Line
	3300 6400 3400 6500
Wire Wire Line
	3400 5000 3650 5000
Wire Wire Line
	3400 5100 3650 5100
Wire Wire Line
	3400 5200 3650 5200
Wire Wire Line
	3400 5300 3650 5300
Wire Wire Line
	3400 5400 3650 5400
Wire Wire Line
	3400 5500 3650 5500
Wire Wire Line
	3400 5600 3650 5600
Wire Wire Line
	3400 5700 3650 5700
Wire Wire Line
	3400 5800 3650 5800
Wire Wire Line
	3400 5900 3650 5900
Wire Wire Line
	3400 6000 3650 6000
Wire Wire Line
	3400 6100 3650 6100
Wire Wire Line
	3400 6200 3650 6200
Wire Wire Line
	3400 6300 3650 6300
Wire Wire Line
	3400 6400 3650 6400
Wire Wire Line
	3400 6500 3650 6500
Text Label 3600 5000 2    50   ~ 0
a0
Text Label 3600 5100 2    50   ~ 0
a1
Text Label 3600 5200 2    50   ~ 0
a2
Text Label 3600 5300 2    50   ~ 0
a3
Text Label 3600 5400 2    50   ~ 0
a4
Text Label 3600 5500 2    50   ~ 0
a5
Text Label 3600 5600 2    50   ~ 0
a6
Text Label 3600 5700 2    50   ~ 0
a7
Text Label 3600 5800 2    50   ~ 0
a8
Text Label 3600 5900 2    50   ~ 0
a9
Text Label 3600 6000 2    50   ~ 0
a10
Text Label 3600 6100 2    50   ~ 0
a11
Text Label 3600 6200 2    50   ~ 0
a12
Text Label 3600 6300 2    50   ~ 0
a13
Text Label 3600 6400 2    50   ~ 0
a14
Text Label 3600 6500 2    50   ~ 0
a15
Wire Wire Line
	3650 6800 3400 6800
Text Label 3650 6600 2    50   ~ 0
dev13
Text Label 3650 6700 2    50   ~ 0
dev14
Text Label 3650 6800 2    50   ~ 0
dev15
Wire Wire Line
	3650 6600 3400 6600
Wire Wire Line
	3650 6700 3400 6700
Entry Wire Line
	3400 6600 3300 6500
Entry Wire Line
	3400 6700 3300 6600
Entry Wire Line
	3400 6800 3300 6700
Text GLabel 2100 6700 2    50   Input ~ 0
RTC_SWQ
Text GLabel 2100 6600 2    50   Input ~ 0
ML
Text GLabel 2100 6800 2    50   Input ~ 0
RTC_PWR
Text GLabel 1250 6550 0    50   Input ~ 0
dev[10..12]
Text GLabel 2400 5100 2    50   Input ~ 0
d[0..8]
Text GLabel 1250 4900 0    50   Input ~ 0
a[0..15]
$Comp
L power:GND #PWR064
U 1 1 63360E88
P 2100 7100
F 0 "#PWR064" H 2100 6850 50  0001 C CNN
F 1 "GND" H 2105 6927 50  0000 C CNN
F 2 "" H 2100 7100 50  0001 C CNN
F 3 "" H 2100 7100 50  0001 C CNN
	1    2100 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR062
U 1 1 63360E8E
P 1600 7100
F 0 "#PWR062" H 1600 6850 50  0001 C CNN
F 1 "GND" H 1605 6927 50  0000 C CNN
F 2 "" H 1600 7100 50  0001 C CNN
F 3 "" H 1600 7100 50  0001 C CNN
	1    1600 7100
	1    0    0    -1  
$EndComp
Text GLabel 2100 6500 2    50   Input ~ 0
VP
Text GLabel 2100 6400 2    50   Input ~ 0
RDY
Text GLabel 2100 6300 2    50   Input ~ 0
BE
Text GLabel 2100 6200 2    50   Input ~ 0
IRQ
Text GLabel 2100 6100 2    50   Input ~ 0
SYNC
Text GLabel 2100 6000 2    50   Input ~ 0
RESET
Text GLabel 2100 5900 2    50   Input ~ 0
PHI2
Text GLabel 2100 5800 2    50   Input ~ 0
RW
Wire Wire Line
	2100 5700 2300 5700
Wire Wire Line
	2100 5600 2300 5600
Wire Wire Line
	2100 5500 2300 5500
Wire Wire Line
	2100 5400 2300 5400
Wire Wire Line
	2100 5300 2300 5300
Wire Wire Line
	2100 5200 2300 5200
Wire Wire Line
	2100 5100 2300 5100
Wire Wire Line
	2100 5000 2300 5000
Text Label 2200 5000 0    50   ~ 0
d0
Text Label 2200 5100 0    50   ~ 0
d1
Text Label 2200 5200 0    50   ~ 0
d2
Text Label 2200 5300 0    50   ~ 0
d3
Text Label 2200 5400 0    50   ~ 0
d4
Text Label 2200 5500 0    50   ~ 0
d5
Text Label 2200 5600 0    50   ~ 0
d6
Text Label 2200 5700 0    50   ~ 0
d7
Entry Wire Line
	2300 5700 2400 5800
Entry Wire Line
	2300 5600 2400 5700
Entry Wire Line
	2300 5500 2400 5600
Entry Wire Line
	2300 5400 2400 5500
Entry Wire Line
	2300 5300 2400 5400
Entry Wire Line
	2300 5200 2400 5300
Entry Wire Line
	2300 5100 2400 5200
Entry Wire Line
	2300 5000 2400 5100
Entry Wire Line
	1250 4900 1350 5000
Entry Wire Line
	1250 5000 1350 5100
Entry Wire Line
	1250 5100 1350 5200
Entry Wire Line
	1250 5200 1350 5300
Entry Wire Line
	1250 5300 1350 5400
Entry Wire Line
	1250 5400 1350 5500
Entry Wire Line
	1250 5500 1350 5600
Entry Wire Line
	1250 5600 1350 5700
Entry Wire Line
	1250 5700 1350 5800
Entry Wire Line
	1250 5800 1350 5900
Entry Wire Line
	1250 5900 1350 6000
Entry Wire Line
	1250 6000 1350 6100
Entry Wire Line
	1250 6100 1350 6200
Entry Wire Line
	1250 6200 1350 6300
Entry Wire Line
	1250 6300 1350 6400
Entry Wire Line
	1250 6400 1350 6500
Wire Wire Line
	1350 5000 1600 5000
Wire Wire Line
	1350 5100 1600 5100
Wire Wire Line
	1350 5200 1600 5200
Wire Wire Line
	1350 5300 1600 5300
Wire Wire Line
	1350 5400 1600 5400
Wire Wire Line
	1350 5500 1600 5500
Wire Wire Line
	1350 5600 1600 5600
Wire Wire Line
	1350 5700 1600 5700
Wire Wire Line
	1350 5800 1600 5800
Wire Wire Line
	1350 5900 1600 5900
Wire Wire Line
	1350 6000 1600 6000
Wire Wire Line
	1350 6100 1600 6100
Wire Wire Line
	1350 6200 1600 6200
Wire Wire Line
	1350 6300 1600 6300
Wire Wire Line
	1350 6400 1600 6400
Wire Wire Line
	1350 6500 1600 6500
Text Label 1550 5000 2    50   ~ 0
a0
Text Label 1550 5100 2    50   ~ 0
a1
Text Label 1550 5200 2    50   ~ 0
a2
Text Label 1550 5300 2    50   ~ 0
a3
Text Label 1550 5400 2    50   ~ 0
a4
Text Label 1550 5500 2    50   ~ 0
a5
Text Label 1550 5600 2    50   ~ 0
a6
Text Label 1550 5700 2    50   ~ 0
a7
Text Label 1550 5800 2    50   ~ 0
a8
Text Label 1550 5900 2    50   ~ 0
a9
Text Label 1550 6000 2    50   ~ 0
a10
Text Label 1550 6100 2    50   ~ 0
a11
Text Label 1550 6200 2    50   ~ 0
a12
Text Label 1550 6300 2    50   ~ 0
a13
Text Label 1550 6400 2    50   ~ 0
a14
Text Label 1550 6500 2    50   ~ 0
a15
Wire Wire Line
	1600 6800 1350 6800
Text Label 1600 6600 2    50   ~ 0
dev10
Text Label 1600 6700 2    50   ~ 0
dev11
Text Label 1600 6800 2    50   ~ 0
dev12
Wire Wire Line
	1600 6600 1350 6600
Wire Wire Line
	1600 6700 1350 6700
Entry Wire Line
	1350 6600 1250 6500
Entry Wire Line
	1350 6700 1250 6600
Entry Wire Line
	1350 6800 1250 6700
Text GLabel 4150 3950 2    50   Input ~ 0
RTC_SWQ
Text GLabel 4150 3850 2    50   Input ~ 0
ML
Text GLabel 4150 4050 2    50   Input ~ 0
RTC_PWR
Text GLabel 3300 3800 0    50   Input ~ 0
dev[7..9]
Text GLabel 4450 2350 2    50   Input ~ 0
d[0..8]
Text GLabel 3300 2150 0    50   Input ~ 0
a[0..15]
$Comp
L power:GND #PWR067
U 1 1 63360EF9
P 4150 4350
F 0 "#PWR067" H 4150 4100 50  0001 C CNN
F 1 "GND" H 4155 4177 50  0000 C CNN
F 2 "" H 4150 4350 50  0001 C CNN
F 3 "" H 4150 4350 50  0001 C CNN
	1    4150 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR065
U 1 1 63360EFF
P 3650 4350
F 0 "#PWR065" H 3650 4100 50  0001 C CNN
F 1 "GND" H 3655 4177 50  0000 C CNN
F 2 "" H 3650 4350 50  0001 C CNN
F 3 "" H 3650 4350 50  0001 C CNN
	1    3650 4350
	1    0    0    -1  
$EndComp
Text GLabel 4150 3750 2    50   Input ~ 0
VP
Text GLabel 4150 3650 2    50   Input ~ 0
RDY
Text GLabel 4150 3550 2    50   Input ~ 0
BE
Text GLabel 4150 3450 2    50   Input ~ 0
IRQ
Text GLabel 4150 3350 2    50   Input ~ 0
SYNC
Text GLabel 4150 3250 2    50   Input ~ 0
RESET
Text GLabel 4150 3150 2    50   Input ~ 0
PHI2
Text GLabel 4150 3050 2    50   Input ~ 0
RW
Wire Wire Line
	4150 2950 4350 2950
Wire Wire Line
	4150 2850 4350 2850
Wire Wire Line
	4150 2750 4350 2750
Wire Wire Line
	4150 2650 4350 2650
Wire Wire Line
	4150 2550 4350 2550
Wire Wire Line
	4150 2450 4350 2450
Wire Wire Line
	4150 2350 4350 2350
Wire Wire Line
	4150 2250 4350 2250
Text Label 4250 2250 0    50   ~ 0
d0
Text Label 4250 2350 0    50   ~ 0
d1
Text Label 4250 2450 0    50   ~ 0
d2
Text Label 4250 2550 0    50   ~ 0
d3
Text Label 4250 2650 0    50   ~ 0
d4
Text Label 4250 2750 0    50   ~ 0
d5
Text Label 4250 2850 0    50   ~ 0
d6
Text Label 4250 2950 0    50   ~ 0
d7
Entry Wire Line
	4350 2950 4450 3050
Entry Wire Line
	4350 2850 4450 2950
Entry Wire Line
	4350 2750 4450 2850
Entry Wire Line
	4350 2650 4450 2750
Entry Wire Line
	4350 2550 4450 2650
Entry Wire Line
	4350 2450 4450 2550
Entry Wire Line
	4350 2350 4450 2450
Entry Wire Line
	4350 2250 4450 2350
Entry Wire Line
	3300 2150 3400 2250
Entry Wire Line
	3300 2250 3400 2350
Entry Wire Line
	3300 2350 3400 2450
Entry Wire Line
	3300 2450 3400 2550
Entry Wire Line
	3300 2550 3400 2650
Entry Wire Line
	3300 2650 3400 2750
Entry Wire Line
	3300 2750 3400 2850
Entry Wire Line
	3300 2850 3400 2950
Entry Wire Line
	3300 2950 3400 3050
Entry Wire Line
	3300 3050 3400 3150
Entry Wire Line
	3300 3150 3400 3250
Entry Wire Line
	3300 3250 3400 3350
Entry Wire Line
	3300 3350 3400 3450
Entry Wire Line
	3300 3450 3400 3550
Entry Wire Line
	3300 3550 3400 3650
Entry Wire Line
	3300 3650 3400 3750
Wire Wire Line
	3400 2250 3650 2250
Wire Wire Line
	3400 2350 3650 2350
Wire Wire Line
	3400 2450 3650 2450
Wire Wire Line
	3400 2550 3650 2550
Wire Wire Line
	3400 2650 3650 2650
Wire Wire Line
	3400 2750 3650 2750
Wire Wire Line
	3400 2850 3650 2850
Wire Wire Line
	3400 2950 3650 2950
Wire Wire Line
	3400 3050 3650 3050
Wire Wire Line
	3400 3150 3650 3150
Wire Wire Line
	3400 3250 3650 3250
Wire Wire Line
	3400 3350 3650 3350
Wire Wire Line
	3400 3450 3650 3450
Wire Wire Line
	3400 3550 3650 3550
Wire Wire Line
	3400 3650 3650 3650
Wire Wire Line
	3400 3750 3650 3750
Text Label 3600 2250 2    50   ~ 0
a0
Text Label 3600 2350 2    50   ~ 0
a1
Text Label 3600 2450 2    50   ~ 0
a2
Text Label 3600 2550 2    50   ~ 0
a3
Text Label 3600 2650 2    50   ~ 0
a4
Text Label 3600 2750 2    50   ~ 0
a5
Text Label 3600 2850 2    50   ~ 0
a6
Text Label 3600 2950 2    50   ~ 0
a7
Text Label 3600 3050 2    50   ~ 0
a8
Text Label 3600 3150 2    50   ~ 0
a9
Text Label 3600 3250 2    50   ~ 0
a10
Text Label 3600 3350 2    50   ~ 0
a11
Text Label 3600 3450 2    50   ~ 0
a12
Text Label 3600 3550 2    50   ~ 0
a13
Text Label 3600 3650 2    50   ~ 0
a14
Text Label 3600 3750 2    50   ~ 0
a15
Wire Wire Line
	3650 4050 3400 4050
Text Label 3650 3850 2    50   ~ 0
dev7
Text Label 3650 3950 2    50   ~ 0
dev8
Text Label 3650 4050 2    50   ~ 0
dev9
Wire Wire Line
	3650 3850 3400 3850
Wire Wire Line
	3650 3950 3400 3950
Entry Wire Line
	3400 3850 3300 3750
Entry Wire Line
	3400 3950 3300 3850
Entry Wire Line
	3400 4050 3300 3950
Text GLabel 2100 3950 2    50   Input ~ 0
RTC_SWQ
Text GLabel 2100 3850 2    50   Input ~ 0
ML
Text GLabel 2100 4050 2    50   Input ~ 0
RTC_PWR
Text GLabel 1250 3800 0    50   Input ~ 0
dev[4..6]
Text GLabel 2400 2350 2    50   Input ~ 0
d[0..8]
Text GLabel 1250 2150 0    50   Input ~ 0
a[0..15]
Text GLabel 2100 3750 2    50   Input ~ 0
VP
Text GLabel 2100 3650 2    50   Input ~ 0
RDY
Text GLabel 2100 3550 2    50   Input ~ 0
BE
Text GLabel 2100 3450 2    50   Input ~ 0
IRQ
Text GLabel 2100 3350 2    50   Input ~ 0
SYNC
Text GLabel 2100 3250 2    50   Input ~ 0
RESET
Text GLabel 2100 3150 2    50   Input ~ 0
PHI2
Text GLabel 2100 3050 2    50   Input ~ 0
RW
Text Label 2200 2250 0    50   ~ 0
d0
Text Label 2200 2350 0    50   ~ 0
d1
Text Label 2200 2450 0    50   ~ 0
d2
Text Label 2200 2550 0    50   ~ 0
d3
Text Label 2200 2650 0    50   ~ 0
d4
Text Label 2200 2750 0    50   ~ 0
d5
Text Label 2200 2850 0    50   ~ 0
d6
Text Label 2200 2950 0    50   ~ 0
d7
Entry Wire Line
	2300 2950 2400 3050
Entry Wire Line
	2300 2850 2400 2950
Entry Wire Line
	2300 2750 2400 2850
Entry Wire Line
	2300 2650 2400 2750
Entry Wire Line
	2300 2550 2400 2650
Entry Wire Line
	2300 2450 2400 2550
Entry Wire Line
	2300 2350 2400 2450
Entry Wire Line
	2300 2250 2400 2350
Entry Wire Line
	1250 2150 1350 2250
Entry Wire Line
	1250 2250 1350 2350
Entry Wire Line
	1250 2350 1350 2450
Entry Wire Line
	1250 2450 1350 2550
Entry Wire Line
	1250 2550 1350 2650
Entry Wire Line
	1250 2650 1350 2750
Entry Wire Line
	1250 2750 1350 2850
Entry Wire Line
	1250 2850 1350 2950
Entry Wire Line
	1250 2950 1350 3050
Entry Wire Line
	1250 3050 1350 3150
Entry Wire Line
	1250 3150 1350 3250
Entry Wire Line
	1250 3250 1350 3350
Entry Wire Line
	1250 3350 1350 3450
Entry Wire Line
	1250 3450 1350 3550
Entry Wire Line
	1250 3550 1350 3650
Entry Wire Line
	1250 3650 1350 3750
Text Label 1550 2250 2    50   ~ 0
a0
Text Label 1550 2350 2    50   ~ 0
a1
Text Label 1550 2450 2    50   ~ 0
a2
Text Label 1550 2550 2    50   ~ 0
a3
Text Label 1550 2650 2    50   ~ 0
a4
Text Label 1550 2750 2    50   ~ 0
a5
Text Label 1550 2850 2    50   ~ 0
a6
Text Label 1550 2950 2    50   ~ 0
a7
Text Label 1550 3050 2    50   ~ 0
a8
Text Label 1550 3150 2    50   ~ 0
a9
Text Label 1550 3250 2    50   ~ 0
a10
Text Label 1550 3350 2    50   ~ 0
a11
Text Label 1550 3450 2    50   ~ 0
a12
Text Label 1550 3550 2    50   ~ 0
a13
Text Label 1550 3650 2    50   ~ 0
a14
Text Label 1550 3750 2    50   ~ 0
a15
Text Label 1600 3850 2    50   ~ 0
dev4
Text Label 1600 3950 2    50   ~ 0
dev5
Text Label 1600 4050 2    50   ~ 0
dev6
Entry Wire Line
	1350 3850 1250 3750
Entry Wire Line
	1350 3950 1250 3850
Entry Wire Line
	1350 4050 1250 3950
Wire Wire Line
	1350 2650 1600 2650
Wire Wire Line
	2100 2550 2300 2550
Wire Wire Line
	1350 2550 1600 2550
Wire Wire Line
	2100 2450 2300 2450
Wire Wire Line
	1350 2450 1600 2450
$Comp
L power:GND #PWR063
U 1 1 63360F6A
P 2100 4350
F 0 "#PWR063" H 2100 4100 50  0001 C CNN
F 1 "GND" H 2105 4177 50  0000 C CNN
F 2 "" H 2100 4350 50  0001 C CNN
F 3 "" H 2100 4350 50  0001 C CNN
	1    2100 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2350 2300 2350
Wire Wire Line
	1600 4050 1350 4050
Wire Wire Line
	1600 3950 1350 3950
Wire Wire Line
	1600 3850 1350 3850
Wire Wire Line
	1350 3750 1600 3750
Wire Wire Line
	1350 2350 1600 2350
Wire Wire Line
	1350 3650 1600 3650
Wire Wire Line
	1350 3550 1600 3550
Wire Wire Line
	1350 3450 1600 3450
Wire Wire Line
	1350 3350 1600 3350
Wire Wire Line
	1350 3250 1600 3250
Wire Wire Line
	2100 2250 2300 2250
Wire Wire Line
	1350 3150 1600 3150
Wire Wire Line
	1350 3050 1600 3050
Wire Wire Line
	2100 2950 2300 2950
Wire Wire Line
	1350 2950 1600 2950
Wire Wire Line
	2100 2850 2300 2850
Wire Wire Line
	1350 2850 1600 2850
Wire Wire Line
	2100 2750 2300 2750
Wire Wire Line
	1350 2750 1600 2750
Wire Wire Line
	2100 2650 2300 2650
Wire Wire Line
	1350 2250 1600 2250
$Comp
L power:GND #PWR060
U 1 1 63360F70
P 1600 4350
F 0 "#PWR060" H 1600 4100 50  0001 C CNN
F 1 "GND" H 1605 4177 50  0000 C CNN
F 2 "" H 1600 4350 50  0001 C CNN
F 3 "" H 1600 4350 50  0001 C CNN
	1    1600 4350
	1    0    0    -1  
$EndComp
Text GLabel 2100 4150 2    50   Input ~ 0
NMI
Text GLabel 2100 4250 2    50   Input ~ 0
PHI1O
Text GLabel 4150 4250 2    50   Input ~ 0
PHI1O
Text GLabel 4150 4150 2    50   Input ~ 0
NMI
$Comp
L power:+5V #PWR073
U 1 1 63475E5E
P 3650 4150
F 0 "#PWR073" H 3650 4000 50  0001 C CNN
F 1 "+5V" H 3665 4323 50  0000 C CNN
F 2 "" H 3650 4150 50  0001 C CNN
F 3 "" H 3650 4150 50  0001 C CNN
	1    3650 4150
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR074
U 1 1 63476C47
P 3650 4250
F 0 "#PWR074" H 3650 4100 50  0001 C CNN
F 1 "+5V" H 3665 4423 50  0000 C CNN
F 2 "" H 3650 4250 50  0001 C CNN
F 3 "" H 3650 4250 50  0001 C CNN
	1    3650 4250
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x22_Odd_Even J5
U 1 1 63485409
P 3850 3250
F 0 "J5" H 3900 4467 50  0000 C CNN
F 1 "Conn_02x22_Odd_Even" H 3900 4376 50  0000 C CNN
F 2 "" H 3850 3250 50  0001 C CNN
F 3 "~" H 3850 3250 50  0001 C CNN
	1    3850 3250
	1    0    0    -1  
$EndComp
Wire Bus Line
	1250 3750 1250 3950
Wire Bus Line
	3300 3750 3300 3950
Wire Bus Line
	1250 6500 1250 6700
Wire Bus Line
	3300 6500 3300 6700
Wire Bus Line
	2500 650  2500 1050
Wire Bus Line
	1000 650  1000 1350
Wire Bus Line
	4450 5100 4450 5800
Wire Bus Line
	2400 5100 2400 5800
Wire Bus Line
	4450 2350 4450 3050
Wire Bus Line
	2400 2350 2400 3050
Wire Bus Line
	3300 4900 3300 6400
Wire Bus Line
	1250 4900 1250 6400
Wire Bus Line
	3300 2150 3300 3650
Wire Bus Line
	1250 2150 1250 3650
$Comp
L Connector_Generic:Conn_02x22_Odd_Even J2
U 1 1 63496290
P 1800 3250
F 0 "J2" H 1850 4467 50  0000 C CNN
F 1 "Conn_02x22_Odd_Even" H 1850 4376 50  0000 C CNN
F 2 "" H 1800 3250 50  0001 C CNN
F 3 "~" H 1800 3250 50  0001 C CNN
	1    1800 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR070
U 1 1 63499170
P 1600 4250
F 0 "#PWR070" H 1600 4100 50  0001 C CNN
F 1 "+5V" H 1615 4423 50  0000 C CNN
F 2 "" H 1600 4250 50  0001 C CNN
F 3 "" H 1600 4250 50  0001 C CNN
	1    1600 4250
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR069
U 1 1 63499AAE
P 1600 4150
F 0 "#PWR069" H 1600 4000 50  0001 C CNN
F 1 "+5V" H 1615 4323 50  0000 C CNN
F 2 "" H 1600 4150 50  0001 C CNN
F 3 "" H 1600 4150 50  0001 C CNN
	1    1600 4150
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x22_Odd_Even J4
U 1 1 6349A2DB
P 1800 6000
F 0 "J4" H 1850 7217 50  0000 C CNN
F 1 "Conn_02x22_Odd_Even" H 1850 7126 50  0000 C CNN
F 2 "" H 1800 6000 50  0001 C CNN
F 3 "~" H 1800 6000 50  0001 C CNN
	1    1800 6000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x22_Odd_Even J6
U 1 1 6349CFAC
P 3850 6000
F 0 "J6" H 3900 7217 50  0000 C CNN
F 1 "Conn_02x22_Odd_Even" H 3900 7126 50  0000 C CNN
F 2 "" H 3850 6000 50  0001 C CNN
F 3 "~" H 3850 6000 50  0001 C CNN
	1    3850 6000
	1    0    0    -1  
$EndComp
Text GLabel 2100 7000 2    50   Input ~ 0
PHI1O
Text GLabel 4150 7000 2    50   Input ~ 0
PHI1O
Text GLabel 4150 6900 2    50   Input ~ 0
NMI
Text GLabel 2100 6900 2    50   Input ~ 0
NMI
$Comp
L power:+5V #PWR075
U 1 1 634A07D4
P 3650 6900
F 0 "#PWR075" H 3650 6750 50  0001 C CNN
F 1 "+5V" H 3665 7073 50  0000 C CNN
F 2 "" H 3650 6900 50  0001 C CNN
F 3 "" H 3650 6900 50  0001 C CNN
	1    3650 6900
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR076
U 1 1 634A120B
P 3650 7000
F 0 "#PWR076" H 3650 6850 50  0001 C CNN
F 1 "+5V" H 3665 7173 50  0000 C CNN
F 2 "" H 3650 7000 50  0001 C CNN
F 3 "" H 3650 7000 50  0001 C CNN
	1    3650 7000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR072
U 1 1 634A14A8
P 1600 7000
F 0 "#PWR072" H 1600 6850 50  0001 C CNN
F 1 "+5V" H 1615 7173 50  0000 C CNN
F 2 "" H 1600 7000 50  0001 C CNN
F 3 "" H 1600 7000 50  0001 C CNN
	1    1600 7000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR071
U 1 1 634A1D9F
P 1600 6900
F 0 "#PWR071" H 1600 6750 50  0001 C CNN
F 1 "+5V" H 1615 7073 50  0000 C CNN
F 2 "" H 1600 6900 50  0001 C CNN
F 3 "" H 1600 6900 50  0001 C CNN
	1    1600 6900
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
