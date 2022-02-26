#!/usr/bin/python3
import sys
import Adafruit_DHT
class dht(Object):
    def __init__(self,gpio_dht,dht_type):
        self.dht,self.gpio = gpio_dht,dht_type
        
    def get_info(self):
        humidity, temperature = Adafruit_DHT.read_retry(11, 4) #11 for dht11, 4 is the gpio i think
        
    def send_to_out_formated(self):
        print ("Temp: {0:0.1f} C  Humidity: {1:0.1f} %").format(
            temperature,
            humidity
            )
            
    def send_to_out_raw(self,temp=True,humd=True,conv_space=1):
        pass
        
