#define SHORT_PI 3.14
#define RADIUS 7.0 // inches
#define ANGLE 10 // angle between each slot (in degrees)
#define THETA (ANGLE*SHORT_PI)/180 // angle between each slot (in radians)

//static bool initial_read;
//static bool trig;
static double elapsed_time_R;
static double rot_speed_R;
static double time_1_R;
static double time_2_R;
static double lin_speed_R;
static double elapsed_time_L;
static double rot_speed_L;
static double time_1_L;
static double time_2_L;
static double lin_speed_L;
int dir[5] = 0; // 0 == STRAIGHT; 1 == RIGHT; -1 == LEFT;
int lin_vel_d[5] = {1, 2, 3, 4, 2};


const byte interruptPin_R = 2; //pin where the encoder is (goes HIGH or LOW)
const byte interruptPin_L = 3;

void setup()
{
  Serial.begin(9600);
  pinMode(interruptPin_R, INPUT_PULLUP);
  pinMode(interruptPin_L, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(interruptPin_R), trigger_R, RISING);
  attachInterrupt(digitalPinToInterrupt(interruptPin_L), trigger_L, RISING);
  initialize();
  delay(500);
  Serial.println("Ready");
}

void loop()
{
  calculate_speed();
  Serial.print("RIGHT:       ");
  Serial.println(lin_speed_R);
  //  Serial.print("LEFT:        ");
  //  Serial.println(rot_speed_L);
}

//--------------------FUNCTIONS------------------------
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

void trigger_R() { //INTERRUPT function
  time_1_R = time_2_R;
  time_2_R = millis();
  //  Serial.println("HERE");
}

void trigger_L() { //INTERRUPT function
  time_1_L = time_2_L;
  time_2_L = millis();
  //  Serial.println("HERE");
}

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
  

}
