#include "motorController.h"

#define SM_DEBUG_ON 1	//used to turn debug statements on/off
#define MAX_SPEED_FPS 7.333

//constructor
motorController::motorController(motor leftMotor, motor rightMotor, smPeriod) :
		{
			leftMotor(leftMotor), rightMotor(rightMotor),
			smPeriod(smPeriod),
			targetSpeed(0),
			FBDir(FORWARD),
			LRDir(RIGHT),
			isAvailable(true),
			distTraveled(0)
		}
{
	
}

//destructor
motorController::~motorController()
{
}

//drive robot in a straight line for a certain distance
void motorController::straightLine(mc_speed_t speed, mc_distance_t distance)
{
	this->targetSpeed = speed;
	this->targetDistance = distance;
}

//drive robot in an arc of a certain radius for a certain distance
//use turnRadius 0 for car turn, ie. using one wheel
void motorController::turnAtRadius(mc_LRDir_t direction, mc_distance_t turnRadius, mc_speed_t speed, mc_distance_t distance)
{
}

//rotate robot in place by a certain number of degrees
//use degrees=180 to turn around
//use degrees=360 to do a little dance
void motorController::turnInPlace(mc_LRDir_t direction, mc_rotation_t degrees)
{
}

//used to find if robot is occupied. If false, robot is free for a command
bool motorController::isAvailable()
{
	return isAvailable;
}

//Gets actual left motor speed from encoders
mc_speed_t motorController::getLeftSpeed()
{
}

//Gets actual right motor speed from encoders
mc_speed_t motorController::getRightSpeed()
{
}

//get distance left wheel has traveled from encoders
mc_distance_t motorController::getLeftDistance()
{
}

//get distance right wheel has traveled from encoders
mc_distance_t motorController::getRightDistance()
{
}

//standard state machine tick function
void motorController::tick()
{
	//debug SM
	if(SM_DEBUG_ON)
	{
		switch(currState)
		{
			
		}
	}
	
	//advance state
	switch(currState)
	{
		
	}
	
	//state advance
	switch(currState)
	{
		
	}
	
}
