#!/bin/bash
sudo apt-get install git-core
git clone https://github.com/adafruit/Adafruit_Python_DHT.git
sudo apt-get install build-essential python-dev
cd Adafruit_Python_DHT
sudo python setup.py install