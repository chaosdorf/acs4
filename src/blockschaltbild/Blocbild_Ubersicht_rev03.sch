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
	3650 1000 3650 7600
Wire Notes Line
	3650 7600 700  7600
Text GLabel 1850 1400 0    50   Input ~ 0
RS485a
Text GLabel 1850 1550 0    50   Input ~ 0
RS485b
Text GLabel 1850 1250 0    50   Input ~ 0
+VSS
Text GLabel 1850 1700 0    50   Input ~ 0
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
Text GLabel 5750 3250 3    50   Input ~ 0
RS485a
Text GLabel 5900 3250 3    50   Input ~ 0
RS485b
Text GLabel 5600 3250 3    50   Input ~ 0
+VSS
Text GLabel 6050 3250 3    50   Input ~ 0
-GND
Wire Wire Line
	1850 1250 5600 1250
Wire Wire Line
	5600 3250 5600 1250
Connection ~ 5600 1250
Wire Wire Line
	5600 1250 8600 1250
Wire Wire Line
	8600 3250 8600 1250
Wire Wire Line
	1850 1400 5750 1400
Wire Wire Line
	5750 1400 5750 3250
Wire Wire Line
	5750 1400 8750 1400
Wire Wire Line
	8750 1400 8750 3250
Connection ~ 5750 1400
Wire Wire Line
	1850 1550 5900 1550
Wire Wire Line
	8900 1550 8900 3250
Wire Wire Line
	5900 3250 5900 1550
Connection ~ 5900 1550
Wire Wire Line
	5900 1550 8900 1550
Wire Wire Line
	1850 1700 6050 1700
Wire Wire Line
	9050 1700 9050 3250
Wire Wire Line
	6050 3250 6050 1700
Connection ~ 6050 1700
Wire Wire Line
	6050 1700 9050 1700
Text Notes 5050 4300 0    50   ~ 0
iButton Reader
Text Notes 8450 4750 0    50   ~ 0
*KlingelTaster 1 in\n
Text Notes 10800 6450 0    50   ~ 0
*optional
Wire Notes Line
	8400 4200 10350 4200
Text Notes 8450 5550 0    50   ~ 0
iButton Reader Außeneinheit alte TSA
Wire Notes Line
	8400 4500 10350 4500
Text Notes 8450 5750 0    50   ~ 0
ESP32 + RS485 + PSU
Wire Notes Line
	1900 1100 1900 3300
Wire Notes Line
	800  3300 800  1100
Wire Notes Line
	1900 3450 1900 6250
Wire Notes Line
	800  6250 800  3450
Text Notes 950  3250 0    50   ~ 0
RS485 Pegelwandlung\nStromversorgung extern \nAbsicherung
Text Notes 2450 2100 0    50   ~ 0
Olimex\nESP32-GATEWAY
Wire Notes Line
	2200 4250 3550 4250
Wire Notes Line
	3550 7450 2200 7450
Text Notes 2250 5800 0    50   ~ 0
Schloss bzw eÖffner Steuerung \nRückmeldekontakte \nRelaisausgang\nHalbleiterausgang\nKlingelausgang 
Text GLabel 1800 2250 0    50   Input ~ 0
RxD_TTL
Text GLabel 1800 2350 0    50   Input ~ 0
TxD_TTL
Text GLabel 1800 2450 0    50   Input ~ 0
DE_TTL
Text GLabel 2400 2350 2    50   Input ~ 0
RxD_TTL
Text GLabel 2400 2250 2    50   Input ~ 0
TxD_TTL
Text GLabel 2400 2450 2    50   Input ~ 0
DE_TTL
Wire Wire Line
	1800 2250 2400 2250
Wire Wire Line
	1800 2350 2400 2350
Wire Wire Line
	1800 2450 2400 2450
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
P 2400 3150
F 0 "#PWR?" H 2400 2900 50  0001 C CNN
F 1 "GND" H 2405 2977 50  0000 C CNN
F 2 "" H 2400 3150 50  0001 C CNN
F 3 "" H 2400 3150 50  0001 C CNN
	1    2400 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E3C47FD
