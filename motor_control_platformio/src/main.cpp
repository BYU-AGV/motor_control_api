#include<Arduino.h>
#include<stdint.h>
#include"motor.h"

#define PWM_1 5
#define PWM_2 6
#define ENA_1 12
#define ENA_2 13
#define DIR_1 7
#define DIR_2 8

#define SERIAL_BUFFER_LENGTH 2

uint8_t pwm_val = 0;
uint8_t target;
uint16_t count = 0;
uint8_t past_pwm_val;

uint8_t upper = 240;
uint8_t lower = 10;

String inString = "";
char buffer[10] = {};

static motor motorLeft;
static motor motorRight;

void setup() {
    Serial.begin(9600);
    pinMode(ENA_1, OUTPUT);
    pinMode(ENA_2, OUTPUT);
    pinMode(DIR_1, OUTPUT);
    pinMode(DIR_2, OUTPUT);

    motorRight = motor(PWM_1, ENA_1, DIR_1, MOTOR_RIGHT);
    motorLeft = motor(PWM_2, ENA_2, DIR_2, MOTOR_LEFT);

}

void loop() {
    digitalWrite(ENA_1, 1);
    digitalWrite(ENA_2, 1);
    digitalWrite(DIR_1, 1);
    digitalWrite(DIR_2, 0);
    
    analogWrite(PWM_1, pwm_val);
    analogWrite(PWM_2, pwm_val);
    
    if (pwm_val != past_pwm_val) {
      Serial.println(pwm_val);
      past_pwm_val = pwm_val;
    }
    
      count++;
      if (count == 100) {
        count = 0;
        if (target > pwm_val)
          pwm_val++;
        else if (target < pwm_val)
          pwm_val--;
      }
      
    while (Serial.available() > 0) {
      Serial.readBytes(buffer, SERIAL_BUFFER_LENGTH);
      Serial.println(buffer[0]);
      target = (uint8_t)buffer[0];
      
      if (target > upper) {
        target = 255;
      } else if (target < lower) {
        target = 0;
      }
    }
}