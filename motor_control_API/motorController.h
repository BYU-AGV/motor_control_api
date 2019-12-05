//BYU AVG Robot API
//

#ifndef MOTORCONTROLLER_H
#define MOTORCONTROLLER_H

#include <stdint.h>
#include "../motor_control_platformio/src/motor.h"
#include "encoder.h"

//typedefs
typedef int16_t mc_distance_t; //in feet
typedef uint8_t mc_speed_t; //in feet per second
typedef uint16_t mc_rotation_t; //in degrees
typedef enum { LEFT = 0, RIGHT = 1 } mc_LRDir_t;	// left/right direction
typedef enum { BACKWARD = 0, FORWARD = 1 } mc_FBDir_t;	// forward/backward direction

//state machine states
typedef enum
{
	init_st,					//entry point
	getInstruction_st,			//wait for instructions from i2c
	executingInstruction_st,	//executes recieved instructions
	gameController_st,			//used for controlling robot with game controller
	
}motorController_st_t;

//available instructions
enum 
{
	straightLine_inst,
	turnRad_inst,
	turnInPlace_inst,
	gameControl_inst
}instruction_e;

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
/*FIXME make getInst?*/	void instRecieved();	//sets instruction recieved flag
	void stopGameController();	//sets gameController flag
	void tick();	//standard tick function
	instruction_e nextInstruction;	//instruction to be executed
	
private:
	//motors
	motor leftMotor;
	motor rightMotor;
	void stopRobot();
	
	//encoder functions
	mc_speed_t getLeftSpeed();
	mc_speed_t getRightSpeed();
	mc_distance_t getLeftDistance();
	mc_distance_t getRightDistance();
	
	void speedCheck();	//checks if speed needs to be adjusted
	void distCheck();	//checks if target distance has been accomplished
	
	//targets used for checking in execution state
	mc_speed_t targetSpeed;		//used to maintain correct speed
	mc_distance_t targetDistance;	//used to control run time
	
	//directions
	mc_FBDir_t FBDir;
	mc_LRDir_t LRDir;
	
	//state machine variables/flags
	motorController_st_t currState, prevState;
	bool isAvailable;
	bool instComplete;
	bool instRecievedFlag;	//indicates if an instruction has been recieved
	bool gameControllerFlag;	//indicates if game controller is being used
};
#endif