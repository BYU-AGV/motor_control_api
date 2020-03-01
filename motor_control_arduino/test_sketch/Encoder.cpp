#include "Encoder.h"

// time between reads before we assume the robot is stopped (in ms)
#define ZERO_VEL_VAL 1000

// constant to convert time into degrees / s
#define TIME_CONSTANT 10

// default constructor
Encoder::Encoder() {
}

// returns the current angular velocity in degrees/sec
uint16_t Encoder::get_speed() {
	// if the last encoder tick was greater than ZERO_VEL_VAL, return 0
	if ((last_tick_time - millis()) > ZERO_VEL_VAL) {
		return 0;
	}
	
	// this should return an approximation of the speed
	return TIME_CONSTANT / (last_tick_time - second_to_last_tick_time);
}

// interrupt function. this should be attached to the interrupt encoder pin via a wrapper in main
void Encoder::trigger_cnt() {
	second_to_last_tick_time = last_tick_time;
	last_tick_time = millis();

	//num_encoder_ticks++; // this is purely for measurement in testing, not needed long term
}