P 2400 3100
F 0 "#PWR?" H 2400 2950 50  0001 C CNN
F 1 "+5V" H 2415 3273 50  0000 C CNN
F 2 "" H 2400 3100 50  0001 C CNN
F 3 "" H 2400 3100 50  0001 C CNN
	1    2400 3100
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
P 3350 5800
F 0 "#PWR?" H 3350 5650 50  0001 C CNN
F 1 "+12P" H 3365 5973 50  0000 C CNN
F 2 "" H 3350 5800 50  0001 C CNN
F 3 "" H 3350 5800 50  0001 C CNN
	1    3350 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3C4DCA
P 3350 5900
F 0 "#PWR?" H 3350 5650 50  0001 C CNN
F 1 "GND" H 3355 5727 50  0000 C CNN
F 2 "" H 3350 5900 50  0001 C CNN
F 3 "" H 3350 5900 50  0001 C CNN
	1    3350 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+12P #PWR?
U 1 1 5E3C59EC
P 1000 4250
F 0 "#PWR?" H 1000 4100 50  0001 C CNN
F 1 "+12P" H 1015 4423 50  0000 C CNN
F 2 "" H 1000 4250 50  0001 C CNN
F 3 "" H 1000 4250 50  0001 C CNN
	1    1000 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E3C59FC
P 1250 4250
F 0 "#PWR?" H 1250 4100 50  0001 C CNN
F 1 "+5V" H 1265 4423 50  0000 C CNN
F 2 "" H 1250 4250 50  0001 C CNN
F 3 "" H 1250 4250 50  0001 C CNN
	1    1250 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3C5A07
P 1150 4250
F 0 "#PWR?" H 1150 4000 50  0001 C CNN
F 1 "GND" H 1155 4077 50  0000 C CNN
F 2 "" H 1150 4250 50  0001 C CNN
F 3 "" H 1150 4250 50  0001 C CNN
	1    1150 4250
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR?
U 1 1 5E3C5A29
P 1700 6100
F 0 "#PWR?" H 1700 5950 50  0001 C CNN
F 1 "-BATT" V 1700 6350 50  0000 C CNN
F 2 "" H 1700 6100 50  0001 C CNN
F 3 "" H 1700 6100 50  0001 C CNN
	1    1700 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 5E3C5A52
P 1550 6100
F 0 "#PWR?" H 1550 5950 50  0001 C CNN
F 1 "+BATT" V 1550 6350 50  0000 C CNN
F 2 "" H 1550 6100 50  0001 C CNN
F 3 "" H 1550 6100 50  0001 C CNN
	1    1550 6100
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
Text GLabel 3400 3000 0    50   Input ~ 0
LAN
Text GLabel 3750 3000 2    50   Input ~ 0
LAN
Wire Wire Line
	3400 3000 3750 3000
Wire Notes Line
	2200 7300 3550 7300
Wire Notes Line
	2200 7150 3550 7150
Wire Notes Line
	2200 7000 3550 7000
Wire Notes Line
	2200 6850 3550 6850
Wire Notes Line
	2200 6700 3550 6700
Wire Notes Line
	3550 4250 3550 7450
Text Notes 2250 7400 0    50   ~ 0
Türöffner Relais out
Text Notes 2250 7250 0    50   ~ 0
Türöffner 12 Volt DC out
Text Notes 2250 6950 0    50   ~ 0
Riegel ausgefahren
Text Notes 2250 6800 0    50   ~ 0
Drücker gedrückt
Text Notes 5050 4600 0    50   ~ 0
Summer out
Text Notes 8450 4600 0    50   ~ 0
Summer out
Text Notes 8450 4450 0    50   ~ 0
LED out - Flash Data Bus Modul
Text Notes 8450 5050 0    50   ~ 0
*WS2812\n
Text Notes 8450 4300 0    50   ~ 0
iButton Reader
Text Notes 8450 4900 0    50   ~ 0
*KlingelTaster 2 in\n
Wire Notes Line
	8400 4650 10350 4650
