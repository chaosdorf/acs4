EESchema Schematic File Version 4
LIBS:Blocbild_Ubersicht.sch-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	800  1000 3400 1000
Wire Notes Line
	3400 1000 3400 7600
Wire Notes Line
	3400 7600 800  7600
Wire Notes Line
	800  7600 800  1000
Text GLabel 1700 1400 0    50   Input ~ 0
RS485a
Text GLabel 1700 1550 0    50   Input ~ 0
RS485b
Text GLabel 1700 1250 0    50   Input ~ 0
+VSS
Text GLabel 1700 1700 0    50   Input ~ 0
-GND
Text GLabel 8750 3250 3    50   Input ~ 0
RS485a
Text GLabel 8900 3250 3    50   Input ~ 0
RS485b
Text GLabel 8600 3250 3    50   Input ~ 0
+VSS
Text GLabel 9050 3250 3    50   Input ~ 0
-GND
Wire Notes Line
	8400 3150 10350 3150
Wire Notes Line
	10350 4350 8400 4350
Text GLabel 5500 3250 3    50   Input ~ 0
RS485a
Text GLabel 5650 3250 3    50   Input ~ 0
RS485b
Text GLabel 5350 3250 3    50   Input ~ 0
+VSS
Text GLabel 5800 3250 3    50   Input ~ 0
-GND
Wire Notes Line
	5150 3150 6900 3150
Wire Notes Line
	6900 3800 5150 3800
Wire Wire Line
	1700 1250 5350 1250
Wire Wire Line
	5350 3250 5350 1250
Connection ~ 5350 1250
Wire Wire Line
	5350 1250 8600 1250
Wire Wire Line
	8600 3250 8600 1250
Wire Wire Line
	1700 1400 5500 1400
Wire Wire Line
	5500 1400 5500 3250
Wire Wire Line
	5500 1400 8750 1400
Wire Wire Line
	8750 1400 8750 3250
Connection ~ 5500 1400
Wire Wire Line
	1700 1550 5650 1550
Wire Wire Line
	8900 1550 8900 3250
Wire Wire Line
	5650 3250 5650 1550
Connection ~ 5650 1550
Wire Wire Line
	5650 1550 8900 1550
Wire Wire Line
	1700 1700 5800 1700
Wire Wire Line
	9050 1700 9050 3250
Wire Wire Line
	5800 3250 5800 1700
Connection ~ 5800 1700
Wire Wire Line
	5800 1700 9050 1700
Text Notes 5200 3750 0    50   ~ 0
iButton Reader
Text Notes 8450 4450 0    50   ~ 0
KlingelTaster 1 in\n
Text Notes 9950 3250 0    50   ~ 0
*optional
Wire Notes Line
	8400 4200 10350 4200
Text Notes 8450 5550 0    50   ~ 0
iButton Reader Außeneinheit alte TSA
Wire Notes Line
	5150 3650 6900 3650
Text Notes 5200 4650 0    50   ~ 0
Innenmodul Clubräume 
Wire Notes Line
	5150 3950 6900 3950
Wire Notes Line
	8400 4500 10350 4500
Text Notes 8450 5750 0    50   ~ 0
ESP32 + RS485 + PSU
Wire Notes Line
	1900 1100 1900 3100
Wire Notes Line
	900  3100 900  1100
Wire Notes Line
	900  3200 1900 3200
Wire Notes Line
	1900 3200 1900 5300
Wire Notes Line
	1900 5300 900  5300
Wire Notes Line
	900  5300 900  3200
Text Notes 950  3000 0    50   ~ 0
RS485 Pegelwandlung\nStromversorgung extern \nAbsicherung
Wire Notes Line
	900  1100 1900 1100
Wire Notes Line
	900  3100 1900 3100
Text Notes 950  4150 0    50   ~ 0
230 Volt PSU\nAkku Regelung\nSpannungsüberwachung\nStörungsmeldung Netz\nStörungsmeldung Akku\n
Wire Notes Line
	2000 1900 3300 1900
Wire Notes Line
	3300 1900 3300 4000
Wire Notes Line
	3300 4000 2000 4000
Wire Notes Line
	2000 4000 2000 1900
Text Notes 2200 2000 0    50   ~ 0
Olimex ESP32 + LAN
Wire Notes Line
	2000 4500 3300 4500
Wire Notes Line
	3300 7450 2000 7450
Wire Notes Line
	2000 7450 2000 4500
