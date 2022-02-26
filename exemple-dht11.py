#!/usr/bin/python3
import sys
import Adafruit_DHT

while True:
    humidity, temperature = Adafruit_DHT.read_retry(11, 4) #11 for dht11, 4 is the gpio i think
    print ("Temp: {0:0.1f} C  Humidity: {1:0.1f} %").format(
        temperature,
        humidity
        )
    
