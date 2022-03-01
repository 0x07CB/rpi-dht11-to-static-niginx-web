#!/bin/bash
function getspe(){ # "special-message" 
    cd /opt/
    git clone https://github.com/skeeto/endlessh.git
    cd endlessh
    git checkout special-message && git fetch && gut pull
    #use parts
    sudo make
    sudo chmod +x endlessh
    sudo chmod 600 endlessh
    sudo cp endlessh /usr/local/bin/endlessh
    sudo docker build .
}

getspe
#need an function to deploy one