Text Notes 2100 4950 0    50   ~ 0
Schloss bzw eÖffner Steuerung \nRückmeldekontakte \nRelaisausgang\nHalbleiterausgang\nKlingelausgang 
Text GLabel 1800 2150 0    50   Input ~ 0
RxD_TTL
Text GLabel 1800 2250 0    50   Input ~ 0
TxD_TTL
Text GLabel 1800 2350 0    50   Input ~ 0
DE_TTL
Text GLabel 2100 2250 2    50   Input ~ 0
RxD_TTL
Text GLabel 2100 2150 2    50   Input ~ 0
TxD_TTL
Text GLabel 2100 2350 2    50   Input ~ 0
DE_TTL
Wire Wire Line
	1800 2150 2100 2150
Wire Wire Line
	1800 2250 2100 2250
Wire Wire Line
	1800 2350 2100 2350
$Comp
L power:+5V #PWR?
U 1 1 5E3C4799
P 1200 1400
F 0 "#PWR?" H 1200 1250 50  0001 C CNN
F 1 "+5V" H 1215 1573 50  0000 C CNN
F 2 "" H 1200 1400 50  0001 C CNN
F 3 "" H 1200 1400 50  0001 C CNN
	1    1200 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3C47C2
P 1100 1450
F 0 "#PWR?" H 1100 1200 50  0001 C CNN
F 1 "GND" H 1105 1277 50  0000 C CNN
F 2 "" H 1100 1450 50  0001 C CNN
F 3 "" H 1100 1450 50  0001 C CNN
	1    1100 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3C47F2
P 3000 2300
F 0 "#PWR?" H 3000 2050 50  0001 C CNN
F 1 "GND" H 3005 2127 50  0000 C CNN
F 2 "" H 3000 2300 50  0001 C CNN
F 3 "" H 3000 2300 50  0001 C CNN
	1    3000 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E3C47FD
P 3000 2250
F 0 "#PWR?" H 3000 2100 50  0001 C CNN
F 1 "+5V" H 3015 2423 50  0000 C CNN
F 2 "" H 3000 2250 50  0001 C CNN
F 3 "" H 3000 2250 50  0001 C CNN
	1    3000 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+12P #PWR?
U 1 1 5E3C4770
P 1000 1400
F 0 "#PWR?" H 1000 1250 50  0001 C CNN
F 1 "+12P" H 1015 1573 50  0000 C CNN
F 2 "" H 1000 1400 50  0001 C CNN
F 3 "" H 1000 1400 50  0001 C CNN
	1    1000 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+12P #PWR?
U 1 1 5E3C4DBF
P 3000 4950
F 0 "#PWR?" H 3000 4800 50  0001 C CNN
F 1 "+12P" H 3015 5123 50  0000 C CNN
F 2 "" H 3000 4950 50  0001 C CNN
F 3 "" H 3000 4950 50  0001 C CNN
	1    3000 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3C4DCA
P 3000 5050
F 0 "#PWR?" H 3000 4800 50  0001 C CNN
F 1 "GND" H 3005 4877 50  0000 C CNN
F 2 "" H 3000 5050 50  0001 C CNN
F 3 "" H 3000 5050 50  0001 C CNN
	1    3000 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+12P #PWR?
U 1 1 5E3C59EC
P 1050 4400
F 0 "#PWR?" H 1050 4250 50  0001 C CNN
F 1 "+12P" H 1065 4573 50  0000 C CNN
F 2 "" H 1050 4400 50  0001 C CNN
F 3 "" H 1050 4400 50  0001 C CNN
	1    1050 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E3C59FC
P 1300 4400
F 0 "#PWR?" H 1300 4250 50  0001 C CNN
F 1 "+5V" H 1315 4573 50  0000 C CNN
F 2 "" H 1300 4400 50  0001 C CNN
F 3 "" H 1300 4400 50  0001 C CNN
	1    1300 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3C5A07
P 1200 4400
F 0 "#PWR?" H 1200 4150 50  0001 C CNN
F 1 "GND" H 1205 4227 50  0000 C CNN
F 2 "" H 1200 4400 50  0001 C CNN
F 3 "" H 1200 4400 50  0001 C CNN
	1    1200 4400
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR?
U 1 1 5E3C5A29
P 1650 5050
F 0 "#PWR?" H 1650 4900 50  0001 C CNN
F 1 "-BATT" H 1665 5223 50  0000 C CNN
F 2 "" H 1650 5050 50  0001 C CNN
F 3 "" H 1650 5050 50  0001 C CNN
	1    1650 5050
	1    0    0    1   
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 5E3C5A52
P 1650 4950
F 0 "#PWR?" H 1650 4800 50  0001 C CNN
F 1 "+BATT" H 1665 5123 50  0000 C CNN
F 2 "" H 1650 4950 50  0001 C CNN
F 3 "" H 1650 4950 50  0001 C CNN
	1    1650 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED TxD
