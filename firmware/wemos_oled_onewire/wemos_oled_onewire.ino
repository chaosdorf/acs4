/*********
  Rui Santos
  Complete project details at https://randomnerdtutorials.com  
*********/

#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, -1);

#include <OneWire.h>
 
OneWire ibutton (2); // iButton connected on PIN 42.
 
byte buffer[8];
 
void setup() {
  Serial.begin(115200);
  Serial.println(F("Start"));
  
  // Start I2C Communication SDA = 5 and SCL = 4 on Wemos Lolin32 ESP32 with built-in SSD1306 OLED
  Wire.begin(5, 4);

  if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C, false, false)) {
    Serial.println(F("SSD1306 allocation failed"));
    for(;;);
  }
  delay(2000); // Pause for 2 seconds
  // Clear the buffer.
  display.clearDisplay();
  display.display();
  
  display.setTextSize(1);             // Normal 1:1 pixel scale
  display.setTextColor(SSD1306_WHITE);        // Draw white text
  display.setCursor(0,0);
  display.println(F("Welcome"));  
  display.display(); 
  delay(2000);
}
 
void loop() {
  // Clear the buffer.

  display.setTextSize(1);             // Normal 1:1 pixel scale
  display.setTextColor(SSD1306_WHITE);        // Draw white text
  display.setCursor(0,30);
  display.println(millis());  
  display.display(); 



  if (!ibutton.search (buffer)){
       ibutton.reset_search();
       delay(250);
       display.clearDisplay();
       display.display();
       return;
    }


  // Draw bitmap on the screen
  display.setTextSize(1);             // Normal 1:1 pixel scale
  display.setTextColor(SSD1306_WHITE);        // Draw white text
  display.setCursor(0,0);             // Start at top-left corner
  for (int x = 0; x<8; x++){
    display.print(buffer[x],HEX);
    display.print(" ");
  }
  //display.println(F("Hello, world!"));
  display.display();
  delay(3000);
  
}
