/*

*/
#include<"Arduino.h">
#include<stdint.h>

#define PWM_1_PIN 5
#define PWM_2_PIN 6

#define ENA_1 12
#define ENA_2 13

#define DIR_1 7
#define DIR_2 8

int pwm_val;
static int arg1, arg2;
static bool command_complete;

void setup() {
    pwm_val = 255;
    Serial.begin(9600);
    pinMode(ENA_1, OUTPUT);
    pinMode(ENA_2, OUTPUT);
    pinMode(DIR_1, OUTPUT);
    pinMode(DIR_2, OUTPUT);
    
}

void loop() {
    digitalWrite(ENA_1, 1);
    digitalWrite(ENA_2, 1);
    digitalWrite(DIR_1, 1);
    digitalWrite(DIR_2, 0);
    
    /*
    for (int i = 0; i < 255; i++) {
      delay(10);
    analogWrite(PWM_1_PIN, i);
    analogWrite(PWM_2_PIN, i);
    Serial.println(i);
    }
    
    */
    analogWrite(PWM_1_PIN, pwm_val);
    analogWrite(PWM_2_PIN, pwm_val);
    
    Serial.println(pwm_val);
  
    if (Serial.available()) {
      int serial = Serial.parseInt();
      if (serial) {
        pwm_val = serial;
      }
    }
    
}
