#ifndef PID_H
#define PID_H

#include <Sabertooth.h>
#include "encoders.h"

//gain and conversion values
#define KP_VALUE 1	//proportional control gain
#define KI_VALUE 0	//integral control gain
#define KM_VALUE 1	//conversion from return speed to h-bridge value

//motor speed class
typedef struct{
	int8_t leftSpeed;
	int8_t rightSpeed;
}motorSpeeds_t;

class PID
{
public:
	PID(Sabertooth* STIn);
	void PID_ctrl(motorSpeeds_t angVel_ctrl);
	
private:
	Sabertooth* ST;
	encoders speedEncoders;
	static const int kp = KP_VALUE;	//proportional control gain
	static const int ki = KI_VALUE;	//integral control gain
	static const int km = KM_VALUE;	//conversion from return speed to h-bridge value
	int error_r_delay = 0, error_l_delay = 0;
	int angVel_r_delay = 0, angVel_l_delay = 0;
};

#endif
