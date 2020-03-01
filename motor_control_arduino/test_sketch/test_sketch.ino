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

#define I2C_ADDRESS 0x42
// encoder interrupt pins
#define INTERRUPT_PIN_R 2
#define INTERRUPT_PIN_L 3

//#define TEST_PIN 2

Sabertooth ST(128);
motorController Controller(&ST, 100);

// wrappers for the encoder class
void enc_right_trigger() {
  Controller.encoderRightWrapper();
}

void enc_left_trigger() {
  Controller.encoderleftWrapper();
}

void setup() {
  // put your setup code here, to run once:
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
  
  if(DEBUG_ON) Serial.begin(9600);
  if(DEBUG_ON) Serial.write("\n\rsetup complete\n\r");
  Wire.begin(I2C_ADDRESS);
  Wire.onReceive(receiveEvent);

  // Encoder setup -- unfortunately, the way Ardiuno implements interrupts, this can only be done in main.
  //  it can't be done inside the encoder class. we also need the enc_*_trigger wrappers. :/
  pinMode(INTERRUPT_PIN_R, INPUT_PULLUP);
  pinMode(INTERRUPT_PIN_L, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(INTERRUPT_PIN_R), enc_right_trigger, RISING);
  attachInterrupt(digitalPinToInterrupt(INTERRUPT_PIN_L), enc_left_trigger, RISING);
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
//	Serial.write("I got something\n\r");
	Controller.instReceived();
	Controller.getInstruction();
}
