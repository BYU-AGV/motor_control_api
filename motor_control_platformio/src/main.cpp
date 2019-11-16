#include <Arduino.h>
#include <stdint.h>
#include "motor.h"

#define BAUD_RATE 9600
#define PWM_1 5
#define PWM_2 6
#define ENA_1 12
#define ENA_2 13
#define DIR_1 7
#define DIR_2 8

#define SERIAL_BUFFER_LENGTH 4

uint8_t pwm_val = 0;
uint8_t left_target;
uint8_t right_target;
uint16_t count = 0;
uint8_t past_pwm_val;

uint8_t upper = 240;
uint8_t lower = 10;

String inString = "";
char buffer[10] = {};

static motor motorRight = motor(PWM_1, ENA_1, DIR_1, MOTOR_RIGHT);
static motor motorLeft = motor(PWM_2, ENA_2, DIR_2, MOTOR_LEFT);

void setup() {
    Serial.begin(BAUD_RATE);

    motorRight.enable();
    motorLeft.enable();
}

void loop() {


    if (pwm_val != past_pwm_val) {
        Serial.println(pwm_val);
        past_pwm_val = pwm_val;
    }

    count++;
    if (count == 100) {
        count = 0;
        if (right_target > motorRight.get_speed())
            motorRight.inc_speed();
        else if (right_target < motorRight.get_speed())
            motorRight.dec_speed();
        if (left_target > motorLeft.get_speed())
            motorLeft.inc_speed();
        else if (left_target < motorLeft.get_speed())
            motorLeft.dec_speed();
    }

    while (Serial.available() > 0) {
        Serial.readBytes(buffer, SERIAL_BUFFER_LENGTH);
        Serial.println(buffer);
        left_target = (uint8_t)buffer[0];
        motorLeft.set_direction(buffer[1]);
        right_target = (uint8_t)buffer[2];
        motorRight.set_direction(buffer[3]);

        /*
                if (target > upper) {
                    target = 255;
                } else if (target < lower) {
                    target = 0;
                }
            */
    }
}