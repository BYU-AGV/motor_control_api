//BYU AVG Robot API
//

#ifndef AGV_MOTORCONTROL_H
#define AGV_MOTORCONTROL_H

//typedefs
typedef int16_t motorControl_distance_t; //in feet
typedef char motorControl_speed_t; //in feet per second
typedef char16_t motorControl_rotation_t; //in degrees
enum motorControl_LRDirection_t { LEFT = 0, RIGHT = 1 };
enum motorControl_FBDirection_t { BACKWARD = 0, FORWARD = 1 };

//initialization function
void motorControl_init();

//change robot speed
void AGV_motorControl_API_setSpeed(motorControl_speed_t speed);

//change robot turn radius
void AGV_motorControl_API_setTurnRadius(motorControl_distance_t radius, motorControl_LRDirection_t direction);

#endif