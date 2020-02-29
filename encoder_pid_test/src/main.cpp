#include <Arduino.h>
#include <stdint.h>
#include "Servo.h"
#include "Encoder.h"

#define PRINT // comment this line to disable printing to serial

#define BAUD_RATE 9600
#define PWM_1 5
#define PWM_2 6
#define ENA_1 12
#define ENA_2 13
#define DIR_1 7
#define DIR_2 8

#define SHORT_PI 3.14
#define RADIUS 7.0 // inches
#define ANGLE 10 // angle between each slot (in degrees)
#define THETA (ANGLE*SHORT_PI)/180 // angle between each slot (in radians)

#define INTERRUPT_PIN_R 2
#define INTERRUPT_PIN_L 3
const byte interruptPin_R = 2; //pin where the encoder is (goes HIGH or LOW)
const byte interruptPin_L = 3;

Encoder encoder_l;
Encoder encoder_r;

//static bool initial_read;
//static bool trig;
static double elapsed_time_R;
static double rot_speed_R;
static double time_1_R;
static double time_2_R;
static uint8_t lin_speed_R;
static double elapsed_time_L;
static double rot_speed_L;
static double time_1_L;
static double time_2_L;
static uint8_t lin_speed_L;
const byte numChars = 32;
char receivedChars[numChars];  // an array to store the received data

boolean newData = false;

#define SERIAL_BUFFER_LENGTH 6

uint8_t pwm_val = 0;
uint8_t left_power;
uint8_t right_power;
uint8_t left_target = 42;
uint8_t right_target = 42;
uint16_t count = 0;
uint8_t past_pwm_val;

uint8_t upper = 180;
uint8_t lower = 0;

uint8_t position;

String inString = "";
char buffer[10] = {};
char filtered[10] = {};

Servo ST1, ST2;

#define NUM_VEL 5
#define MAX_VEL_CNT 1000000
int dir[NUM_VEL] =       {0, 0, 0, 0, 0}; // 0 == STRAIGHT; 1 == RIGHT; -1 == LEFT;
int lin_vel_d[NUM_VEL] = {0, 45, 90, 135, 180};
uint32_t vel_cnt = 0;
uint8_t current_vel_index = 0;

uint16_t right_cnt = 0;
uint16_t left_cnt = 0;

void trigger_R() { //INTERRUPT function
    right_cnt++;
}

void trigger_L() { //INTERRUPT function
    left_cnt++;
}

void initialize() //INITIALIZE variables
{
	rot_speed_R = 0.0;
	elapsed_time_R = 0.0;
	time_1_R = 0.0;
	time_2_R = 0.0;
	lin_speed_R = 0.0;
	rot_speed_L = 0.0;
	elapsed_time_L = 0.0;
	time_1_L = 0.0;
	time_2_L = 0.0;
	lin_speed_L = 0.0;
}



void enc_right_trigger() {
	encoder_r.trigger_cnt();
}

void enc_left_trigger() {
	encoder_l.trigger_cnt();
}

void setup() {
	Serial.begin(BAUD_RATE);
	while (!Serial)
		;  // wait for serial to begin

	// Encoder setup -- unfortunately, the way Ardiuno implements interrupts, this can only be done in main.
	//  it can't be done inside the encoder class. we also need the enc_*_trigger wrappers. :/
	encoder_l = Encoder();
	encoder_r = Encoder();
    pinMode(INTERRUPT_PIN_R, INPUT_PULLUP);
    pinMode(INTERRUPT_PIN_L, INPUT_PULLUP);
    attachInterrupt(digitalPinToInterrupt(INTERRUPT_PIN_R), enc_right_trigger, RISING);
    attachInterrupt(digitalPinToInterrupt(INTERRUPT_PIN_L), enc_left_trigger, RISING);

	initialize();

	delay(500);
	Serial.println("Ready");

	ST1.attach( 9, 1000, 2000);
	ST2.attach( 10, 1000, 2000);
}

//--------------------FUNCTIONS------------------------
// MATH FUNCTION TO CALCULATE ROTATION SPEED
void calculate_speed()
{
	elapsed_time_R = (time_2_R - time_1_R) / 1000;
	elapsed_time_L = (time_2_L - time_1_L) / 1000;
	if (elapsed_time_R != 0) {
		rot_speed_R = THETA / elapsed_time_R; // angular speed in rad/sec
		lin_speed_R = (RADIUS * rot_speed_R) * 0.05682; // linear speed in mph
	}
	if (elapsed_time_L != 0) {
		rot_speed_L = THETA / elapsed_time_L; // angular speed in rad/sec
		lin_speed_L = (RADIUS * rot_speed_L) * 0.05682; // linear speed in mph
	}
}

int PID_control(double w_r_d, double w_l_d, double w_r, double w_l) {

return 0;
}

void increment_current_vel_index() {
	current_vel_index++;
	if (current_vel_index >= NUM_VEL) {
		current_vel_index = 0;
	}
}

#define MAX_INTER_CNT 50000
uint16_t interrupt_counter = 0;
uint32_t inter_time = 0;
uint32_t time_diff = 0;

void increment_interrupt_counter() {
	interrupt_counter++;
	if (interrupt_counter >= MAX_INTER_CNT) {
		interrupt_counter = 0;

        time_diff = abs( millis() - inter_time );
        lin_speed_R = (right_cnt << 9) / time_diff;

        Serial.print(time_diff);
        Serial.print(' ');
        Serial.print(right_cnt);
        Serial.print(' ');
        Serial.println(lin_speed_R);

        left_cnt = 0;
        right_cnt = 0;
        inter_time = millis();
	}
}

void loop() {

	vel_cnt++; // this is just to cycle through different velocities
	if (vel_cnt >= MAX_VEL_CNT) {
		vel_cnt = 0;
		increment_current_vel_index();
		right_target = lin_vel_d[current_vel_index];
		left_target = lin_vel_d[current_vel_index];
		Serial.print("changing velocity: ");
		Serial.println(right_target);
	}

    increment_interrupt_counter();

// the following code will be replaced by the PID controller
	count++;
	if (count >= 100) {
		count = 0;
		if (right_target > right_power) {
			right_power++;
			ST1.write(right_power);
		}
		else if (right_target < right_power) {
			right_power--;
			ST1.write(right_power);
		}
		if (left_target > left_power) {
			left_power++;
			ST2.write(left_power);
		}
		else if (left_target < left_power) {
			left_power--;
			ST2.write(left_power);
		}
	}
}
