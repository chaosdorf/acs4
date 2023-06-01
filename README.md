# Access control system 4 

Die (geplante) Türsteuerung für die Türen im neuen Dorf auf der Sonnenstraße.

## Benutzung

Gäste können die Klingel betätigen, dann klingelt es.

Mitglieder können mit ihrem iButton oder SSH-Key die Tür temporär öffnen.

(public schalten wie im alten Dorf ist in diesem Haus wohl leider unpraktikabel.)


## Hardware

Fürs Erste haben wir eine Minimallösung vor mit nur einer Platine mit einem ESP32-C3:

- speichert die iButton-IDs
- steuert die Aktoren an 12V Output
- Unlock über WiFi (SSH-Emulation)
- Update der IDs über MQTT
- gute Rust-Unterstützung

<details>
<summary>Die vollständige Lösung sollte auf zwei Platinen aufgeteilt sein:</summary>

[Blockschaltbild](src/Blockbild_Uebersicht_rev04.pdf)

### Server-Board
- Steuert die Aktoren an 12V Output
- Speichert die iButton IDs auf einer SD
- Ethernet nutzt ein Olimex Board ESP32 rev E
- Stromausfall erkennung


[Olimex Shop](https://www.olimex.com/Products/IoT/ESP32/ESP32-GATEWAY/open-source-hardware)

[Github Projekt Olimex](https://github.com/OLIMEX/ESP32-GATEWAY/tree/master/HARDWARE)

[ESP32 Gateway Schematic rev E](src/ESP32-GATEWAY_Rev_E_color.pdf)


### Client-Board
- iButton Reader
- LED Output
- Klingel Taster input 1
- Klingel Taster input 2
- Display output für eInk
- WS2812 LED Output

(jeweils für Außen- und Innentür)

[Waveshare eInk - Shop](https://eckstein-shop.de/Waveshare-27-inch-264x176-E-Ink-E-Paper-Raw-Display-three-color-Arduino)

</detail>


## Elektrisches Schloss
Unsere Tür hat drei Modi:
 * zu (Panikfunktion)
 * Summer
 * offen

Wir hatten überlegt, einen Motor an den Schlosszylinder anzuschließen, um zwischen diesen drei Modi umschalten zu können.
(Bei unserem Versuch mit einem Abus-Motor stand dann allerdings die Tür offen, weil sich der Motor unbedingt neu kalibrieren musste.)

Deswegen ist es wohl am einfachsten, die Tür einfach in dem Summer-Zustand zu lassen.
