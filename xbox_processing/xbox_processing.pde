
import processing.serial.*;
import net.java.games.input.*;
import org.gamecontrolplus.*;
import org.gamecontrolplus.gui.*;

Serial arduino; // create serial object
byte serVal[]; // stores serial from the arduino
static int centerPrecision = 5;
static int centerPoint = 0;

ControlDevice cont;
ControlIO control;
int leftStick;
int rightStick;
boolean killSwitch;

void setup() {
  size(360, 200);
  control = ControlIO.getInstance(this);
  cont = control.getMatchedDevice("two_joystick");

  if (cont == null) {
    println("controller not loaded"); // write better exit statements than me
    System.exit(-1);
  }
  // println(Arduino.list());
  String port = Serial.list()[0];
  arduino = new Serial(this, port, 9600);
  
  textSize(28);   
  //arduino.buffer(4);
  
}

void draw() {
  
  if ( arduino.available() > 0) {  // If data is available,
  serVal = arduino.readBytes();  // read it and store it in serVal
  println("arduino detected\n\r");
  println(serVal);
  } 
  else println("arduino not detected\n\r");
  
  getUserInput();
  
  background((leftStick+255 + rightStick+255)/4,100,255);
  
  byte leftForward = (leftStick >= 0) ? (byte)1 : 0;
  byte rightForward = (rightStick >= 0) ? (byte)1 : 0;
  byte commArray[] = { (byte)abs(leftStick), leftForward,
                      (byte)abs(rightStick), rightForward };
  arduino.write(commArray);
  text((int)leftStick, 10, 30);
  text((int)rightStick, 100, 30);
}

public void getUserInput() {
  leftStick = (int)map(cont.getSlider("leftThrottle").getValue(), -1, 1, -255, 255);
  if (abs(leftStick - centerPoint) <= centerPrecision) {
    leftStick = centerPoint;
  }
  rightStick = (int)map(cont.getSlider("rightThrottle").getValue(), -1, 1, -255, 255);
  if (abs(rightStick - centerPoint) <= centerPrecision) {
    rightStick = centerPoint;
  }
  //killSwitch = (boolean)map(cont.getSlider("killButton").getValue(), -1, 1, -255, 255);
  
}
