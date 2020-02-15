#include <Arduino.h>
#include <stdint.h>
#include "Servo.h"

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
uint8_t left_power;
uint8_t right_power;
uint8_t left_target;
uint8_t right_target;
uint16_t count = 0;
uint8_t past_pwm_val;

uint8_t upper = 180;
uint8_t lower = 0;

uint8_t position;

String inString = "";
char buffer[10] = {};
char filtered[10] = {};

    Servo ST1, ST2;

void setup() {
    Serial.begin(BAUD_RATE);
    while (!Serial)
        ;  // wait for serial to begin
    //SabertoothTXPinSerial.begin(9600);
    ST1.attach( 9, 1000, 2000);
    ST2.attach( 10, 1000, 2000);
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
        pch = strtok(NULL, " ");
        right_target = atoi(pch);
        pch = strtok(NULL, " ");
    }
}

/*
#ifdef PRINT
void printNewData() {
    Serial.println(String(motorLeft.get_speed()) + ' ' +
                   String(motorRight.get_speed()));
    Serial.println(String(motorLeft.get_direction()) + ' ' +
                   String(motorRight.get_direction()));
}
#endif
*/

void loop() {
    count++;
    if (count == 100) {
        Serial.println(right_power);
        count = 0;
        if (right_target > right_power) {
            right_power++;
            ST1.write(right_power);
//            ST.motor(1, right_power);
        }
        else if (right_target < right_power) {
//            ST.motor(1, right_power);
            right_power--;
            ST1.write(right_power);
        }
        if (left_target > left_power) {
            left_power++;
            ST2.write(left_power);
        }
        else if (left_target < left_power) {
            left_power--;
            ST2.write(left_power);
        }
    }
    recvWithEndMarker();
    if (newData) {
        updateMotors();
        newData = false;
    }
}
