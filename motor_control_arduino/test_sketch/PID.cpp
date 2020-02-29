#include "PID.h"


#define MOTOR_L 1
#define MOTOR_R 2

PID::PID(Sabertooth* STIn) :
	ST(STIn)
{
  
}

//PID control function, changes motor speeds as necessary 
void PID::PID_ctrl(motorSpeeds_t angVel_ctrl)
{
	int angVel_r_curr = rightEncoder.get_speed();
	int angVel_l_curr = leftEncoder.get_speed();
	
	// compute the error
	double error_r = angVel_ctrl.rightSpeed - angVel_r_curr;
	double error_l = angVel_ctrl.leftSpeed - angVel_l_curr;
	
	// update delayed variables for next time through the loop
	error_r_delay = error_r;
	error_l_delay = error_l;
	angVel_r_delay = angVel_r_curr;
	angVel_l_delay = angVel_l_curr;

	// compute the pi control signal
	motorSpeeds_t returnCtrl;
	returnCtrl.rightSpeed = kp * error_r;
	returnCtrl.leftSpeed = kp * error_l;
	
	ST->motor(MOTOR_L, returnCtrl.leftSpeed * km);
	ST->motor(MOTOR_R, returnCtrl.rightSpeed * km);
}
