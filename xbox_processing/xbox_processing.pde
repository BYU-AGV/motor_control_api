import processing.serial.*;
import net.java.games.input.*;
import org.gamecontrolplus.*;
import org.gamecontrolplus.gui.*;

Serial arduino; // create serial object
String serVal; // stores serial from the arduino
static int centerPrecision = 3;
static int centerPoint = 128;

ControlDevice cont;
ControlIO control;
float thumb;

void setup() {
  size(360, 200);
  control = ControlIO.getInstance(this);
  cont = control.getMatchedDevice("xbc");

  if (cont == null) {
    println("controller not loaded"); // write better exit statements than me
    System.exit(-1);
  }
  // println(Arduino.list());
  String port = Serial.list()[0];
  arduino = new Serial(this, port, 9600);
  
  textSize(28);   
}

void draw() {
  if ( arduino.available() > 0) {  // If data is available,
  serVal = arduino.readStringUntil('\n');  // read it and store it in serVal
  } 
  println(serVal);
  getUserInput();
  background(thumb,100,255);
  arduino.write((int)thumb);
  text((int)thumb, 10, 30); 
}

public void getUserInput() {
  thumb = map(cont.getSlider("throttle").getValue(), -1, 1, 1, 255);
  if (abs(thumb - centerPoint) <= centerPrecision) {
    thumb = centerPoint;
  }
}
