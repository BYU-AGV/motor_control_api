#ifndef MOTOR_H
#define MOTOR_H

#include <stdint.h>
#include <Arduino.h>

#define MOTOR_LEFT true
#define MOTOR_RIGHT false
#define MOTOR_FORWARDS true // pass this to direction for forwards
#define MOTOR_BACKWARDS false // pass this to direction for backwards

// Class representing a motor
class motor {
   public:
    motor(uint8_t pwm_pin, uint8_t ena_pin, uint8_t dir_pin, bool is_left); // constructor

    void set_speed(uint16_t speed);
    uint8_t get_speed();

    void set_direction(bool direction);
    bool get_direction();

    void enable();
    void disable();
    bool is_enabled();

    void inc_speed();
    void dec_speed();

   private:
    // pin declarations
    uint8_t pwm_pin;
    uint8_t ena_pin;
    uint8_t dir_pin;

    uint16_t speed;
    bool direction;
    bool enabled;

    bool is_left; // lets the motor class know which direction is forwards

    // functions
    void write_values();
    void write_pwm();
    void write_dir();
    void write_ena();
};

#endif  // MOTOR_H
