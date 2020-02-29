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


/*
 *
 * THE FOLLOWING MUST BE INCLUDED IN MAIN FOR THIS CLASS TO WORK CORRECTLY
 *
#define INTERRUPT_PIN_R 2
#define INTERRUPT_PIN_L 3

Encoder encoder_l;
Encoder encoder_r;

void enc_right_trigger() {
	encoder_r.trigger_cnt();
}

void enc_left_trigger() {
	encoder_l.trigger_cnt();
}

void setup() {
	// Encoder setup -- unfortunately, the way Ardiuno implements interrupts, this can only be done in main.
	//  it can't be done inside the encoder class. we also need the enc_*_trigger wrappers. :/
	encoder_l = Encoder();
	encoder_r = Encoder();
    pinMode(INTERRUPT_PIN_R, INPUT_PULLUP);
    pinMode(INTERRUPT_PIN_L, INPUT_PULLUP);
    attachInterrupt(digitalPinToInterrupt(INTERRUPT_PIN_R), enc_right_trigger, RISING);
    attachInterrupt(digitalPinToInterrupt(INTERRUPT_PIN_L), enc_left_trigger, RISING);

}
*/
