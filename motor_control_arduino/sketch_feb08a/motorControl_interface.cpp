#include "motorControl_interface.h"

motorControl_interface::motorControl_interface()
{
  
}

motorControl_interface::motorControl_interface(int deviceAddressIn) :
	deviceAddress(deviceAddressIn)
{
//  Wire.begin(); // join i2c bus (address optional for master)
//  Serial.begin(9600);
//  while(!Serial);
//  Serial.write("Setup Complete\n\r");
//  Serial.setTimeout(10000);
}

void motorControl_interface::serialAsk()
{
	Serial.write("\n\rEnter Linear Velocity: \n\r");
	while(!Serial.available()) { }
	int8_t linVel = Serial.parseInt();
	Serial.write("\n\rEnter Angular Velocity: \n\r");
	while(!Serial.available()) { }
	int8_t angVel = Serial.parseInt();
	
	sendData(linVel, angVel);
}

void motorControl_interface::sendData(int8_t linearVelocity, int8_t angularVelocity)
{
	Wire.beginTransmission(deviceAddress); // transmit to device #4
	Wire.write(linearVelocity);
	Wire.write(angularVelocity);
	Wire.endTransmission();    // stop transmitting
}
