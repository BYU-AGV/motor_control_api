#include "AGV_motorControl_API.h"
#include <cmath>

//robot dimensions
#define ROBOT_TRACK_WIDTH_IN		//distance from center of one wheel to the other in inches
#define WHEEL_DIAMETER_IN 14		//diameter of the wheels in inches
#define TURN_THRESHHOLD .10			//straightness threshold (at what percent difference do we consider the robot straight)

//calculated robot dimensions
#define HALF_TRACK_WIDTH_IN (ROBOT_TRACK_WIDTH_IN / 2)		//half width of wheel track
#define IN_PLACE_THRESHHOLD (ROBOT_TRACK_WIDTH_IN / 4)		//turn radius below which robot will rotate in place

//factor to use to convert feet per second to PWM value
#define PWM_FACTOR

//speed at which robot can rotate in place
#define ROBOT_IN_PLACE_ROTATION_SPEED

//wheel control register locations
#define WHEEL_CONTROL_BASE_ADDR
#define WHEEL_BOTH_OFFSET
//individual wheel masks for writing PWM to individual wheels
#define WHEEL_LEFT_PWM_MASK
#define WHEEL_RIGHT_PWM_MASK
//individual wheel offsets for shifting
#define WHEEL_LEFT_OFFSET
#define WHEEL_RIGHT_OFFSET
//individual control offsets for shifting
#define PWM_OFFSET
#define FORWARD_BACKWARD_OFFSET

//addresses for encoder registers
#define ENCODER_LEFT_ADDR
#define ENCODER_RIGHT_ADDR

//stop value
#define PWM_STOP_VALUE 0

//macro to convert real distance in feet to degrees of wheel rotation
#define distToRot(distance) ((distance * 12) / (M_PI * WHEEL_DIAMETER_IN))

//macro to convert real speed in feet per second to PWM value
#define FPStoPWM(speed) (speed * PWM_FACTOR)

//macro to do the math to convert 
#define velCalc(speed, radius) (2 * M_PI * speed * radius)

#define INtoFT(inches) (inches / 12)

typedef int wheelRotation_t;	//in degrees
typedef unsigned char PWMSpeed_t;	//integer value from 0 to 255

//PWM control structure and type
//used to control H-bridge
typedef struct PWMControl_t
{
	PWMSpeed_t PWMSpeed,	//0 to 255
	motorControl_FBDirection_t direction	// FORWARD or BACKWARD
}PWMControl_t;

static PWMControl_t leftControl, rightControl;			//declare static control structures
static motorControl_speed_t targetSpeed;				//speed control (in feet/sec or mph???)												//FIXME
static motorControl_FBDirection_t targetDirection;		//FORWARD or BACKWARD
static motorControl_distance_t targetTurnRadius;		//differential wheel speed control (in feet)
static motorControl_LRDirection_t targetTurnDirection;	//LEFT or RIGHT

//helper function to write to directly to registers
void regWrite(baseAddress, offset, value)
{
	
}

//helper function to write to register by mask
void regWrite(baseAddress, offset, mask, value)
{
	
}

//helper function to read registers
uint32_t regRead(baseAddress, offset)
{
	
}

//helper function to adjust PWM of left wheel
//for adjusting left wheel only, use to keep robot straight while already moving
void leftWheelPWM()
{
	int16_t leftWriteValue;		//initialize write string
	leftWriteValue = (leftControl.PWMSpeed << PWM_OFFSET) + (leftControl.direction << FORWARD_BACKWARD_OFFSET);		//set left write string to control values
	regWrite(WHEEL_CONTROL_BASE_ADDR, WHEEL_LEFT_OFFSET, WHEEL_LEFT_PWM_MASK, writeValue);									//write to register with mask
}

//helper function to adjust PWM of right wheel
//for adjusting right wheel only, use to keep robot straight while already moving
void rightWheelPWM()
{
	int16_t rightWriteValue;		//initialize write string
	rightWriteValue = (rightControl.PWMSpeed << PWM_OFFSET) + (rightControl.direction << FORWARD_BACKWARD_OFFSET);		//set right write string to control values
	regWrite(WHEEL_CONTROL_BASE_ADDR, WHEEL_RIGHT_OFFSET, WHEEL_RIGHT_PWM_MASK, writeValue);									//write to register with mask
}

