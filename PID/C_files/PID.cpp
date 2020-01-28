#include "PID.h"
#include <stdio.h>

// PI control for the right motor
double PID::PI_r(double omega_r_c, double omega_r) {
	
	// compute error
	double error = omega_dl_r - omega_r;
	
	// update delayed variables for the next time through the loop
	error_dl_r = error;
	omega_dl_r = omega_r;

	// compute the pi control signal
	double u_unsat = params.kp_r * error + params.ki_r * integrator_r;
	double u = sat(u_unsat, params.Tau_max);

	// integrator anti-windup
	if (params.ki_r != 0) {
		integrator_r = integrator_r + params.ki_r * (u - u_unsat);
	}

	return u;
}

double PID::tau_right(uint16_t vel_desired, uint16_t vel, int16_t radius_desired, int16_t radius) {
	double w_vehicle_d = vel_desired * radius_desired;
	double w_vehicle = vel * radius;

	double omega_right_d = (vel_desired - (params.d * w_vehicle_d)) / params.R;
	double omega_right = (vel - (params.d * w_vehicle)) / params.R;

	return PI_r(omega_right_d, omega_right);
}

// PI control for the left motor
double PID::PI_l(double omega_l_c, double omega_l) {
	
	// compute error
	double error = omega_dl_r - omega_l;
	
	// update delayed variables for the next time through the loop
	error_dl_l = error;
	omega_dl_l = omega_l;

	// compute the pi control signal
	double u_unsat = params.kp_l * error + params.ki_l * integrator_l;
	double u = sat(u_unsat, params.Tau_max);

	// integrator anti-windup
	if (params.ki_l != 0) {
		integrator_l = integrator_l + params.ki_l * (u - u_unsat);
	}

	return u;
}

double PID::tau_left(uint16_t vel_desired, uint16_t vel, int16_t radius_desired, int16_t radius) {
	double w_vehicle_d = vel_desired * radius_desired;
	double w_vehicle = vel * radius;

	double omega_left_d = (vel_desired + (params.d * w_vehicle_d)) / params.R;
	double omega_left = (vel + (params.d * w_vehicle)) / params.R;

	return PI_r(omega_left_d, omega_left);
}

// saturation function
double PID::sat(double in, double limit) {
	if (in > limit) return limit;
	if (in < -limit) return -limit;

	return in;
}
