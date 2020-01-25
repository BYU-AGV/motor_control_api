#include <stdint.h>

class PID {
    public:
    private:
	    struct P {
		    uint8_t m;
		    uint8_t g;
		    uint8_t R;


	    };
	    uint16_t vel_d; // desired linear velocity
	    uint16_t vel; // current linear velocity
	    uint16_t radius_d; // desired turning radius
	    uint16_t radius; // current turning radius

};
