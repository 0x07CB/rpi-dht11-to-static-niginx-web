#!/bin/bash
function install_config(){
configjsondht="ewogICAgImdwaW8iOiA0LAogICAgImRodCI6IDExLAogICAgImRpc3BsYXkiOiB7 CiAgICAgICAgICAgICAgICAgICAgInRlbXBlcmF0dXJlIjogdHJ1ZSwKICAgICAg ICAgICAgICAgICAgICAiaHVtaWRpdHkiOiB0cnVlLAogICAgICAgICAgICAgICAg ICAgICJzcGFjaW5nIjogMQogICAgICAgICAgICAgICAgfQp9Cgo="
echo configjsondht > /tmp/configdhtb64
configdec4dht=$(openssl base64 -d </tmp/configdhtb64)
echo configdec4dht > /opt/rpi-dht-auto/configs
rm -rf /tmp/configdhtb64 
}
function install_folders(){
     mkdir -p /opt/rpi-dht-auto/configs
     mkdir -p /opt/rpi-dht-auto/bin
     mkdir -p /opt/rpi-dht-auto/banner
}
function install_bases_requirements(){
        echo "On met a jour ce system et ensuite..."
         pacman --noconfirm -Syy && sudo pacman --noconfirm -Syu
        
        echo "installation de git-core... et lest outils de builds essentiels"
         pacman --noconfirm -S git
         pacman --noconfirm -S base base-devel linux-firmware gcc cmake make fakeroot python3 python-pip
         python -m pip install -r requirements.txt
        clear
        echo "Bon il est imposer au moins quelques outils de bases."
        echo "wget, curl, nano, vim, cron ... ranger et elinks ansi que tmux et screen."
        sleep 5s
         pacman -S --noconfirm wget curl nano vim cron ranger elinks tmux screen
        echo "ok"
        echo "clone le repository de adafruit pour lire le dht"
        git clone https://github.com/adafruit/Adafruit_Python_DHT.git
        cd Adafruit_Python_DHT
        sudo python setup.py install
        #fin de l'install de base
        echo "bon on passe a la suite."
        echo "on prepare le terrain pour le projet."
        echo "creation des dossiers, configurations de bases du projet lui meme..."    
}



clear
echo "========"
echo "=Step 1="
echo "========"
echo "deps set"
echo "========"
install_folders
install_config
install_bases_requirements
sleep 2s 
clear
echo "Okay you need to undersant that is a lot of automata..."
sleep 2s
clear
echo "========"
echo "=Step 2="
echo "========"
echo "fail2ban"
echo "========"
pacman --noconfirm -S fail2ban
cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.conf-
cp configs/jail.conf /etc/fail2ban/jail.conf
systemctl enable --now fail2ban 
sleep 2s
clear
echo "========"
echo "=Step 3="
echo "========"
echo "  sshd  "
echo "========"
#first firewall cause after need to setup
 pacman --noconfirm -S ufw

bash sshd-automatic-hardening.sh
systemctl enable sshd
systemctl restart sshd


sleep 2s
clear
echo "========"
echo "=Step 4="
echo "========"
echo "firewall"
echo "========"
echo " (setup) "
    
cp ufw-never-stop.sh /opt/
chmod 600 /opt/ufw-never-stop.sh
chmod a+x /opt/ufw-never-stop.sh
chmod a-rw /opt/ufw-never-stop.sh
 cp services/ufw-never-stop.service /etc/services/system/services/



# echo "By security I call manage of ufw(firewall too simple...)"
#./sub/manage-ufw.sh "deploy-yourself" "/opt/rpi-dht-auto/bin" "/usr/bin" # action deploy-folder symlink

