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

uint8_t motor::get_speed() { return speed; }

bool motor::get_direction() { return is_left ? !direction : direction; }

void motor::inc_speed() {
    speed++;
    write_values();
}

String motor::toString() {
    String returnString = (is_left ? "L " : "R ") + String(speed) + ' ' + (direction ? 'F' : 'B');
}

void motor::set_direction(bool direction) {
    if (is_left) {
        this->direction = !direction;
    } else {
        this->direction = direction;
    }

    write_values();
}

void motor::dec_speed() {
    speed--;

    write_values();
}

void motor::set_speed(uint16_t speed) {
    this->speed = speed;

    write_values();
}

void motor::write_values() {
    digitalWrite(dir_pin, direction);
    digitalWrite(pwm_pin, speed);
    digitalWrite(ena_pin, enabled);
}

void motor::enable() {
  enabled = true;
  write_values();
}

void motor::disable() {
  enabled = false;
  write_values();
}