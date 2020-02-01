//BYU AVG Robot API
//

#ifndef MOTORCONTROLLER_H
#define MOTORCONTROLLER_H

#include <stdint.h>
#include <Wire.h>
#include <Sabertooth.h>
#include "motor.h"	//path to motor.h
//#include "encoder.h"		//path to encoders.h

#define MC_SLAVE_ADDRESS 0x00

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
	executingInstruction_st,	//executes received instructions
	gameController_st,			//used for controlling robot with game controller
	
}motorController_st_t;

enum instruction_e
{
	straightLine_inst = 0,
	turnRad_inst = 1,
	turnInPlace_inst = 2,
	gameControl_inst = 3
};

//available instructions (Should do a type with instruction string, parse within)
typedef struct
{
	//instruction data
	instruction_e funcCall;
	mc_speed_t instSpeed;
	mc_distance_t instDistance;
	mc_distance_t instRadius;
	mc_FBDir_t instFBDir;
	mc_LRDir_t instLRDir;
	mc_rotation_t instDegrees;
} instruction_t;

class motorController
{
public:
	motorController(motor leftMotor, motor rightMotor, Sabertooth* h_bridge, uint16_t smPeriod);	//constructor
	~motorController();	//destructor
	
	const uint16_t smPeriod;	//state machine period
	
	//motion functions
	void straightLine(mc_speed_t speed, mc_distance_t distance, mc_FBDir_t direction);
	void turnAtRadius(mc_LRDir_t LRdir, mc_FBDir_t FBdir, mc_distance_t turnRadius, mc_speed_t speed, mc_distance_t distance);
	void turnInPlace(mc_LRDir_t direction, mc_rotation_t degrees);

	bool isAvailable();		//returns availability of motor controller
	void getInstruction();	//gets instruction from i2c, sets instruction received flag
	void stopGameController();	//lowers gameController flag
	void tick();	//standard tick function
  void instReceived() {tempFlag = true;};
	
private:
	//motors
	motor leftMotor;
	motor rightMotor;
	void stopRobot();
  Sabertooth* ST;
	
	//encoder functions
	mc_speed_t getLeftSpeed();
	mc_speed_t getRightSpeed();
	mc_distance_t getLeftDistance();
	mc_distance_t getRightDistance();
	
	void updateMotors();
	void speedCheck();	//checks if speed needs to be adjusted
	void distCheck();	//checks if target distance has been accomplished
	
	//targets used for checking in execution state
	mc_speed_t leftTargetSpeed,		//used to maintain correct speed
			   rightTargetSpeed;		//used to maintain correct speed
	mc_distance_t targetDistance;	//used to control run time
	
	//comm channels
	//SERCOM *I2CSlave;	//for receiving instructions
	//SERCOM *I2CMaster;	//for communication with encoders
	//USBDeviceClass gameController;
  
	
	//directions
	mc_FBDir_t leftDir, rightDir;
	mc_LRDir_t turnDir;
	
	//state machine variables/flags
	motorController_st_t currState, prevState;
	bool availableFlag;	//availability flag
	bool instCompleteFlag;	//instruction complete flag
	bool instRecievedFlag;	//indicates if an instruction has been received
  bool tempFlag;
	bool gameControllerFlag;	//indicates if game controller is being used
	instruction_t nextInstruction;	//instruction to be executed
};
#endif
