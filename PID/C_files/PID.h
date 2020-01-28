#include <stdint.h>

#define MASS 20 // kg
#define GRAVITY 10 // chose 10 for the sake of optimization, let me know if that won't work
#define WHEEL_RADIUS 0.2
#define JM 50
#define PW 0.635
#define PD (PW / 2)

class PID {
    public:
	    PID() {
		    params.m = MASS;
		    params.g = GRAVITY;
		    params.R = WHEEL_RADIUS;
		    params.Jm = JM;
		    params.w = PW;
		    params.d = PD;

		    params.Tau_max = 1000;
		    params.kw = 10;
		    params.kp_r = 1;
		    params.ki_r = 1;
		    params.kp_l = 1;
		    params.ki_l = 1;
	    }

	    double PI_r(double omega_r_c, double omega_r);
	    double PI_l(double omega_r_c, double omega_r);
	    double tau_right(uint16_t vel_desired, uint16_t vel, int16_t radius_desired, int16_t radius);
	    double tau_left(uint16_t vel_desired, uint16_t vel, int16_t radius_desired, int16_t radius);
    private:
	    double sat(double in, double limit);

	    struct P {
		    uint8_t m;
		    uint8_t g;
		    float R;
		    uint8_t Jm;
		    float w;
		    float d;

		    uint16_t Tau_max;
		    uint8_t kw;

		    // right motor
		    uint8_t kp_r;
		    uint8_t ki_r;
		    // left motor
		    uint8_t kp_l;
		    uint8_t ki_l;
	    };
	    struct P params;

	    double omega_dl_l;
	    double integrator_l;
	    double error_dl_l;

	    double omega_dl_r;
	    double integrator_r;
	    double error_dl_r;
};
