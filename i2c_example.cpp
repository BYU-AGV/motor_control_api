#include <Arduino.h>
#include <Wire.h>
#include <stdint.h>

#define AB_MASK 0xC000
#define C_MASK 0x2000
#define DEFGH_MASK 0x1F00
#define BYTE_TWO_MASK 0x00FF

/*
uint16_t command_to_bits() {
}
*/

/*
I2C command syntax

2 bytes:	[a][b][c][d][e][f][g][h]
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
}

byte x = 0;

void loop()
{
  Wire.beginTransmission(35); // transmit to device #4
  Wire.write(0x2F);        // 
  Wire.write(0x64);             
  Wire.endTransmission();    // stop transmitting

  //x++;
  delay(1000);
}
