#include <Arduino.h>
#include <Wire.h>
#include <stdint.h>

//byte 1 definitions
#define AB_MASK 0xC0
#define AB_SHIFT 14
#define C_MASK 0x20
#define C_SHIFT 13
#define DEFGH_MASK 0x1F
#define DEFGH_SHIFT 0

//byte 2 definitions
#define S_DIST 0xFF
#define S_DIST_SHFT 0
#define A_DIST 0xF0
#define A_DIST_SHFT 4
#define A_RAD 0x0F
#define A_RAD_SHFT 0
#define I_DEG 0xFF
#define I_DEG_SHFT 0

#define DEVICE_ADDRESS 35

/*
uint16_t command_to_bits() {
}
*/

/*
I2C command syntax

2 bytes:  [a][b][c][d][e][f][g][h]
    [i][j][k][l][m][n][o][p]
Byte breakdown:
Byte 1:
  [a][b][c][d][e][f][g][h]
  [ab] = which command
     00 - straight line
     01 - arc distance
     10 - in-place turn
     11 - {empty}
  [c] = direction (binary, 0-1)
      0 - backward
      1 - forward
  [defgh] = speed (relative, 0-31)
      0 - 0
     31 - speed max

Byte 2:
  [i][j][k][l][m][n][o][p]
(for straight distance)
  [ijklmnop] = travel distance (feet, 0-255)
      0 - 1 foot
    255 - 256 feet
(for arc distance)
  [ijkl] = travel distance (degrees, 0-15)
      0 - 0 degrees
     15 - 90 degrees (180? 360?)
  [mnop] = turn radius (feet, 0-16)
      0 - 1 foot (tight turn)
     15 - 15 feet (wide turn)
(for in-place turn)
  [ijklmnop] = turn degrees
      0 - 0 degrees
    128 - 180 degrees
    255 - 360 degrees
*/  

void setup()
{
  Wire.begin(); // join i2c bus (address optional for master)
  Serial.begin(9600);
  Serial.write("Setup Complete\n\r");
}

char command;
uint8_t tempSpeed;
uint8_t tempDistance;
bool tempDir;
char tempLR;

uint8_t byte1;
uint8_t byte2;

void loop()
{
  
  Serial.write("Enter command:\n\r
                Straight Line - s\n\r
                Arc Distance - a\n\r
                In-Place - i\n\r");
  command = Serial.read();
  if (command == 's')
  {
    Serial.write("Enter speed (-31 - 31)\n\r");
    tempSpeed = Serial.read();
    Serial.write("Enter distance (0-255)\n\r");
    tempDistance = Serial.read();
    straightLine((tempSpeed > 0), abs(tempSpeed), tempDistance);
  }
  else if (command == 'a')
  {
    Serial.write("Enter speed (-31 - 31)\n\r");
    tempSpeed = Serial.read();
    Serial.write("Enter distance (0-255)\n\r");
    tempDistance = Serial.read();
    Serial.write("Enter LR direction (l/r)");
    tempLR = Serial.read();
    arcDistance((tempSpeed > 0), (tempLR == 'r'), abs(tempSpeed), tempRadius, tempDistance);
  }
  else if (command == 'i')
  {
    Serial.write("Enter speed (-31 - 31)\n\r");
    tempSpeed = Serial.read();
    Serial.write("Enter degrees (0-360)\n\r");
    tempDistance = Serial.read();
    Serial.write("Enter LR direction (l/r)");
    tempLR = Serial.read();
    inPlace((tempLR == 'r'), tempSpeed, tempDistance);
  }
  delay(10000);
}

int straightLine(bool dir, uint8_t speed, uint8_t distance)
{
  byte1 = ((00 << AB_SHIFT) & AB_MASK) |
          ((dir << C_SHIFT) & C_MASK) |
          ((distance << DEFGH_SHIFT) & DEFGH_MASK);
  byte2 = distance;
  Wire.beginTransmission(DEVICE_ADDRESS); // transmit to device #4
  Wire.write(byte1);        // 
  Wire.write(byte2);             
  Wire.endTransmission();    // stop transmitting
}

int arcDistance (bool FBdir, bool LRdir, uint8_t speed, uint8_t radius, uint8_t distance)
{
  byte1 = ((01 << AB_SHIFT) & AB_MASK) |
          ((dir << C_SHIFT) & C_MASK) |
          ((distance << DEFGH_SHIFT) & DEFGH_MASK);
  byte2 = ((distance << A_DIST_SHFT) & A_DIST) |
          ((radius << A_RAD_SHFT) & A_RAD);
  Wire.beginTransmission(DEVICE_ADDRESS); // transmit to device #4
  Wire.write(byte1);        // 
  Wire.write(byte2);             
  Wire.endTransmission();    // stop transmitting
}

int inPlace (bool LRDir, uint8_t speed, uint8_t degrees)
{
  byte1 = ((10 << AB_SHIFT) & AB_MASK) |
          ((dir << C_SHIFT) & C_MASK) |
          ((distance << DEFGH_SHIFT) & DEFGH_MASK);
  byte2 = degrees;
  Wire.beginTransmission(DEVICE_ADDRESS); // transmit to device #4
  Wire.write(byte1);        // 
  Wire.write(byte2);              
  Wire.endTransmission();    // stop transmitting
}
