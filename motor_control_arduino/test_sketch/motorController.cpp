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
#define PWM_FACTOR (31 / MAX_SPEED_FPS)
#define TURN_FACTOR (127 / MAX_TURN_RADIUS)

//macro for averaging
#define avg(a, b) ((a + b) / 2)

//macro to convert real speed in feet per second to PWM value
#define FPStoPWM(speedIn) (speedIn * PWM_FACTOR)

//macro to do the math to convert
#define velCalc(speedIn, radiusIn) (2 * M_PI * speedIn * radiusIn)

//macro to convert from 255 instruction to 360 degree value
#define instToDeg(instVal) (instVal * 360 / 255)

//constructor
motorController::motorController(motor leftMotor, motor rightMotor, Sabertooth* h_bridge, uint16_t smPeriod) :
			leftMotor(leftMotor), rightMotor(rightMotor),
			smPeriod(smPeriod),
			leftTargetSpeed(0),
			rightTargetSpeed(0),
			leftDir(FORWARD),
			rightDir(FORWARD),
			targetDistance(0),
			turnDir(RIGHT),
			availableFlag(true),
      ST(h_bridge)
{
	//setup
	
	//init sercom slave for instructions from main controller
	//I2CSlave = new SERCOM(SERCOM0);
	//I2CSlave->initSlaveWIRE(MC_SLAVE_ADDRESS);
	//I2CSlave->prepareAckBitWIRE();
	//SERCOM0->I2CS.CTRLB.bit.SMEN = 1;	//set smart mode, auto ACK on reading of DATA
	
	//init master i2c for communication with encoders
	//I2CMaster = new SERCOM(SERCOM1);
	//I2CMaster->initMasterWIRE(BAUD_RATE);
	
	//game controller for direct control
	//gameController.init();
  
  //SabertoothTXPinSerial.begin(9600); // 9600 is the default baud rate for Sabertooth packet serial.
  //ST->autobaud();
//  ST = h_bridge;
  //ST->motor(1, 64);
  //delay(1000);
  //ST->motor(1, 0);
  
	/*
	uint8_t currInstruction = I2CSlave.readDataWIRE();
	I2CMaster.sendDataMasterWIRE(NEED_SPEED_INST);
	*/
  //Wire.begin(35);

  Serial.write("MotorController Setup Complete\n\r");
}

//destructor
motorController::~motorController() {}

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
  Serial.write("Straight line command - Speed: ");
  Serial.println(speed);
  Serial.write("Distance: ");
  Serial.println(distance);

  if(BOTH_MOTORS)
  {
    ST->drive((direction ? 1 : -1) * speed * PWM_FACTOR);
    ST->turn(0);
//    ST->motor(1, (direction ? 1 : -1) * speed * PWM_FACTOR);
//    ST->motor(2, (direction ? 1 : -1) * speed * PWM_FACTOR);
  }
  else
  {
    ST->motor(1, (direction ? 1 : -1) * speed * PWM_FACTOR);
  }

  /*
	leftTargetSpeed = speed;
	rightTargetSpeed = speed;
	targetDistance = distance;
	leftDir = direction;
	rightDir = direction;
	
	updateMotors();
 */
}

//drive robot in an arc of a certain radius for a certain distance
//use turnRadius 0 for car turn, ie. using one wheel
void motorController::turnAtRadius(mc_LRDir_t LRdir, mc_FBDir_t FBdir,
		mc_distance_t turnRadius, mc_speed_t speed, mc_distance_t distance)
{
  //Serial.write("Radius turn command - Speed: ");
  //Serial.println(speed);
  //Serial.write("Radius: ");
  //Serial.println(turnRadius);
  //Serial.write("Distance: ");
  //Serial.println(distance);
  //Serial.write("Diraction: ");
  //Serial.println(LRdir);

  //ST->drive(speed * PWM_FACTOR);
  //ST->turn(turnRadius * TURN_FACTOR);

  /*
	turnDir = LRdir;
	leftDir = (rightDir = FBdir);
	
	mc_speed_t insideTargetSpeed = velCalc(speed, turnRadius - WHEEL_DIAMETER_IN/2),
				outsideTargetSpeed = velCalc(speed, turnRadius + WHEEL_DIAMETER_IN/2);
				
	leftTargetSpeed = (LRdir == LEFT) ? insideTargetSpeed : outsideTargetSpeed;
	rightTargetSpeed = (LRdir == LEFT) ? outsideTargetSpeed : insideTargetSpeed;
	targetDistance = distance;
	
	updateMotors();
 */
}

//rotate robot in place by a certain number of degrees
//use degrees=180 to turn around
//use degrees=360 to do a little dance
void motorController::turnInPlace(mc_LRDir_t direction, mc_rotation_t degrees)
{
	//ST->drive(0);
	//ST->turn((direction == LEFT) ? -64 : 64);
}

//used to find if robot is executing a control. If false, robot is free for a command
inline bool motorController::isAvailable() { return availableFlag; }

