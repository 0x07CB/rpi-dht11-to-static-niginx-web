#!/usr/bin/python3
import sys
import Adafruit_DHT
def get_info():
    humidity, temperature = Adafruit_DHT.read_retry(11, 4) #11 for dht11, 4 is the gpio i think
def send_to_out_formated():
    print ("Temp: {0:0.1f} C  Humidity: {1:0.1f} %").format(
        temperature,
        humidity
        )
    
