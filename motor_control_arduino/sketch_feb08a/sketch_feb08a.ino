#include "motorControl_interface.h"

#define DEVICE_ADDRESS 35

motorControl_interface interf(DEVICE_ADDRESS);

void setup() {
  // put your setup code here, to run once:
  Wire.begin(); // join i2c bus (address optional for master)
  Serial.begin(9600);
  while(!Serial);
  Serial.write("Setup Complete\n\r");
  Serial.setTimeout(100000);
}

void loop() {
  interf.serialAsk();
}