//sets instruction received flag
void motorController::getInstruction()
{
	//if(I2CSlave->isDataReadyWIRE())
 if(tempFlag)
	{
    tempFlag = false;
		//get 2 bytes
    uint8_t inst1 = Wire.read();
    uint8_t inst2 = Wire.read();
    uint16_t instructionStr = 0;

    //Serial.write("Get Instruction Called\n\r");
    //ST->motor(1, 80);
    //delay(10000);
    /*ST->motor(1, 0);
    delay(10000);
    ST->motor(1, 80);
    delay(10000);
    ST->motor(1, 0);
    */
    //Serial.println(inst1);
    //Serial.println(inst2);
		instructionStr = (inst1 << INSTRUCTION_GET_SHIFT) + inst2;//(I2CSlave->readDataWIRE() << INSTRUCTION_GET_SHIFT)
								//+ (I2CSlave->readDataWIRE());
    //Serial.print(instructionStr, BIN);
    //Serial.print("\n\r");
    
		//parse first byte for function call, direction, and speed
		nextInstruction.funcCall = (instruction_e) ((instructionStr & INSTRUCTION_FUNC_MASK) >> INSTRUCTION_FUNC_SHIFT);
		nextInstruction.instFBDir = (mc_FBDir_t) ((instructionStr & INSTRUCTION_FB_DIR_MASK) >> INSTRUCTION_DIR_SHIFT);
		nextInstruction.instSpeed = (instructionStr & INSTRUCTION_SPEED_MASK) >> INSTRUCTION_SPEED_SHIFT;
		
		//parse second byte based on function
		switch(nextInstruction.funcCall)
		{
			case straightLine_inst:
			{
				nextInstruction.instDistance =
					(instructionStr & INSTRUCTION_STRAIGHT_DIST_MASK) >> INSTRUCTION_STRAIGHT_DIST_SHIFT;
			}
			break;
			case turnRad_inst:
			{
				nextInstruction.instDistance =
					(instructionStr & INSTRUCTION_ARC_DIST_MASK) >> INSTRUCTION_ARC_DIST_SHIFT;
				nextInstruction.instRadius =
					(instructionStr & INSTRUCTION_ARC_RADIUS_MASK) >> INSTRUCTION_ARC_RADIUS_SHIFT;
			}
			break;
			case turnInPlace_inst:
			{
				nextInstruction.instDegrees =
					instToDeg((instructionStr & INSTRUCTION_IN_PLACE_DEG_MASK) >> INSTRUCTION_IN_PLACE_DEG_SHIFT);
			}
			break;
			case gameControl_inst:
			break;
		}
		instRecievedFlag = true;
	}
}

//lowers gameController flag
inline void motorController::stopGameController() { gameControllerFlag = false; }

//Gets actual left motor speed from encoders
mc_speed_t motorController::getLeftSpeed()
{
	//placeholder until encoders are ready
	return leftTargetSpeed;
}

//Gets actual right motor speed from encoders
mc_speed_t motorController::getRightSpeed()
{
	//placeholder until encoders are ready
	return rightTargetSpeed;
}

//verifies that current speed matches desired speed, adjusts if necessary (PID)
void motorController::speedCheck()
{
	if(leftTargetSpeed != getLeftSpeed() ||
	   rightTargetSpeed != getRightSpeed())
	{
		//insert PID implementation here
	}
}

//get distance left wheel has traveled from encoders
mc_distance_t motorController::getLeftDistance()
{
	//placeholder until encoders are ready
	targetDistance--;
	return 0;
}

//get distance right wheel has traveled from encoders
mc_distance_t motorController::getRightDistance()
{
	//placeholder until encoders are ready
	targetDistance--;
	return 0;
}

//checks if robot has traversed target distance, sets instruction completed flag
inline void motorController::distCheck()
{
	if(avg(getLeftDistance(), getRightDistance()) >= targetDistance)
	{
		instCompleteFlag = true;
	}
}

//helper function to stop robot
void motorController::stopRobot()
{
  ST->stop();
  
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
			availableFlag = true;
		}
		break;
		case getInstruction_st:
		{
			if(instRecievedFlag)
			{
        instRecievedFlag = false;
				switch(nextInstruction.funcCall)
				{
					case straightLine_inst:
					{
						currState = executingInstruction_st;	//advance state
						//call straight line function
						straightLine(nextInstruction.instSpeed,
									 nextInstruction.instDistance,
									 nextInstruction.instFBDir);
						availableFlag = false;	//set as unavailable
					}
					break;
					case turnRad_inst:
					{
						currState = executingInstruction_st;	//advance state
						//call turn at radius function
						turnAtRadius(nextInstruction.instLRDir,
									 nextInstruction.instFBDir,
									 nextInstruction.instRadius,
									 nextInstruction.instSpeed,
									 nextInstruction.instDistance);
						availableFlag = false;	//set as unavailable
					}
					break;
					case turnInPlace_inst:
					{
						currState = executingInstruction_st;	//advance state
						//call turn in place function
						turnInPlace(nextInstruction.instLRDir,
									nextInstruction.instDegrees);
						availableFlag = false;	//set as unavailable
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
			if(instCompleteFlag)
			{
				currState = getInstruction_st;
				stopRobot();
				availableFlag = true;
				instRecievedFlag = false;
				instCompleteFlag = false;
			}
		}
		break;
		case gameController_st:
		{
			if(!gameControllerFlag)
			{
				currState = getInstruction_st;
				availableFlag = true;
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
			distCheck();	//check to see if instruction is complete
			speedCheck();	//check to make sure speed/wheels are correct (PID)
		}
		break;
		case gameController_st:
		{
		}
		break;

	}
	
}