Wire Notes Line
	8400 4800 10350 4800
Wire Notes Line
	8400 4950 10350 4950
Wire Notes Line
	8400 5100 10350 5100
Text Notes 8450 5200 0    50   ~ 0
*eInk Display
Wire Notes Line
	8400 5250 10350 5250
Wire Notes Line
	8400 5400 10350 5400
Wire Notes Line
	8400 5600 10350 5600
Wire Notes Line
	8400 5800 10350 5800
Wire Notes Line
	10350 3150 10350 5800
Wire Notes Line
	8400 3150 8400 5800
Text Notes 7550 6750 0    100  ~ 0
Übersichtsplan Türsteuerung Dorf 4.0
Text Notes 9300 7750 0    50   ~ 0
xportdus@chaosdorf.de
Text Notes 8150 7650 0    50   ~ 0
06.02.2020
Text Notes 10600 7650 0    50   ~ 0
0.3
Text Notes 5050 5550 0    50   ~ 0
Taster - AccessControlSystem_mode
Text Notes 5500 5950 0    50   ~ 0
Innenmodul Clubräume 
Wire Notes Line
	5000 3150 6950 3150
Wire Notes Line
	6950 4350 5000 4350
Wire Notes Line
	5000 4200 6950 4200
Wire Notes Line
	5000 4500 6950 4500
Wire Notes Line
	5000 4650 6950 4650
Wire Notes Line
	5000 4800 6950 4800
Wire Notes Line
	5000 4950 6950 4950
Wire Notes Line
	5000 5100 6950 5100
Wire Notes Line
	5000 5250 6950 5250
Wire Notes Line
	5000 5400 6950 5400
Wire Notes Line
	5000 5600 6950 5600
Wire Notes Line
	6950 3150 6950 5800
Text Notes 5050 5750 0    50   ~ 0
ESP32 + RS485 + PSU
Text Notes 5050 4750 0    50   ~ 0
Taster - AccessControlSystem_mode ON
Text Notes 5050 5050 0    50   ~ 0
WS2812\n
Wire Notes Line
	5000 3150 5000 5800
Wire Notes Line
	5000 5800 6950 5800
Text Notes 5050 4450 0    50   ~ 0
LED out - Flash Data Bus Modul
Text Notes 5050 4900 0    50   ~ 0
Taster - AccessControlSystem_mode OFF
Text Notes 5450 6150 0    50   ~ 0
AccessControlSystem_mode \n       Umschaltung
Text Notes 8750 5950 0    50   ~ 0
Innen- und Außenmodul Clubräume 
Text Notes 8800 6150 0    50   ~ 0
nur als als Zugangsleser mit \nunterschiedlicher Bestückung
Text Notes 6850 4150 1    50   ~ 0
Adresse
Text Notes 10300 4150 1    50   ~ 0
Adresse
Wire Notes Line
	6950 3800 6700 3800
Wire Notes Line
	6700 3800 6700 5100
Wire Notes Line
	10350 3800 10100 3800
Wire Notes Line
	10100 3800 10100 5250
Text GLabel 1800 3900 0    50   Input ~ 0
+5Volt
Text GLabel 1800 4000 0    50   Input ~ 0
GND
Text GLabel 2400 2600 2    50   Input ~ 0
+5Volt
Text GLabel 2400 4000 2    50   Input ~ 0
GND
Wire Wire Line
	1800 3900 2400 3900
Wire Wire Line
	1800 4000 2400 4000
Text GLabel 1800 2600 0    50   Input ~ 0
+5Volt
Wire Notes Line
	3550 1900 3550 4150
Text GLabel 1800 2700 0    50   Input ~ 0
GND
Text GLabel 2400 3900 2    50   Input ~ 0
+5Volt
Text GLabel 2400 2700 2    50   Input ~ 0
GND
Wire Wire Line
	1800 2600 2400 2600
Wire Wire Line
	1800 2700 2400 2700
