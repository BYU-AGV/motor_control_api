//BYU AVG Robot API
//

#ifndef MOTORCONTROLLER_H
#define MOTORCONTROLLER_H

#include <stdint.h>
#include <Wire.h>
#include <Sabertooth.h>
//#include "motor.h"	//path to motor.h
//#include "encoder.h"		//path to encoders.h

#define MC_SLAVE_ADDRESS 0x00

//typedefs
typedef int16_t mc_distance_t; //in feet
typedef uint8_t mc_speed_t; //in feet per second
typedef uint16_t mc_rotation_t; //in degrees
typedef enum { LEFT = 0, RIGHT = 1 } mc_LRDir_t;	// left/right direction
typedef enum { BACKWARD = 0, FORWARD = 1 } mc_FBDir_t;	// forward/backward direction

//motor speed class
typedef struct{
	int8_t leftSpeed;
	int8_t rightSpeed;
}motorSpeeds_t;

//state machine states
typedef enum
{
	init_st,					//entry point
	getInstruction_st,			//wait for instructions from i2c
	executingInstruction_st,	//executes received instructions
	gameController_st,			//used for controlling robot with game controller
	
}motorController_st_t;


class motorController
{
public:
	motorController(Sabertooth* h_bridge, uint16_t smPeriod);	//constructor
	~motorController();	//destructor
	
	const uint16_t smPeriod;	//state machine period

	void getInstruction();	//gets instruction from i2c
	void tick();	//standard tick function
	void instReceived() { instRecievedFlag = true; }
	
private:
	//motors
	void inputToTarget(int8_t linearVelocityIn, int8_t angularVelocityIn);
	motorSpeeds_t targetSpeeds; //target angular velocity for each wheel
	void stopRobot();
	Sabertooth* ST;
	
	//encoder functions
	mc_speed_t getLeftSpeed();
	mc_speed_t getRightSpeed();
	mc_distance_t getLeftDistance();
	mc_distance_t getRightDistance();
	
	//PID control
		//takes target speed of each wheel,
		//calculates new target speed, stores in controlSpeeds struct
	void PIDfunction();	

	motorSpeeds_t controlSpeeds;
	
	//comm channels
	//SERCOM *I2CSlave;	//for receiving instructions
	//SERCOM *I2CMaster;	//for communication with encoders
	//USBDeviceClass gameController;
  
	
	//directions
	mc_FBDir_t leftDir, rightDir;
	mc_LRDir_t turnDir;
	
	//state machine variables/flags
	motorController_st_t currState, prevState;
	bool instRecievedFlag;	//indicates if an instruction has been received
};
#endif
