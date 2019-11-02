//BYU AVG Robot API
//

#ifndef AGV_MOTORCONTROL_H
#define AGV_MOTORCONTROL_H

//drive robot in a straight line
void AGV_motorControl_API_straightLine(int speed, int distance);

//drive robot in an arc of a certain radius
void AGV_motorControl_API_turnAtRadius(bool dir, int turnRadius, int speed, int distance);

//change robot speed
void AGV_motorControl_API_speed(int speed);

//rotate robot by a certain number of degrees
void AGV_motorControl_API_turnDegrees(int degrees);

#endif