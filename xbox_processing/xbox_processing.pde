
import processing.serial.*;
import net.java.games.input.*;
import org.gamecontrolplus.*;
import org.gamecontrolplus.gui.*;

Serial arduino; // create serial object
byte serVal[]; // stores serial from the arduino
static int centerPrecision = 2;
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
  String port = "COM5";
  arduino = new Serial(this, port, 9600);
  delay(1000);
  textSize(28);
  arduino.buffer(2);
  //arduino.bufferUntil(-1);
  
}

void draw() {
  getUserInput();
  
  background((leftStick+255 + rightStick+255)/4,100,255);
  
  byte leftForward = (leftStick >= 0) ? (byte)1 : (byte)0;
  byte rightForward = (rightStick >= 0) ? (byte)1 : (byte)0;
  byte commArray[] = { (byte)'L', (byte)abs(leftStick), leftForward,
                      (byte)'R', (byte)abs(rightStick), rightForward };
  print("Motor info: ");
  for(int i = 0; i < 6; i++) {
   print(commArray[i]);
   print(' ');
  }
    
  println();
  arduino.write(commArray);
  text((int)leftStick, 10, 30);
  text((int)rightStick, 100, 30);
}

private short bytesToShort(byte a, byte b) {
    short sh = (short)a;
    sh <<= 8;
    short ret = (short)(sh | b);
    return ret;
}

void serialEvent(Serial arduino) {
  
  try {
    serVal = arduino.readBytes();  // read it and store it in serVal
    //print("arduino serial: ");
    //println(serVal);
    
    for (int i = 0; i < 1; i++) {
      print((bytesToShort((serVal[i]), serVal[i+1])));
      print(' ');
    }
    println();
  }
  catch(RuntimeException e) {
    //e.printStackTrace();
  }
}

public void getUserInput() {
  leftStick = (int)map(cont.getSlider("leftThrottle").getValue(), -1, 1, -254, 254);
  if (abs(leftStick - centerPoint) <= centerPrecision) {
    leftStick = centerPoint;
  }
  rightStick = (int)map(cont.getSlider("rightThrottle").getValue(), -1, 1, -254, 254);
  if (abs(rightStick - centerPoint) <= centerPrecision) {
    rightStick = centerPoint;
  }
  //killSwitch = (boolean)map(cont.getSlider("killButton").getValue(), -1, 1, -255, 255);
  
}
