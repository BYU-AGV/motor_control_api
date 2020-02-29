#include <stdint.h>
#include <Arduino.h>

class Encoder {
	public:
		// constructor
		Encoder();

		// called every interrupt
		void trigger_cnt();

		// returns the current angular velocity in degrees/sec
		uint16_t get_speed();

	private:
		// time of the last encoder edge read
		uint32_t last_tick_time;
		// time of the second to last encoder edge read
		uint32_t second_to_last_tick_time;

		//uint16_t num_encoder_ticks = 0;
};
