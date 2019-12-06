#include "motorController.h"

#define SM_DEBUG_ON 1	//used to turn debug statements on/off
#define MAX_SPEED_FPS 7.333	//5 mph

//constructor
motorController::motorController(motor leftMotor, motor rightMotor, smPeriod) :
			leftMotor(leftMotor), rightMotor(rightMotor),
			smPeriod(smPeriod),
			targetSpeed(0),
			targetDistance(0),
			FBDir(FORWARD),
			LRDir(RIGHT),
			isAvailable(true)
{
	
}

//destructor
motorController::~motorController()
{}

//drive robot in a straight line for a certain distance
void motorController::straightLine(mc_speed_t speed, mc_distance_t distance, mc_FBDir_t direction)
{
	this->targetSpeed = speed;
	this->targetDistance = distance;
}

//drive robot in an arc of a certain radius for a certain distance
//use turnRadius 0 for car turn, ie. using one wheel
void motorController::turnAtRadius(mc_LRDir_t LRdir, mc_FBDir_t FBdir,
		mc_distance_t turnRadius, mc_speed_t speed, mc_distance_t distance)
{
}

//rotate robot in place by a certain number of degrees
//use degrees=180 to turn around
//use degrees=360 to do a little dance
void motorController::turnInPlace(mc_LRDir_t direction, mc_rotation_t degrees)
{
}

//used to find if robot is occupied. If false, robot is free for a command
inline bool motorController::isAvailable() { return isAvailable; }

//sets instruction recieved flag
inline void motorController::instRecieved() { instRecievedFlag = true; }

//lowers gameController flag
inline void motorController::stopGameController() { gameControllerFlag = false; }

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

//verifies that current speed matches desired speed, adjusts if necessary (PID)
void motorController::speedCheck()
{
	
}

//checks if robot has traversed target distance, sets instruction completed flag
inline void motorController::distCheck()
{
	if(average(getLeftDistance(), getRightDistance()) >= targetDistance)
	{
		instCompleted = true;
	}
}

//helper functino to stop robot
void motorController::stopRobot()
{
	leftMotor.disable();
	rightMotor.disable();
	leftMotor.set_speed(0);
	rightMotor.set_speed(0);
}

//standard state machine tick function
void motorController::tick()
{
	//debug SM
	if(SM_DEBUG_ON)
	{
		switch(currState)
		{
			case init_st:
			{
				if(prevState != currState)
				{
					printf("currentState = init_st");
					prevState = currState;
				}
			}
			break;
			case getInstruction_st:
			{
				if(prevState != currState)
				{
					printf("currentState = getInstruction_st");
					prevState = currState;
				}
			}
			break;
			case executingInstruction_st:
			{
				if(prevState != currState)
				{
					printf("currentState = executingInstruction_st");
					prevState = currState;
				}
			}
			break;
			case gameController_st:
			{
				if(prevState != currState)
				{
					printf("currentState = gameController_st");
					prevState = currState;
				}
			}
			break;
		}
	}
	
	//advance state
	switch(currState)
	{
		case init_st:
		{
			currState = getInstructions;
			instRecievedFlag = false;
			isAvailable = true;
		}
		break;
		case getInstruction_st:
		{
			if(instRecievedFlag)
			{
				switch(nextInstruction)
				{
					case straightLine_inst:
					{
						currState = executingInstruction_st;
					}
					break;
					case turnRad_inst:
					{
						currState = executingInstruction_st;
					}
					break;
					case turnInPlace_inst:
					{
						currState = executingInstruction_st;
					}
					break;
					case gameControl_inst:
					{
						currState = gamecontroller_st;
					}
					break;
				}
			}
		}
		break;
		case executingInstruction_st:
		{
			if(instComplete)
			{
				stopRobot();
				currState = getInstructions_st;
				isAvailable = true;
				instRecievedFlag = false;
				instComplete = false;
			}
		}
		break;
		case gameController_st:
		{
			if(!gameControllerFlag)
			{
				currState = getInstruction_st;
				isAvailable = true;
				instRecievedFlag = false;
			}
		}
		break;
		
	}
	
	//state action
	switch(currState)
	{
		case init_st:
		break;
		case getInstruction_st:
		break;
		case executingInstruction_st:
		{
			distCheck(); 
			speedCheck();
		}
		break;
		case gameController_st:
		{
		}
		break;

	}
	
}
