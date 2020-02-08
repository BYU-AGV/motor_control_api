#include "motorController.h"
//#include "motor.h"
#include <Wire.h>
#include <Sabertooth.h>

#define DEBUG_ON 0
//H-bridge pins
#define PWM_1 4
#define PWM_2 5
#define ENA_1 6
#define ENA_2 7
#define DIR_1 8
#define DIR_2 9

//#define TEST_PIN 2

Sabertooth ST(128);
motorController Controller(&ST, 100);

void setup() {
  // put your setup code here, to run once:
  if(DEBUG_ON) Serial.begin(9600);
  if(DEBUG_ON) Serial.write("\n\rsetup complete\n\r");
  Wire.begin(35);
  Wire.onReceive(receiveEvent);
  
  SabertoothTXPinSerial.begin(9600); // 9600 is the default baud rate for Sabertooth packet serial.
  ST.autobaud();
  ST.setRamping(40); // There are three ranges: 1-10 (Fast-Fastest), 11-20 (Slow-Slowest), and 21-80 (Slow-Fast).

  //startup sequence
  ST.drive(0);
  ST.turn(20);
  delay(1000);
  ST.drive(0);
  ST.turn(0);
  delay(1000);
  ST.drive(0);
  ST.turn(-20);
  delay(1000);
  ST.drive(0);
  ST.turn(0);
  delay(1000);

  int motorNum = 1;
  ST.motor(motorNum, -30);
  delay(1000);
  ST.motor(motorNum, 0);
  delay(1000);
  motorNum = 2;
  ST.motor(2, -30);
  delay(1000);
  ST.motor(2, 0);
  delay(1000);
}

int testVar = 0;
void loop() {
  // put your main code here, to run repeatedly:
//check for instructions
    Controller.tick();

    //for testing
    //digitalWrite(TEST_PIN, 1);
    delay(100);
    //digitalWrite(TEST_PIN, 0);
    delay(100);
}

void receiveEvent(int howMany)
{
  //Serial.write("I got something\n\r");
  Controller.instReceived();
  
  Controller.getInstruction();
}