//helper function to control PWM of both wheels
//starts both motors at the same time, use for starting/stopping motion
void bothWheelPWM()
{
	int16_t leftWriteValue, righWriteValue;		//initialize write strings
	leftWriteValue = (leftControl.PWMSpeed << PWM_OFFSET) + (leftControl.direction << FORWARD_BACKWARD_OFFSET);		//set left write string to control values
	rightWriteValue = (rightControl.PWMSpeed << PWM_OFFSET) + (rightControl.direction << FORWARD_BACKWARD_OFFSET);	//set right write string to control values
	int32_t writeValue = (leftWriteValue << WHEEL_LEFT_OFFSET) + (rightWriteValue << WHEEL_RIGHT_OFFSET);			//set completed write string
	regWrite(WHEEL_CONTROL_BASE_ADDR, WHEEL_BOTH_OFFSET, writeValue);												//write to registers
}

//updates PWM control structures based on turn radius and desired speed
void controlUpdate()
{
	//if turn radius is below a certain threshhold (IN_PLACE_THRESHHOLD), turns in place
	//prevents dividing by zero
	if(targetTurnRadius < IN_PLACE_THRESHHOLD)
	{
		leftControl.direction = (targetDirection == RIGHT) ? FORWARD : BACKWARD;
		rightControl.direction = (targetDirection == RIGHT) ? BACKWARD : FORWARD;
		
		leftControl.PWMSpeed = rightControl.PWMSpeed = targetSpeed;
	}
	//If the difference in wheel speeds is below a certain percent (TURN_THRESHHOLD), just drives forward
	//filters out turn instructions based on predetermined threshhold
	else if(targetTurnRadius > INtoFT(((ROBOT_TRACK_WIDTH_IN / TURN_THRESHHOLD) - HALF_TRACK_WIDTH_IN)))
	{
		float insideSpeed = (targetTurnRadius - INtoFT(HALF_TRACK_WIDTH_IN)) * (targetSpeed / targetTurnRadius);		//speed of inside/outside wheel is inside/outside turn radius times angular velocity
		float outsideSpeed = (targetTurnRadius - INtoFT(HALF_TRACK_WIDTH_IN)) * (targetSpeed / targetTurnRadius);		//angular velocity is tangential velocity divided by overall turn radius
		
		//uses turn direction to determine which wheel is inside/outside
		PWMControl_t* insideWheel = (targetTurnDirection == RIGHT) ? &rightControl: &leftControl;
		PWMControl_t* outsideWheel = (targetTurnDirection == RIGHT) ? &leftControl: &rightControl;
	
		//accounts for if turn radius is smaller that track width
		//allows for in place turning by rotating inside wheel backward and outside wheel forward
		if(targetDirection == FORWARD)
		{
			insideWheel->direction = (insideSpeed > 0) ? FORWARD : BACKWARD;
			outsideWheel->direction = (outsideSpeed > 0) ? FORWARD : BACKWARD;
		}
		else
		{
			insideWheel->direction = (insideSpeed > 0) ? BACKWARD : FORWARD;
			outsideWheel->direction = (outsideSpeed > 0) ? BACKWARD : FORWARD;
		}
		
		insideWheel->PWMSpeed = FPStoPWM(abs(insideSpeed));
		outsideWheel->PWMSpeed = FPStoPWM(abs(outsideSpeed));
	}
	else
	{
		leftControl.PWMSpeed = rightControl.PWMSpeed = FPStoPWM(targetSpeed);
		leftControl.direction = rightControl.direction = targetDirection;
	}	
	
	bothWheelPWM();	//simultaneously updates registers
}

//initialization function
void motorControl_init()
{
	//initialize control structures to 0 and FORWARD
	leftControl.PWMSpeed = rightControl.PWMSpeed = PWM_STOP_VALUE;
	leftControl.direction = rightControl.direction = FORWARD;
	bothWheelPWM();
}

//change robot speed
void AGV_motorControl_API_setSpeed(motorControl_speed_t speed, motorControl_FBDirection_t direction)
{
	targetSpeed = speed;
	targetDirection = direction;
	
	controlUpdate();
}

//change robot turn radius
void AGV_motorControl_API_setTurnRadius(motorControl_distance_t radius, motorControl_LRDirection_t direction)
{
	targetTurnDirection = direction;
	targetTurnRadius = radius;
	
	controlUpdate();
}