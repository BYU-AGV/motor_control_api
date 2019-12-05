//BYU AVG Robot API
//

#ifndef MOTORCONTROLLER_H
#define MOTORCONTROLLER_H
#include <stdint.h>
#include "motor.h"
#include "encoder.h"

//typedefs
typedef int16_t mc_distance_t; //in feet
typedef uint8_t mc_speed_t; //in feet per second
typedef uint16_t mc_rotation_t; //in degrees
typedef enum { LEFT = 0, RIGHT = 1 } mc_LRDir_t;	// left/right direction
typedef enum { BACKWARD = 0, FORWARD = 1 } mc_FBDir_t;	// forward/backward direction

enum
{
	init_st,					//entry point
	getInstruction_st,			//wait for instructions from i2c
	executingInstruction_st,	//executes recieved instructions
	gameController_st,			//used for controlling robot with game controller
	
}motorController_st_t;

class motorController
{
	public:
	motorController(motor leftMotor, motor rightMotor, uint16_t smPeriod);	//constructor
	~motorController();	//destructor
	const uint16_t smPeriod;	//state machine period
	//motion functions
	void straightLine(mc_speed_t speed, mc_distance_t distance);
	void turnAtRadius(mc_LRDir_t direction, mc_distance_t turnRadius, mc_speed_t speed, mc_distance_t distance);
	void turnInPlace(mc_LRDir_t direction, mc_rotation_t degrees);

	bool isAvailable();	//returns availability of motor controller
	void tick();	//standard tick function
	
	private:
	//motors
	motor leftMotor;
	motor rightMotor;
	
	//encoder functions
	mc_speed_t getLeftSpeed();
	mc_speed_t getRightSpeed();
	mc_distance_t getLeftDistance();
	mc_distance_t getRightDistance();
	
	//targets used for checking in execution state
	mc_speed_t targetSpeed;	//used to maintain correct speed
	mc_distance_t targetDistance;	//used to control run time
	
	mc_FBDir_t FBDir;
	mc_LRDir_t LRDir;
	
	motorController_st_t currState, prevState;
	bool isAvailable;
}
#endif




