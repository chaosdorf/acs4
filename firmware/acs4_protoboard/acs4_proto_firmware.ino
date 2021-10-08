#include <OneWire.h>
#include "FS.h"
#include "SPIFFS.h"
#define FORMAT_SPIFFS_IF_FAILED false
 
OneWire iButton (25); // iButton connected on PIN 25.

int summer = 4;
int relais = 5;
int led = 32;


#define OK              0   //correct key read
#define NO_ADDR         1   //No address found
#define CRC_invalid     2   //invalid CRC
#define NOT_DS1990      3   //invalid family code (0x01=DS1990A, 0x81=custom iButton, these are valid)
 
byte buffer[8];

int ledState = LOW;
unsigned long previousMillis = 0; 
 
void setup(){
  Serial.begin(115200);
  Serial.println("Hello"); // print new line

  pinMode(summer, OUTPUT);
  pinMode(relais, OUTPUT);
  pinMode(led, OUTPUT);

  digitalWrite(summer, LOW);   
  digitalWrite(relais, LOW);   
  digitalWrite(led, LOW);   

    if (!SPIFFS.begin(FORMAT_SPIFFS_IF_FAILED)) {
    Serial.println("SPIFFS Mount Failed");
    return;
  }
}

byte nibble(char c)
{
  if (c >= '0' && c <= '9')
    return c - '0';

  if (c >= 'a' && c <= 'f')
    return c - 'a' + 10;

  if (c >= 'A' && c <= 'F')
    return c - 'A' + 10;

  return 0;  // Not a valid hexadecimal character
}


void hexCharacterStringToBytes(byte *byteArray, const char *hexString, byte startAt = 0)
{
  bool oddLength = strlen(hexString) & 1;

  byte currentByte = 0;
  byte byteIndex = 0;

  for (byte charIndex = startAt; charIndex < strlen(hexString); charIndex++)
  {
    bool oddCharIndex = charIndex & 1;

    if (oddLength)
    {
      // If the length is odd
      if (oddCharIndex)
      {
        // odd characters go in high nibble
        currentByte = nibble(hexString[charIndex]) << 4;
      }
      else
      {
        // Even characters go into low nibble
        currentByte |= nibble(hexString[charIndex]);
        byteArray[byteIndex++] = currentByte;
        currentByte = 0;
      }
    }
    else
    {
      // If the length is even
      if (!oddCharIndex)
      {
        // Odd characters go into the high nibble
        currentByte = nibble(hexString[charIndex]) << 4;
      }
      else
      {
        // Odd characters go into low nibble
        currentByte |= nibble(hexString[charIndex]);
        byteArray[byteIndex++] = currentByte;
        currentByte = 0;
      }
    }
  }
}


void dumpByteArray(const byte * byteArray, const byte arraySize)
{

for (int i = 0; i < arraySize; i++)
{
  Serial.print("0x");
  if (byteArray[i] < 0x10)
    Serial.print("0");
  Serial.print(byteArray[i], HEX);
  Serial.print(", ");
}
Serial.println();
}


/*
 * Checks if a raw key code (from the reader) exists in the key file and reads that data into
 * the global key var. If the key is not present in our file the key status will be set to KEY_UNKNOWN
 * if an error occurred during reading the key status will be set to CANNOT_COMPARE
 */
bool CheckKey(byte *rawkey){

File root = SPIFFS.open("/");
File file = root.openNextFile();
while (file) {
  if (!file.isDirectory()) {
    if (strlen(file.name()) != 17)
    {
      break;
    }
 
    byte fileKey[8] = {0};   
    hexCharacterStringToBytes(fileKey,file.name(),1);
    //dumpByteArray(rawkey, 8);
  
    if (memcmp(rawkey, fileKey, 8) == 0)
    {
      Serial.print(" Key found!");
      return true;
    }
     
  }  
  file = root.openNextFile();
}
Serial.print(" Key not found!");
return false;



//  File dataFile = SD.open(keyfile, O_READ);
//  if (!dataFile){
//    fileerror(keyfile);
//    memcpy(key.keycode,rawkey,8);       //remember key
//    key.keystatus=CANNOT_COMPARE;
//    key.keyname[0]=0;
//    return;
//  }
//  while (readkey(dataFile)){
//    if (!memcmp(rawkey,key.keycode,8)){     //key found in keyfile
//      dataFile.close();
//      return;
//    }
//  }
//  dataFile.close();
//  //key not in keyfile
//  memcpy(key.keycode,rawkey,8);         //remember key
//  key.keystatus=KEY_UNKNOWN;
//  key.keyno=0;
//  strcpy(key.keyname,"unknown key");
}


byte getKeyCode(byte* rawkey){
  if ( !iButton.search(rawkey)) {
    iButton.reset_search();
    return NO_ADDR;
  }
  if ( OneWire::crc8( rawkey, 7) != rawkey[7]) {
    return CRC_invalid;
  }
  if ( (rawkey[0] & 0x7F) != 0x01 && rawkey[0] != 0x08) { //0x01=DS1990A (if MSB=1 custom made iButton (0x81)) or 0x08=DS1992 with 1024bits of NV memory
    return NOT_DS1990;
  }
 
  iButton.reset();

  for (byte i=0; i<4;i++)
  {
    byte mem = rawkey[i];    
    rawkey[i]=rawkey[7-i];
    rawkey[7-i]=mem;  
  }

  Serial.print("\nKey gelsen:"); 
  for (byte i = 0;i<8;i++){
    if (rawkey[i] < 16)
    {
      Serial.print(0,HEX); 
    }
    Serial.print(rawkey[i],HEX); 
  }
  
  return OK;
}
 



void loop(){
  unsigned long currentMillis = millis();
  byte rawkey[8];  
  byte readresult;

  digitalWrite(led, HIGH); 

  readresult = getKeyCode(rawkey);
  if (readresult == OK) {
    if (CheckKey(rawkey))
    {
      //opendoor
      Serial.print(" Access granted");  
      
      digitalWrite(summer, HIGH);   
      digitalWrite(relais, HIGH);   
      digitalWrite(led, LOW);
           
      delay(3000); 
      
       
      digitalWrite(summer, LOW);   
      digitalWrite(relais, LOW);   

      delay(5000); 

      digitalWrite(summer, HIGH);   
      digitalWrite(relais, HIGH);

      delay(3000); 
      
      digitalWrite(summer, LOW);   
      digitalWrite(relais, LOW);
      digitalWrite(led, HIGH);  
    }
    else
    {
      digitalWrite(led, LOW); 
      delay(15000); //If wrong Key / bruteforce attack -> wait 15sec
      digitalWrite(led, HIGH);
    }
  }  
  
}
