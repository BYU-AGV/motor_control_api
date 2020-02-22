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
#define ROBOT_TRACK_WIDTH_IN		//distance from center of one wheel to the other in inches
#define WHEEL_DIAMETER_IN 14		//diameter of the wheels in inches

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

//constructor
motorController::motorController(Sabertooth* h_bridge, uint16_t smPeriod) :
			smPeriod(smPeriod),
			ST(h_bridge)
{
	//setup
	
	//init sercom slave for instructions from main controller
	//I2CSlave = new SERCOM(SERCOM0);
	//I2CSlave->initSlaveWIRE(MC_SLAVE_ADDRESS);
	//I2CSlave->prepareAckBitWIRE();
	//SERCOM0->I2CS.CTRLB.bit.SMEN = 1;	//set smart mode, auto ACK on reading of DATA
	
	//init master i2c for communication with encoders								may be unnecesary
	//I2CMaster = new SERCOM(SERCOM1);
	//I2CMaster->initMasterWIRE(BAUD_RATE);
  
	/*
	uint8_t currInstruction = I2CSlave.readDataWIRE();
	I2CMaster.sendDataMasterWIRE(NEED_SPEED_INST);
	*/
  //Wire.begin(35);

  //Serial.write("MotorController Setup Complete\n\r");
}

//destructor
motorController::~motorController() {}

//takes lin and ang velocity, calculates ang vel for each wheel, stores in targetSpeeds struct
void motorController::inputToTarget(int8_t linearVelocityIn, int8_t angularVelocityIn)
{
	//placeholder
	targetSpeeds.leftSpeed = linearVelocityIn + angularVelocityIn/2;
	targetSpeeds.rightSpeed = linearVelocityIn - angularVelocityIn/2;
}

//reads lin and ang vels from i2c, converts to target speeds for each wheel
void motorController::getInstruction()
{
  int8_t targetLinearVelocity = Wire.read();
  int8_t targetAngularVelocity = Wire.read();
  
  //converts from lin and ang to angular for each wheel, stores in targetSpeeds struct
  inputToTarget(targetLinearVelocity, targetAngularVelocity);
  
  instRecievedFlag = false;	//lower instRecievedFlag
}

//Gets actual left motor speed from encoders
mc_speed_t motorController::getLeftSpeed()
{
	//placeholder until encoders are ready
	return targetSpeeds.leftSpeed;
}

//Gets actual right motor speed from encoders
mc_speed_t motorController::getRightSpeed()
{
	//placeholder until encoders are ready
	return targetSpeeds.rightSpeed;
}

//verifies that current speed matches desired speed, changes motor speeds if necesary
void motorController::PIDfunction()
{
	//placeholder, needs implementation
	//mc_speed_t currLeftSpeed = getLeftSpeed();
	//mc_speed_t currRightSpeed = getRightSpeed();
	
	controlSpeeds.leftSpeed = targetSpeeds.leftSpeed;
	controlSpeeds.rightSpeed = targetSpeeds.rightSpeed;
 
  ST->motor(1, controlSpeeds.rightSpeed);
  ST->motor(2, controlSpeeds.leftSpeed);
}

//get distance left wheel has traveled from encoders
mc_distance_t motorController::getLeftDistance()
{
	//placeholder until encoders are ready
	return 0;
}

//get distance right wheel has traveled from encoders
mc_distance_t motorController::getRightDistance()
{
	//placeholder until encoders are ready
	return 0;
}

//helper function to stop robot
void motorController::stopRobot()
{
	ST->stop();
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
			if(instRecievedFlag) getInstruction();	//if theres a new instruction
			PIDfunction();	//do PID, update motors
		}
		break;
		case gameController_st:
		{
		}
		break;
	}
}
