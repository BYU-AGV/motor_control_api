#include <Arduino.h>
#include <stdint.h>
#include "motor.h"

#define PRINT // comment this line to disable printing to serial

#define BAUD_RATE 9600
#define PWM_1 5
#define PWM_2 6
#define ENA_1 12
#define ENA_2 13
#define DIR_1 7
#define DIR_2 8

const byte numChars = 32;
char receivedChars[numChars];  // an array to store the received data

boolean newData = false;

#define SERIAL_BUFFER_LENGTH 6

uint8_t pwm_val = 0;
uint8_t left_target;
uint8_t right_target;
uint16_t count = 0;
uint8_t past_pwm_val;

uint8_t upper = 240;
uint8_t lower = 10;

uint8_t position;

String inString = "";
char buffer[10] = {};
char filtered[10] = {};

static motor motorRight = motor(PWM_1, ENA_1, DIR_1, MOTOR_LEFT);
static motor motorLeft = motor(PWM_2, ENA_2, DIR_2, MOTOR_RIGHT);

void setup() {
    Serial.begin(BAUD_RATE);
    while (!Serial)
        ;  // wait for serial to begin

    motorRight.enable();
    motorLeft.enable();
}

void recvWithEndMarker() {
    static byte ndx = 0;
    char endMarker = '\n';
    char rc;

    // if (Serial.available() > 0) {
    while (Serial.available() > 0 && newData == false) {
        rc = Serial.read();

        if (rc != endMarker) {
            receivedChars[ndx] = rc;
            ndx++;
            if (ndx >= numChars) {
                ndx = numChars - 1;
            }
        } else {
            receivedChars[ndx] = '\0';  // terminate the string
            ndx = 0;
            newData = true;
        }
    }
}

// update the motor state with the new char[] recieved
void updateMotors() {
    if (receivedChars[0] == 'S') {
        char* pch;
        pch = strtok(receivedChars, " ");
        pch = strtok(NULL, " ");
        left_target = atoi(pch);
        pch = strtok(NULL, " ");
        motorLeft.set_direction(atoi(pch));
        pch = strtok(NULL, " ");
        right_target = atoi(pch);
        pch = strtok(NULL, " ");
        motorRight.set_direction(atoi(pch));
    }
}

#ifdef PRINT
void printNewData() {
    Serial.println(String(motorLeft.get_speed()) + ' ' +
                   String(motorRight.get_speed()));
    Serial.println(String(motorLeft.get_direction()) + ' ' +
                   String(motorRight.get_direction()));
}
#endif

void loop() {
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
    recvWithEndMarker();
    if (newData) {
        updateMotors();
        newData = false;
        #ifdef PRINT
        printNewData();
        #endif
    }
}
