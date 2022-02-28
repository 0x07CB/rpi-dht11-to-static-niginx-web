#!/bin/bash
function getspe(){ # "special-message" 
    cd /opt/
    git clone https://github.com/skeeto/endlessh.git
    cd endlessh
    git checkout special-message && git fetch && gut pull
}

function makeinstall(){
    sudo make
    sudo chmod +x endlessh
    sudo chmod 600 endlessh
    sudo cp endlessh /usr/local/bin/endlessh
}

function builddocker(){
    

}