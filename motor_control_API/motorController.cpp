#include "motorController.h"
#include <math.h>

#define SM_DEBUG_ON 1	//used to turn debug statements on/off
#define MAX_SPEED_FPS 7.333	//5 mph
#define avg(a, b) ((a + b) / 2)

//robot dimensions
#define ROBOT_TRACK_WIDTH_IN		//distance from center of one wheel to the other in inches
#define WHEEL_DIAMETER_IN 14		//diameter of the wheels in inches

//factor to use to convert feet per second to PWM value
#define PWM_FACTOR

//macro to convert real speed in feet per second to PWM value
#define FPStoPWM(speedIn) (speedIn * PWM_FACTOR)

//macro to do the math to convert
#define velCalc(speedIn, radiusIn) (2 * M_PI * speedIn * radiusIn)


//constructor
motorController::motorController(motor leftMotor, motor rightMotor, smPeriod) :
			leftMotor(leftMotor), rightMotor(rightMotor),
			smPeriod(smPeriod),
			leftTargetSpeed(0),
			rightTargetSpeed(0),
			leftDir(FORWARD),
			rightDir(FORWARD),
			targetDistance(0),
			turnDir(RIGHT),
			isAvailable(true)
{
	
}

//destructor
motorController::~motorController()
{}

void motorController::updateMotors()
{
	leftMotor.set_direction(leftDir);
	rightMotor.set_direction(rightDir);
	leftMotor.set_speed(FPStoPWM(leftTargetSpeed));
	rightMotor.set_speed(FPStoPWM(rightTargetSpeed));
	
	leftMotor.enable();
	rightMotor.enable();
}

//drive robot in a straight line for a certain distance
void motorController::straightLine(mc_speed_t speed, mc_distance_t distance, mc_FBDir_t direction)
{
	leftTargetSpeed = speed;
	rightTargetSpeed = speed;
	targetDistance = distance;
	leftDir = (rightDir = direction);
	
	updateMotors();
}

//drive robot in an arc of a certain radius for a certain distance
//use turnRadius 0 for car turn, ie. using one wheel
void motorController::turnAtRadius(mc_LRDir_t LRdir, mc_FBDir_t FBdir,
		mc_distance_t turnRadius, mc_speed_t speed, mc_distance_t distance)
{
	turnDir = LRdir;
	leftDir = (rightDir = FBdir);
	
	mc_speed_t insideTargetSpeed = velCalc(speed, turnRadius - WHEEL_DIAMETER_IN/2),
				outsideTargetSpeed = velCalc(speed, turnRadius + WHEEL_DIAMETER_IN/2);
				
	leftTargetSpeed = (LRdir == LEFT) ? insideTargetSpeed : outsideTargetSpeed;
	rightTargetSpeed = (LRdir == LEFT) ? outsideTargetSpeed : insideTargetSpeed;
	targetDistance = distance;
	
	updateMotors();
}

//rotate robot in place by a certain number of degrees
//use degrees=180 to turn around
//use degrees=360 to do a little dance
void motorController::turnInPlace(mc_LRDir_t direction, mc_rotation_t degrees)
{
	
}

//used to find if robot is executing a control. If false, robot is free for a command
inline bool motorController::isAvailable() { return isAvailable; }

//sets instruction received flag
void motorController::getInstruction()
{
	
	instRecievedFlag = true;
}

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

//verifies that current speed matches desired speed, adjusts if necessary (PID)
void motorController::speedCheck()
{
	if(leftTargetSpeed != getLeftSpeed() ||
	   rightTargetSpeed != getRightSpeed())
	{
		
	}
}
//get distance left wheel has traveled from encoders
mc_distance_t motorController::getLeftDistance()
{
}

//get distance right wheel has traveled from encoders
mc_distance_t motorController::getRightDistance()
{
}

//checks if robot has traversed target distance, sets instruction completed flag
inline void motorController::distCheck()
{
	if(avg(getLeftDistance(), getRightDistance()) >= targetDistance)
	{
		instComplete = true;
	}
}

//helper function to stop robot
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
			currState = getInstruction_st;
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
						currState = gameController_st;
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
				currState = getInstruction_st;
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
		case getInstruction_st: getInstruction();
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
