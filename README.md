# Access control system 4 

Die Türsteuerung für die Türen im neuen Dorf auf der Sonnenstraße.

https://github.com/chaosdorf/sonnenstr58/issues/8


## Hardware
Die Steuerung ist auf zwei Platinen aufgeteilt. 

[Blockschaltbild](src/Blockschaltbild.pdf)

### Master-Board
- Steuert die Aktoren an 12V Output
- Speichert die iButton IDs auf einer SD
- Ethernet nutzt ein Olimex Board ESP32 rev E
- Überwachung Türschloss
- Stromausfall erkennung


[Olimex Shop](https://www.olimex.com/Products/IoT/ESP32/ESP32-GATEWAY/open-source-hardware)

[Github Projekt Olimex](https://github.com/OLIMEX/ESP32-GATEWAY/tree/master/HARDWARE)

[ESP32 Gateway Schematic rev E](src/ESP32-GATEWAY_Rev_E_color.pdf)


### Slave-Board
- iButton Reader
- LED Output
- Klingel Taster input 1
- Klingel Taster input 2
- Display output für eInk
- WS2812 LED Output

[Waveshare eInk - Shop](https://eckstein-shop.de/Waveshare-27-inch-264x176-E-Ink-E-Paper-Raw-Display-three-color-Arduino)




## Elektrisches Schloss

Drückersteuerung (Modell 709X/809®)
Schlösser mit Drückersteuerung bieten durch den gesteuerten Außendrücker eine ideale Kombination von Zutrittskontrolle und Fluchtweg.
Bei diesen Schlössern werden innen und außen Türdrücker zur Bedienung eingesetzt. Die Schlossnuss ist geteilt und somit ergeben sich für Innen und Außen unterschiedliche Bedienung.
Der Innendrücker ist dabei immer fest mit dem Schlossmechanismus verbunden und erlaubt somit ein Entriegeln des Schlosses und ein Öffnen der Tür von innen, damit Personen den Bereich oder das Gebäude verlassen können.
Der Außendrücker ist freilaufend, d. h. durch Betätigung des Außendrückers wird das Schloss nicht entriegelt und die Tür kann somit auch nicht geöffnet werden.
Die Ansteuerung des Schlosses erfolgt durch das Aufschalten der Betriebsspannung 12V DC oder 24V DC (je nach Variante), z. B. durch Zutrittskontrolle, Zeitschaltuhr. Gebäudeleittechnik usw. Dadurch wird im Detail der Außendrücker (Außendrückernuss) mit dem Innendrücker (Innendrückernuss) gekoppelt. Betätigt man nun den Außendrücker wird der (die) Riegel und die Falle zurückgezogen, bzw. die Kreuzfalle beweglich, und ein Zugang von Außen nach Innen ist für berechtigte Personen möglich.
Man unterscheidet zwei Versionen:
Schloss mit Panikfunktion: Drückernuss geteilt, Außendrücker elektrisch gesteuert
Schloss ohne Panikfunktion: Drückernuss durchgehend, beide Drücker elektrisch gesteuert_

Wir brauchen wegen der Panikfunktion das Schloß mit der geteilten Drückernuss.

[Anleitung](src/Bedienungsanleitung_Sicherheitsschloss.pdf)

### Pinout
![Schloss Pinout](src/Schloss-Pinout.png)


| Pin-Nummer | Kabel-Farbe | Funktion |
|--|--|--|
| 1 | Weiß + |  |
| 2 | Rot - | Geschlossen / Offen |
| 3 | Grün/Rot | Schließzylinder betätigt |
| 4 | Blau | Drücker gedrückt |
| 5 | Violett | Gemeinsamer Kontakt für Schließzylinder betätigt / Drücker gedrückt |
| 6 | Türkis | Riegel ausgefahren |
| 7 | Gelb / Rot | Gemeinsamer Kontakt für Riegel ausgefahren |
| 8 | Braun |  Steuerfalle gedrückt |
| 9 | Orange | Riegel eingefahren | 
| 10 | Gelb | Gemeinsamer Kontakt für Steuerfalle gedrückt / Riegel eingefahren | 
| 11 | Grau / Pink | Sabotage schlaufe