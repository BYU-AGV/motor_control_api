#ifndef MOTOR_CONTROL_INTERFACE_H
#define MOTOR_CONTROL_INTERFACE_H

#include <Arduino.h>
#include <Wire.h>
#include <stdint.h>

class motorControl_interface
{
public:
  motorControl_interface();
	motorControl_interface(int deviceAddressIn);
	void sendData(int8_t linearVelocity, int8_t angularVelocity);
	void serialAsk();

private:
	int deviceAddress;
};

#endif
