#include <stdint.h>
#include <Arduino.h>

class Encoder {
    public:
    Encoder();

    // called every interrupt
    void trigger_cnt();

    // returns a representation of the average speed since the last call as a
    //  factor of the number of interrupts recieved. Also clears
    //  the number of counts
    uint16_t get_speed();

    private:
    uint32_t get_time_diff();
    
    uint32_t inter_time = 0;
    uint32_t time_diff = 0;
    uint16_t num_encoder_ticks = 0;
};