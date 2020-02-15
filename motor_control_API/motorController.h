//BYU AVG Robot API
//

#ifndef MOTORCONTROLLER_H
#define MOTORCONTROLLER_H

#include <stdint.h>
#include <Arduino.h>
#include "motor.h"	//path to motor.h
//#include "encoder.h"		//path to encoders.h

#define MC_SLAVE_ADDRESS 0x00

//typedefs
typedef int16_t mc_distance_t; //in feet
typedef uint8_t mc_speed_t; //in feet per second
typedef uint16_t mc_rotation_t; //in degrees per second
typedef enum { LEFT = 0, RIGHT = 1 } mc_LRDir_t;	// left/right direction
typedef enum { BACKWARD = 0, FORWARD = 1 } mc_FBDir_t;	// forward/backward direction

//state machine states
typedef enum
{
	init_st,					//entry point
	getInstruction_st,			//wait for instructions from i2c
	executingInstruction_st,	//executes received instructions
	gameController_st,			//used for controlling robot with game controller
	
}motorController_st_t;

//instructions struct (probably will come from main board)
typedef struct
{
	
} instruction_t;

class motorController
{
public:
	motorController(motor leftMotor, motor rightMotor, uint16_t smPeriod);	//constructor
	~motorController();	//destructor
	
	const uint16_t smPeriod;	//state machine period
	
	//motion functions
	void straightLine(mc_speed_t speed, mc_distance_t distance, mc_FBDir_t direction);
	void turnAtRadius(mc_LRDir_t LRdir, mc_FBDir_t FBdir, mc_distance_t turnRadius, mc_speed_t speed, mc_distance_t distance);
	void turnInPlace(mc_LRDir_t direction, mc_rotation_t degrees);

	bool isAvailable();		//returns availability of motor controller
	void getInstruction();	//gets instruction from i2c, sets instruction received flag
	void stopGameController();	//lowers gameController flag, signaling to stop using game controller
	void tick();	//standard tick function
	
private:
	//motors
	motor leftMotor;
	motor rightMotor;
	
	//helper function to stop robot
	void stopRobot();
	
	//encoder functions
	mc_speed_t getLeftSpeed();	//gets current left speed
	mc_speed_t getRightSpeed();	//gets current right speed
	mc_distance_t getLeftDistance();	//gets left distance traveled
	mc_distance_t getRightDistance();	//gets right distance traveled
	
	void updateMotors();	//updates motors to run at previously adjusted speeds
	void speedCheck();	//checks if speed needs to be adjusted
	void distCheck();	//checks if target distance has been accomplished
	
	//targets used for checking in execution state
	mc_speed_t leftTargetSpeed,		//used to maintain correct speed
			   rightTargetSpeed;		//used to maintain correct speed
	mc_distance_t targetDistance;	//used to control run time/distance
	//directions
	mc_FBDir_t leftDir, rightDir;
	mc_LRDir_t turnDir;
		
	//comm channels
	SERCOM I2CSlave();	//for receiving instructions from main board
	SERCOM I2CMaster();	//for communication with encoders
	USBDeviceClass gameController;	//used for controlling robot with game controller
	instruction_t nextInstruction;	//instruction to be executed
	
	//state machine variables/flags
	motorController_st_t currState, prevState;

	bool available;	//availability flag
	bool instComplete;	//instruction complete flag
	bool instRecievedFlag;	//indicates if an instruction has been received
	bool gameControllerFlag;	//indicates if game controller is being used for control
};
#endif