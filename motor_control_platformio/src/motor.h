#ifndef MOTOR_H
#define MOTOR_H

#include <stdint.h>
#define MOTOR_LEFT true
#define MOTOR_RIGHT false

class motor {
   private:
    // pin declarations
    uint8_t pwm_pin;
    uint8_t ena_pin;
    uint8_t dir_pin;

    bool is_left;

    uint16_t speed;
    bool direction;
    bool enabled;

    void write_values();

   public:
    motor(uint8_t pwm_pin, uint8_t ena_pin, uint8_t dir_pin, bool is_left);
    void set_speed(uint16_t speed);
    void enable();
    void disable();
    uint8_t get_speed();
    bool get_direction();
    void inc_speed();
    void dec_speed();
    void set_direction(bool direction);
};

#endif  // MOTOR_H