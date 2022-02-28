#!/bin/bash
function getspe(){ # "special-message" 
    cd /opt/
    git clone https://github.com/skeeto/endlessh.git
    cd endlessh
    git checkout special-message && git fetch && gut pull
}

function makeinstall(){
    

}