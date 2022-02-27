#!/usr/bin/python3
import sys
import Adafruit_DHT
import json
#
class dht(Object):
    def __init__(self,gpio_dht,dht_type):
        self.dht,self.gpio = gpio_dht,dht_type
        
    def get_info(self):
        self.humidity, self.temperature = Adafruit_DHT.read_retry(self.dht, self.gpio) #11 for dht11, 4 is the gpio i think
        
    def send_to_out_formated(self):
        print ("Temp: {0:0.1f} C  Humidity: {1:0.1f} %").format(
            self.temperature,
            self.humidity
            )
            
    def send_to_out(self,temp=True,humd=True,conv_space=1):
        t = "{0:0.1f}".format(self.temperature)
        h = "{0:0.1f}".format(self.humidity)
        space = " " * conv_space
        if not temp: 
            t=""
            space=""
        if not humd: 
            h=""
            space=""
        print ("{t}{space}{h}").format(
            t=t,
            space=space,
            h=h
            )
#       
config = json.loads(sys.stdin())
DHTsensor=dht(config["gpio"],config["dht"])
DHTsensor.get_info()
if config["display"]["temperature"] or config["display"]["humidity"]:
    temp,humd,space=config["display"]["temperature"],config["display"]["humidity"],config["display"]["spacing"]
    DHTsensor.send_to_out(temp,humd,space)
else:
    DHTsensor.send_to_out_formated()
#
exit(0)