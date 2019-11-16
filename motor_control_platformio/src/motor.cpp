#include "motor.h"
#include <Arduino.h>

motor::motor(uint8_t pwm_pin, uint8_t ena_pin, uint8_t dir_pin, bool is_left) {
    this->pwm_pin = pwm_pin;
    this->ena_pin = ena_pin;
    this->dir_pin = dir_pin;
    this->is_left = is_left;

    pinMode(pwm_pin, OUTPUT);
    pinMode(ena_pin, OUTPUT);
    pinMode(dir_pin, OUTPUT);
}

void motor::set_speed(uint16_t speed, bool direction) {
    this->speed = speed;
    if (is_left) {
        this->direction = !direction;
    } else {
        this->direction = direction;
    }

    write_values();
}

void motor::write_values() {
    digitalWrite(dir_pin, direction);
    digitalWrite(pwm_pin, speed);
}

void motor::enable() { digitalWrite(ena_pin, HIGH); }

void motor::disable() { digitalWrite(ena_pin, LOW); }