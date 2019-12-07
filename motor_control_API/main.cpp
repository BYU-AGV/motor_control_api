/*
 * motor control.cpp
 *
 * Created: 12/5/2019 4:42:57 PM
 * Author : User
 */ 

#include <Arduino.h>
#include <stdio.h>
#include <stdint.h>
#include "sam.h"
#include "motorController.h"
#include "motor.h"

#define PWM_1 5
#define PWM_2 6
#define ENA_1 12
#define ENA_2 13
#define DIR_1 7
#define DIR_2 8

#define NEED_SPEED_INST 0x12

void initialize()
{
	
	
}

int main(void)
{
    /* Initialize the SAM system */
    SystemInit();

    /* Replace with your application code */
	motor leftMotor(PWM_1, ENA_1, DIR_1, MOTOR_LEFT);
	motor rightMotor(PWM_2, ENA_2, DIR_2, MOTOR_RIGHT);
	
	motorController Controller(leftMotor, rightMotor, 100);
    while (1) 
    {
		//check for instructions
		Controller.tick();
		//wait manager period
    }
}
