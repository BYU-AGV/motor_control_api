#include <stdio.h>
#include <stdint.h>

#define WHEEL_RADIUS 7
#define BASE_WIDTH 25
#define HALF_BASE_WIDTH 12.5

#define DIR_FORWARD 0
#define DIR_BACKWARD 1

struct motor_pair {
	int8_t motor_l_w; // Angular speed of left motor
	int8_t motor_r_w; // Angular speed of right motor
};

motor_pair command_to_omega (bool direction, int16_t linear_vel, uint16_t turn_radius) {
	motor_pair motors;
	motors.motor_l_w = linear_vel + (BASE_WIDTH) / WHEEL_RADIUS;
	motors.motor_r_w = linear_vel - (BASE_WIDTH) / WHEEL_RADIUS;

	return motors;
}

int main() {

	return 0;
}
