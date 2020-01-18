#include "motor.h"
#include <Arduino.h>

// Constructor (assigns values and initializes the pins)
motor::motor(uint8_t pwm_pin, uint8_t ena_pin, uint8_t dir_pin, bool is_left) {
    this->pwm_pin = pwm_pin;
    this->ena_pin = ena_pin;
    this->dir_pin = dir_pin;
    this->is_left = is_left;

    // set pin modes
    pinMode(pwm_pin, OUTPUT);
    pinMode(ena_pin, OUTPUT);
    pinMode(dir_pin, OUTPUT);

    // initialize private variables
    speed = 0;
    direction = MOTOR_FORWARDS;
    enabled = false;
}

// Returns the current motor speed (pwm val)
uint8_t motor::get_speed() { return speed; }

// Returns the current direction of the motor
bool motor::get_direction() { return is_left ? !direction : direction; }

// Set the direction of the motor
void motor::set_direction(bool direction) {
    this->direction = is_left ? !direction : direction;
    write_dir();
}

// Decrement the motor speed by 1
void motor::dec_speed() {
    speed--;
    write_pwm();
}

// Increment the motor speed by 1
void motor::inc_speed() {
    speed++;
    write_pwm();
}

// Set the speed of the motor
void motor::set_speed(uint16_t speed) {
    this->speed = speed;
    write_pwm();
}

// Enable the motor
void motor::enable() {
  enabled = true;
  write_ena();
}

// Disable the motor
void motor::disable() {
  enabled = false;
  write_ena();
}

// Write all three values to the pins
void motor::write_values() {
    write_pwm();
    write_dir();
    write_ena();
}

// Write "enabled" to the enable pin
void motor::write_ena() {
    digitalWrite(ena_pin, enabled);
}

// Write "direction" to the direction pin
void motor::write_dir() {
    digitalWrite(dir_pin, direction);
}

// Write "speed" to the PWM pin
void motor::write_pwm() {
    analogWrite(pwm_pin, speed);
}

// Returns true if the motor is enabled
bool motor::is_enabled() {
    return enabled;
}
