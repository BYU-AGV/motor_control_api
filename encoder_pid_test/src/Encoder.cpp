#include "Encoder.h"

Encoder::Encoder() {
    
}

uint32_t Encoder::get_time_diff() {
    return millis() - inter_time;
}

uint16_t Encoder::get_speed() {
    uint16_t interrupts = num_encoder_ticks;
    num_encoder_ticks = 0;

    return (interrupts << 9) / get_time_diff();
}

void Encoder::trigger_cnt() {
    num_encoder_ticks++;
}
