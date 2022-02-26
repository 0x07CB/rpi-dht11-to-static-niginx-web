#!/bin/bash
install_bases_requirements(){
    baseos=$(grep '^ID_LIKE' /etc/os-release)
    if [ baseos -eq "debian" ]
    then
        echo "On met a jour ce system et ensuite..."
        sudo apt update -y && sudo apt full-upgrade -y && sudo apt install autoremove -y && sudo apt install autoclean -y
        echo "installation de git-core..."
        sudo apt-get install -y git-core
        git clone https://github.com/adafruit/Adafruit_Python_DHT.git
        sudo apt-get install build-essential python-dev
        cd Adafruit_Python_DHT
        sudo python setup.py install
    else
    
    
    fi
    
}




#need changes for be ok for every linux system's 