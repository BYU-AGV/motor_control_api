#include <stdio.h>
#include "PID.h"

// example main for PID class
int main() {
	PID pid = PID();
	int desired_vel = 42;
	int current_vel = 50;

	
	printf("Tau right: %f\r\n", pid.tau_right(desired_vel, current_vel, 8, 7));
	printf("Tau left: %f\r\n", pid.tau_left(desired_vel, current_vel, 8, 7));

	return 0;
}
