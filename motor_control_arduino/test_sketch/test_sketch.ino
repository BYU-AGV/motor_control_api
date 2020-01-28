#include "motorController.h"
#include "motor.h"
#include <Wire.h>

//H-bridge pins
#define PWM_1 4
#define PWM_2 5
#define ENA_1 6
#define ENA_2 7
#define DIR_1 8
#define DIR_2 9

#define TEST_PIN 2

motor leftMotor(PWM_1, ENA_1, DIR_1, MOTOR_LEFT);
motor rightMotor(PWM_2, ENA_2, DIR_2, MOTOR_RIGHT);

motorController Controller(leftMotor, rightMotor, 100);

void setup() {
  // put your setup code here, to run once:
  Wire.begin(35);
  Wire.onReceive(receiveEvent);
  pinMode(TEST_PIN, OUTPUT);
  Serial.begin(9600);
  Serial.write("setup complete\n\r");
}

void loop() {
  // put your main code here, to run repeatedly:
//check for instructions
    Controller.tick();
    
    //for testing
    digitalWrite(TEST_PIN, 1);
    delay(100);
    digitalWrite(TEST_PIN, 0);
    delay(100);
}

void receiveEvent(int howMany)
{
  Serial.write("I got something\n\r");
  Controller.instReceived();
  
  //Controller.getInstruction();
}