Wire Notes Line
	900  5050 900  6150
Wire Notes Line
	900  6150 1800 6150
Wire Notes Line
	1800 6150 1800 5050
Wire Notes Line
	1800 5050 900  5050
Wire Notes Line
	2200 4150 3550 4150
Wire Notes Line
	2200 1900 3550 1900
Wire Notes Line
	800  3450 1900 3450
Wire Notes Line
	800  6250 1900 6250
Wire Notes Line
	700  1000 3650 1000
Wire Notes Line
	700  1000 700  7600
Wire Notes Line
	800  3300 1900 3300
Wire Notes Line
	800  1100 1900 1100
Text GLabel 1800 3600 0    50   Input ~ 0
+12Volt
Text GLabel 1800 2950 0    50   Input ~ 0
+12Volt
Text GLabel 1800 4600 0    50   Input ~ 0
GND
Text GLabel 1800 2850 0    50   Input ~ 0
GND
Wire Wire Line
	1800 2950 1950 2950
Wire Wire Line
	1800 3600 1950 3600
Wire Wire Line
	1950 2950 1950 3600
Wire Wire Line
	1800 2850 2000 2850
Wire Wire Line
	2000 2850 2000 3700
Wire Wire Line
	2000 3700 1800 3700
Text GLabel 1550 6300 3    50   Input ~ 0
+Batt
Text GLabel 1700 6300 3    50   Input ~ 0
-Batt
Text GLabel 1200 6350 3    50   Input ~ 0
230V
Text GLabel 1100 6350 3    50   Input ~ 0
230V
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 5E4360BD
P 1100 6000
F 0 "J?" V 1200 6000 50  0000 R CNN
F 1 "con" V 1150 6000 50  0000 R CNN
F 2 "" H 1100 6000 50  0001 C CNN
F 3 "~" H 1100 6000 50  0001 C CNN
	1    1100 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 6200 1100 6350
Wire Wire Line
	1200 6200 1200 6350
Wire Wire Line
	1550 6100 1550 6300
Wire Wire Line
	1700 6100 1700 6300
Text Notes 950  5650 0    50   ~ 0
12 Volt \nPSU mit Ladefunktion\nÜberwachung 
Text GLabel 1100 4950 1    50   Input ~ 0
+PSU
Text GLabel 1250 4950 1    50   Input ~ 0
-PSU
Text GLabel 1100 5100 3    50   Input ~ 0
+PSU
Text GLabel 1250 5100 3    50   Input ~ 0
-PSU
Wire Wire Line
	1100 5100 1100 4950
Wire Wire Line
	1250 5100 1250 4950
Text Notes 3450 6650 1    50   ~ 0
Adresse
Wire Notes Line
	3550 6300 3300 6300
Wire Notes Line
	3300 6300 3300 7450
Text Notes 2250 7100 0    50   ~ 0
Riegel eingefahren
Text Notes 3200 6800 0    50   ~ 0
4
Text Notes 3200 6950 0    50   ~ 0
6
Text Notes 3200 7100 0    50   ~ 0
9
Text GLabel 1800 4500 0    50   Input ~ 0
+12Volt
Text GLabel 1800 3700 0    50   Input ~ 0
GND
Text GLabel 2250 4500 2    50   Input ~ 0
+12Volt
Text GLabel 2250 4600 2    50   Input ~ 0
GND
Wire Wire Line
	1800 4500 2250 4500
Wire Wire Line
	1800 4600 2250 4600
Text Notes 8600 7750 0    50   ~ 0
Entwurf
Text Notes 9800 7100 0    50   ~ 0
https://github.com/chaosdorf/acs4
Wire Notes Line
	2200 1900 2200 4150
Wire Notes Line
	2200 7450 2200 4250
Text Notes 3150 2900 0    50   ~ 0
Ethernet\nRJ45
Text Notes 6350 3250 0    50   ~ 0
Geräte Adresse
Text Notes 9750 3250 0    50   ~ 0
Geräte Adresse
$EndSCHEMATC
