#!/bin/bash
install_config(){
configjsondht="ewogICAgImdwaW8iOiA0LAogICAgImRodCI6IDExLAogICAgImRpc3BsYXkiOiB7 CiAgICAgICAgICAgICAgICAgICAgInRlbXBlcmF0dXJlIjogdHJ1ZSwKICAgICAg ICAgICAgICAgICAgICAiaHVtaWRpdHkiOiB0cnVlLAogICAgICAgICAgICAgICAg ICAgICJzcGFjaW5nIjogMQogICAgICAgICAgICAgICAgfQp9Cgo="
echo configjsondht > /tmp/configdhtb64
configdec4dht=$(openssl base64 -d </tmp/configdhtb64)
echo configdec4dht > /opt/rpi-dht-auto/configs
rm -rf /tmp/configdhtb64 
}
install_folders(){
    sudo mkdir -p /opt/rpi-dht-auto/configs
    sudo mkdir -p /opt/rpi-dht-auto/bin
    sudo mkdir -p /opt/rpi-dht-auto/banner
}
install_bases_requirements(){
    baseos=$(grep '^ID_LIKE' /etc/os-release)
    if [ baseos -eq "debian" ]
    then
        echo "On met a jour ce system et ensuite..."
        sudo apt update -y && sudo apt full-upgrade -y && sudo apt install autoremove -y && sudo apt install autoclean -y
        echo "installation de git-core... et lest outils de builds essentiels"
        sudo apt-get install -y git-core
        sudo apt-get install -y build-essential python3-dev python3 python3-pip
        
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
     if [ baseos -eq "arch" ]
        then
        echo "On met a jour ce system et ensuite..."
        sudo pacman --noconfirm -Syy && sudo pacman --noconfirm -Syu
        echo "installation de git-core... et lest outils de builds essentiels"
        sudo pacman --noconfirm -S git
        sudo pacman --noconfirm -S base base-devel linux-firmware gcc cmake make fakeroot python3 python-pip
        
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
        echo -e "System inconnu."
        exit(-1)
    fi
    fi
    
}

main_2(){
    echo "installation des dossiers de bases dans /opt ..."
    install_folders()
    echo "install config de base incluse dans ce script."
    install_config()
}

main_1(){
    install_bases_requirements()
}