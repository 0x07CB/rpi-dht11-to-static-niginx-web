#!/bin/bash
install_config(){
configjsondht="ewogICAgImdwaW8iOiA0LAogICAgImRodCI6IDExLAogICAgImRpc3BsYXkiOiB7 CiAgICAgICAgICAgICAgICAgICAgInRlbXBlcmF0dXJlIjogdHJ1ZSwKICAgICAg ICAgICAgICAgICAgICAiaHVtaWRpdHkiOiB0cnVlLAogICAgICAgICAgICAgICAg ICAgICJzcGFjaW5nIjogMQogICAgICAgICAgICAgICAgfQp9Cgo="

}

install_folders(){}

install_new_user(){}






install_bases_requirements(){
    baseos=$(grep '^ID_LIKE' /etc/os-release)
    if [ baseos -eq "debian" ]
    then
        echo "On met a jour ce system et ensuite..."
        sudo apt update -y && sudo apt full-upgrade -y && sudo apt install autoremove -y && sudo apt install autoclean -y
        echo "installation de git-core... et lest outils de builds essentiels"
        sudo apt-get install -y git-core
        sudo apt-get install build-essential python-dev
        
        clear
        echo "Bon il est imposer au moins quelques outils de bases."
        echo "wget, curl, nano, vim, cron ... ranger et elinks ansi que tmux et screen."
        sleep 5s
        sudo apt install -y wget curl nano vim cron ranger elinks tmux screen
        echo "ok"
        echo "clone le repository de adafruit pour lire le dht"
        git clone https://github.com/adafruit/Adafruit_Python_DHT.git
        cd Adafruit_Python_DHT
        sudo python setup.py install
        #fin de l'install de base
        echo "bon on passe a la suite."
        echo "on prepare le terrain pour le projet."
        echo "creation des dossiers, configurations de bases du projet lui meme..."
        
    else
    
    
    fi
    
}




#need changes for be ok for every linux system's 