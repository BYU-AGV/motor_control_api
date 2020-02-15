
import processing.serial.*;
import net.java.games.input.*;
import org.gamecontrolplus.*;
import org.gamecontrolplus.gui.*;

Serial arduino; // create serial object
String recieveString; // stores serial from the arduino
static int centerPrecision = 2;
static int centerPoint = 90;

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
  String port = "COM5";
  arduino = new Serial(this, port, 9600);
  delay(1000);
  textSize(28);
}

void draw() {
  getUserInput();
  
  background((leftStick+255 + rightStick+255)/4,100,255);
  
  byte leftForward = (leftStick >= 0) ? (byte)1 : (byte)0;
  byte rightForward = (rightStick >= 0) ? (byte)1 : (byte)0;
  String sendString = "S " + Integer.toString(abs(leftStick)) + ' ' + leftForward + ' ' + Integer.toString(abs(rightStick)) + ' ' + rightForward + '\n';
  print("Motor info: ");
  print(sendString);
  arduino.write(sendString);
  
  text((int)leftStick, 10, 30);
  text((int)rightStick, 100, 30);
}

void serialEvent(Serial arduino) {
  
  try {
    recieveString = arduino.readString();  // read it and store it in serVal
    
    print(recieveString);
  }
  catch(RuntimeException e) {
    e.printStackTrace();
  }
}

public void getUserInput() {
  leftStick = (int)map(cont.getSlider("leftThrottle").getValue(), -1, 1, 0, 180);
  if (abs(leftStick - centerPoint) <= centerPrecision) {
    leftStick = centerPoint;
  }
  rightStick = (int)map(cont.getSlider("rightThrottle").getValue(), -1, 1, 0, 180);
  if (abs(rightStick - centerPoint) <= centerPrecision) {
    rightStick = centerPoint;
  }
  //killSwitch = (boolean)map(cont.getSlider("killButton").getValue(), -1, 1, -255, 255);
  
}
