#include "motorController.h"
#include <math.h>

#define SM_DEBUG_ON 1	//used to turn debug statements on/off

#define BOTH_MOTORS 1

#define BAUD_RATE 9600

#define MAX_SPEED_FPS 7.333	//5 mph
#define MAX_TURN_RADIUS 15

//instruction shift
#define INSTRUCTION_GET_SHIFT 8
//1st bit masks
#define INSTRUCTION_FUNC_MASK	0xC000
#define INSTRUCTION_FB_DIR_MASK	0x2000
#define INSTRUCTION_SPEED_MASK	0x1F00
//1st bit shifts
#define INSTRUCTION_FUNC_SHIFT 14
#define INSTRUCTION_DIR_SHIFT 13
#define INSTRUCTION_SPEED_SHIFT 8

//2nd bit masks
#define INSTRUCTION_STRAIGHT_DIST_MASK	0x00FF
#define INSTRUCTION_ARC_DIST_MASK	0x00F0
#define INSTRUCTION_ARC_RADIUS_MASK	0x000F
#define INSTRUCTION_IN_PLACE_DEG_MASK 0x00FF
//2nd byte shifts
#define INSTRUCTION_STRAIGHT_DIST_SHIFT 0
#define INSTRUCTION_ARC_DIST_SHIFT 4
#define INSTRUCTION_ARC_RADIUS_SHIFT 0
#define INSTRUCTION_IN_PLACE_DEG_SHIFT 0

//robot dimensions
#define ROBOT_TRACK_WIDTH_IN 32		//distance from center of one wheel to the other in inches
#define WHEEL_RADIUS_IN 14		//diameter of the wheels in inches

//scaling factor to use to convert feet per second to PWM value
#define LIN_FACTOR 1 //(31 / MAX_SPEED_FPS)
#define TURN_FACTOR 1 //(127 / MAX_TURN_RADIUS)

//macro for averaging
#define avg(a, b) ((a + b) / 2)

//macro to convert real speed in feet per second to PWM value
#define FPStoPWM(speedIn) (speedIn * LIN_FACTOR)

//macro to do the math to convert
#define velCalc(speedIn, radiusIn) (2 * M_PI * speedIn * radiusIn)

//macro to convert from 255 instruction to 360 degree value
#define instToDeg(instVal) (instVal * 360 / 255)


typedef union int32_buffer {
  int32_t value;
  uint8_t buffer[4];  
}int32_buffer;

//constructor
motorController::motorController(Sabertooth* h_bridge, uint16_t smPeriod) :
			smPeriod(smPeriod), PID_controller(h_bridge)
{
	//setup
	
}

//destructor
motorController::~motorController() {}

//takes lin and ang velocity, calculates ang vel for each wheel, stores in targetSpeeds struct
void motorController::inputToTarget(int8_t linearVelocityIn, int8_t angularVelocityIn)
{
//	targetSpeeds.leftSpeed = (linearVelocityIn + linVelAdj)/WHEEL_RADIUS_IN;
//	targetSpeeds.rightSpeed = (linearVelocityIn - linVelAdj)/WHEEL_RADIUS_IN;

targetSpeeds.leftSpeed = linearVelocityIn - ((angularVelocityIn < 0) ? (angularVelocityIn * 2): 0);
targetSpeeds.rightSpeed = linearVelocityIn - ((angularVelocityIn > 0) ? (angularVelocityIn * 2): 0);
}

//reads lin and ang vels from i2c, converts to target speeds for each wheel
void motorController::getInstruction()
{
//  int8_t targetLinearVelocity = Wire.read();
//  int8_t targetAngularVelocity = Wire.read();
//  
//  //converts from lin and ang to angular for each wheel, stores in targetSpeeds struct
//  inputToTarget(targetLinearVelocity, targetAngularVelocity);
//  
//  instRecievedFlag = false;	//lower instRecievedFlag

  int32_buffer linear_buff;
  int32_buffer angular_buff;

  Wire.read();
  linear_buff.buffer[0]= Wire.read();
  linear_buff.buffer[1]= Wire.read();
  linear_buff.buffer[2]= Wire.read();
  linear_buff.buffer[3]= Wire.read();

  angular_buff.buffer[0]= Wire.read();
  angular_buff.buffer[1]= Wire.read();
  angular_buff.buffer[2]= Wire.read();
  angular_buff.buffer[3]= Wire.read();

  int8_t targetLinearVelocity = map(linear_buff.value, -32272, 32272, -128, 127);
  int8_t targetAngularVelocity = map(angular_buff.value, -32272, 32272, -128, 127);
  
  //converts from lin and ang to angular for each wheel, stores in targetSpeeds struct
  inputToTarget(targetLinearVelocity, targetAngularVelocity);
  
  instRecievedFlag = false;  //lower instRecievedFlag
  
}

//verifies that current speed matches desired speed, changes motor speeds if necesary
void motorController::PIDfunction()
{
  //calls control function of PID controller with target speeds
  PID_controller.PID_ctrl(targetSpeeds);
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
					//Serial.println("currentState = init_st");
					prevState = currState;
				}
			}
			break;
			case getInstruction_st:
			{
				if(prevState != currState)
				{
					//Serial.println("currentState = getInstruction_st");
					prevState = currState;
				}
			}
			break;
			case executingInstruction_st:
			{
				if(prevState != currState)
				{
					//Serial.println("currentState = executingInstruction_st");
					prevState = currState;
				}
			}
			break;
			case gameController_st:
			{
				if(prevState != currState)
				{
					//Serial.println("currentState = gameController_st");
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
      targetSpeeds.leftSpeed = 0;
      targetSpeeds.rightSpeed = 0;
		}
		break;
		case getInstruction_st:
		{
			currState = executingInstruction_st;
		}
		break;
		case executingInstruction_st:
		{
		}
		break;
		case gameController_st:
		{
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
			if(instRecievedFlag) getInstruction();	//if theres a new instruction, get it
			PIDfunction();	//do PID, update motors
		}
		break;
		case gameController_st:
		{
		}
		break;
	}
}
