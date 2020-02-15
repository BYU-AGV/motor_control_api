from smbus2 import SMBus
import time
import os
import subprocess
import spidev

def __init__():
    #setup I2C on rasPi
    global channel = 1
    global address = 0x60
    global target_register 0x40
    global bus = smbus.SMBus(channel)
    global maxSpeed = 5

def forwardMarch(speed, distance):
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
    
    msg = [byte1 byte2]
    bus.write_i2c_block_data(address, target_register, msg)

def arcRun(speed, distance, radius):
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
    
    msg = [byte1 byte2]
    bus.write_i2c_block_data(address, target_register, msg)
    
def turnInPlace(speed, angle):
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
    
    msg = [byte1 byte2]
    bus.write_i2c_block_data(address, target_register, msg)
    
#setup the samd with SW, openocd





#run tests