U 1 1 5E3C6059
P 1050 2100
F 0 "TxD" V 1088 1983 50  0000 R CNN
F 1 "LED" V 997 1983 50  0000 R CNN
F 2 "" H 1050 2100 50  0001 C CNN
F 3 "~" H 1050 2100 50  0001 C CNN
	1    1050 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED RxD
U 1 1 5E3C8F72
P 1050 2500
F 0 "RxD" V 1088 2383 50  0000 R CNN
F 1 "LED" V 997 2383 50  0000 R CNN
F 2 "" H 1050 2500 50  0001 C CNN
F 3 "~" H 1050 2500 50  0001 C CNN
	1    1050 2500
	0    -1   -1   0   
$EndComp
Text GLabel 3200 3000 0    50   Input ~ 0
LAN
Text GLabel 3500 3000 2    50   Input ~ 0
LAN
Wire Wire Line
	3200 3000 3500 3000
Wire Notes Line
	2000 7300 3300 7300
Wire Notes Line
	2000 7150 3300 7150
Wire Notes Line
	2000 7000 3300 7000
Wire Notes Line
	2000 6850 3300 6850
Wire Notes Line
	2000 6700 3300 6700
Wire Notes Line
	3300 4500 3300 7450
Text Notes 2050 7400 0    50   ~ 0
Türöffner Relais out
Text Notes 2050 7250 0    50   ~ 0
Türöffner 12 Volt DC out
Text Notes 2050 7100 0    50   ~ 0
Rückmeldung Türe auf 
Text Notes 2050 6950 0    50   ~ 0
Türe verschlossen 
Text Notes 2050 6800 0    50   ~ 0
Drücker betätigt 
Text Notes 5200 4350 0    50   ~ 0
Taster in
Text Notes 5200 4050 0    50   ~ 0
LED out
Text Notes 5200 4200 0    50   ~ 0
Summer out
Wire Notes Line
	5150 4100 6900 4100
Wire Notes Line
	5150 4250 6900 4250
Text Notes 8450 4900 0    50   ~ 0
Summer out
Text Notes 8450 4750 0    50   ~ 0
LED out
Text Notes 5200 3900 0    50   ~ 0
Taster - AccessControlSystem_mode
Wire Notes Line
	5150 4550 6900 4550
Wire Notes Line
	5150 4700 6900 4700
Text Notes 5200 4800 0    50   ~ 0
ATMEGA328 + RS485 + PSU
Wire Notes Line
	5150 4850 6900 4850
Wire Notes Line
	6900 3150 6900 4850
Wire Notes Line
	5150 3150 5150 4850
Text Notes 6750 3600 0    50   ~ 0
Bit
Wire Notes Line
	6900 3500 6700 3500
Wire Notes Line
	5150 4400 6900 4400
Text Notes 10200 4150 0    50   ~ 0
Bit
Wire Notes Line
	10350 4050 10150 4050
Text Notes 8450 5050 0    50   ~ 0
WS2812\n
Text Notes 8450 4300 0    50   ~ 0
iButton Reader
Text Notes 8450 4600 0    50   ~ 0
KlingelTaster 2 in\n
Wire Notes Line
	8400 4650 10350 4650
Wire Notes Line
	8400 4800 10350 4800
Wire Notes Line
	8400 4950 10350 4950
Wire Notes Line
	8400 5100 10350 5100
Text Notes 8450 5200 0    50   ~ 0
eInk Display
Wire Notes Line
	8400 5250 10350 5250
Wire Notes Line
	8400 5400 10350 5400
Wire Notes Line
	8400 5600 10350 5600
Wire Notes Line
	10150 4050 10150 5400
Wire Notes Line
	8400 5800 10350 5800
Wire Notes Line
	10350 3150 10350 5800
Wire Notes Line
	8400 3150 8400 5800
Wire Notes Line
	6700 3500 6700 4550
Text Notes 3150 6650 0    50   ~ 0
Bit
Wire Notes Line
	3100 6550 3100 7450
Wire Notes Line
	3100 6550 3300 6550
Text Notes 7350 6900 0    100  ~ 0
Übersichtsplan Türsteuerung Dof 4.0
Text Notes 9300 7750 0    50   ~ 0
xportdus@chaosdorf.de
Text Notes 8150 7650 0    50   ~ 0
05.02.2020
Text Notes 10600 7650 0    50   ~ 0
0.1
$EndSCHEMATC
