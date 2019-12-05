//BYU AVG Robot API
//

#ifndef AGV_MOTORCONTROL_API_H
#define AGV_MOTORCONTROL_API_H

//typedefs
typedef int16_t motorControl_distance_t; //in feet
typedef char motorControl_speed_t; //in feet per second
typedef char16_t motorControl_rotation_t; //in degrees
enum motorControl_LRDirection_t { LEFT = 0, RIGHT = 1 };
enum motorControl_FBDirection_t { BACKWARD = 0, FORWARD = 1 };

//initialization function
void motorControl_init();

//drive robot in a straight line for a certain distance
void motorControl_straightLine(motorControl_speed_t speed, motorControl_distance_t distance);

//drive robot in an arc of a certain radius for a certain distance
//use turnRadius 0 for car turn, ie. using one wheel
void motorControl_turnAtRadius(motorControl_LRDirection_t direction, motorControl_distance_t turnRadius, motorControl_speed_t speed, motorControl_distance_t distance);

//rotate robot in place by a certain number of degrees
//use degrees 180 to turn around
//use degrees 360 to do a little dance
void motorControl_turnInPlace(motorControl_LRDirection_t direction, motorControl_rotation_t degrees);

#endif