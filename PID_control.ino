int vel_d = 0;    // vehicle linear velocity (input from path planner)
int radius_d = 0; // vehicle turn radius (input from path planner)
int kp = 1;
int ki = 0;
int km = 1; // convert to PWM gain
int commands[2];

void setup() {
  Serial.begin(9600);
}

void loop() {
  // encoder stuff
  commands = PID_ctrl(w_right_d, w_left_d, w_right, w_left, kp, ki);
  // send PWM signal
  pwm_r = commands[0] * km;
  pwm_l = commands[1] * km;
}

int PID_ctrl(int w_r_c, w_l_c, w_r, w_l, kp, ki) {
//  static int integrator_r;
  static int error_dl_r;
  static int w_r_delay;
//  static int integrator_l;
  static int error_dl_l;
  static int w_l_delay;

//  integrator_r = 0;
  error_dl_r = 0;
  w_r_delay = 0;
//  integrator_l = 0;
  error_dl_l = 0;
  w_l_delay = 0;

  // compute the error
  double error_r = w_r_c - w_r;
  double error_l = w_l_c - w_l;
  // update delayed variables for next time through the loop
  error_dl_r = error_r;
  w_r_delay = w_r;
  error_dl_l = error_l;
  w_l_delay = w_l;

  // compute the pi control signal
  int ctrl_r = kp*error_r;
  int ctrl_l = kp*error_l;
  return [ctrl_r, ctrl_l];
}
