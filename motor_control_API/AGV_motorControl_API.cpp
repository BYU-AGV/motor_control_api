#include "AGV_motorControl_API.h"
#include <cmath>

//robot dimension
#define ROBOT_TRACK_WIDTH_IN		//distance from center of one wheel to the other in inches
#define WHEEL_DIAMETER_IN 14		//diameter of the wheels in inches

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

typedef int wheelRotation_t;	//in degrees
typedef unsigned char PWMSpeed_t;	//integer value from 0 to 255

//PWM control structure and type
//used to control H-bridge
typedef struct PWMControl_t
{
	PWMSpeed_t PWMSpeed,	//0 to 255
	motorControl_FBDirection_t direction	// FORWARD or BACKWARD
}PWMControl_t;

static PWMControl_t leftControl, rightControl;		//declare static control structures

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

//initialization function
void motorControl_init()
{
	//initialize control structures to 0 and FORWARD
	leftControl.PWMSpeed = rightControl.PWMSpeed = PWM_STOP_VALUE;
	leftControl.direction = rightControl.direction = FORWARD;
	bothWheelPWM();
}

//drive robot in a straight line for a certain distance
void motorControl_straightLine(motorControl_speed_t speed, motorControl_distance_t distance)
{
	leftControl.PWMSpeed = rightControl.PWMSpeed = FPStoPWM(speed); //set PWM of left and right controls to speed value
	leftControl.direction = rightControl.direction = FORWARD;		//set direction of left and right controls to forward
	
	bothWheelPWM();	//apply PWM controls
	
	//pseudo-code:
	//while distance read from encoders is less than input distance, continue forward
		//do something to make sure both wheels are turning at the same rate
		//maybe: if left encoder is greater than right encoder, slow down left
		//		else if right encoder is greater than left encoder, slow down right
		//		need to make sure they don't both just keep slowing eachother down until it stops
		
	leftControl.PWMSpeed = rightControl.PWMSpeed = PWM_STOP_VALUE;	//set speed values to stop
	bothWheelPWM();	//stop vehicle
}

//drive robot in an arc of a certain radius for a certain distance
//use turnRadius 0 for car turn, ie. using one wheel
void motorControl_turnAtRadius(motorControl_LRDirection_t direction, motorControl_distance_t turnRadius, motorControl_speed_t speed, motorControl_distance_t distance)
{
	PWMControl_t* outerWheelControl, innerWheelControl;
	
	//pointers for inner and outer wheel
	innerWheelControl = (direction == RIGHT) ? &rightControl : &leftControl;
	outerWheelControl = (direction == RIGHT) ? &leftControl : & rightControl;
	
	//set PWM speeds for inner and outer wheels
	innerWheelControl->PWMSpeed = FPStoPWM(velCalc(speed, turnRadius));
	outerWheelControl->PWMSpeed = FPStoPWM(velCalc(speed, turnRadius + WHEEL_DIAMETER_IN));
	
	//apply speed change
	bothWheelPWM();
	
	//pseudo-code:
	//while encoder distance traveled is less than input distance, keep going
		//if one gets farther ahead of the other one, correct it with individual controls
		
	leftControl.PWMSpeed = rightControl.PWMSpeed = PWM_STOP_VALUE;	//set speed values to stop
	bothWheelPWM();	//stop vehicle
}

//rotate robot in place by a certain number of degrees
void motorControl_turnInPlace(motorControl_LRDirection_t direction, motorControl_rotation_t degrees)
{
	if(direction == LEFT)
	{
		leftControl.direction = BACKWARD;
		rightControl.direction = FORWARD;
	}
	else
	{
		leftControl.direction = FORWARD;
		rightControl.direction = BACKWARD;
	}
	
	leftControl.PWMSpeed = ROBOT_IN_PLACE_ROTATION_SPEED;
	rightControl.PWMSpeed = ROBOT_IN_PLACE_ROTATION_SPEED;
	
	bothWheelPWM();
	
	//pseudo-code:
	//while angle change from encoders is less than input degrees
		//continue turning
		
	leftControl.PWMSpeed = rightControl.PWMSpeed = PWM_STOP_VALUE;	//set speed values to stop
	bothWheelPWM();	//stop vehicle
}

