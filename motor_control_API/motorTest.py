#from smbus2 import SMBus
import smbus
import time
import os
import subprocess
import spidev

class motorTest:
    channel = 1
    bus = smbus.SMBus(channel)
    address = 0
    target_register = 0
    completion_register = 0
    maxSpeed = 5
        
    def __init__(self, addressIn, targetIn, compIn):
        #setup I2C on rasPi
        self.address = addressIn
        self.target_register = targetIn
        self.completion_register = compIn

    def forwardMarch(self, speed, distance):
        ###
        # speed - negative max to positive max
        # distance 1 to 256 feet
        ###
        binCmd = format(0, '0>2b')
        binDir = (format(0, '0>1b'), format(1, "b"))[speed > 0]
        binSpeed = format(round(abs(speed/maxSpeed*32-1)), '0>5b')
        binDist = format(distance, '0>8b')
        
        byte1 = binCmd + binDir + binSpeed
        byte2 = binDist
        
        msg = [byte1, byte2]
        bus.write_i2c_block_data(address, target_register, msg)

    def arcRun(self, speed, distance, radius):
        ###
        # speed - negative max to positive max
        # distance - 0 to 180 degrees
        # radius - 1 to 15 feet
        ###
        binCmd = format(0, '0>2b')
        binDir = (format(0, '0>1b'), format(1, "b"))[speed > 0]
        binSpeed = format(round(abs(speed/maxSpeed*32-1)), '0>5b')
        binDist = format(round(distance/180*16-1, '0>4b'))
        binRadius = format(radius, '0>4b')
        
        byte1 = binCmd + binDir + binSpeed
        byte2 = binDist + binRadius
        
        msg = [byte1, byte2]
        bus.write_i2c_block_data(address, target_register, msg)
        
    def turnInPlace(self, speed, angle):
        ###
        # speed - negative max to positive max
        # angle - 0 to 360
        ###
        binCmd = format(0, '0>2b')
        binDir = (format(0, '0>1b'), format(1, "b"))[speed > 0]
        binSpeed = format(round(abs(speed/maxSpeed*32-1)), '0>5b')
        binAngle = format(round(angle/360*255-1, '0>4b'))
        
        byte1 = binCmd + binDir + binSpeed
        byte2 = binAngle
        
        msg = [byte1, byte2]
        bus.write_i2c_block_data(address, target_register, msg)
    
    def commandComplete(self):
        if(read_byte_data(self.address, completion_register)):
            return True
        else:
            return False
        

#setup the samd with SW, openocd



