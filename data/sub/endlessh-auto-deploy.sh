#!/bin/bash
function getspe(){ # "special-message" 
    cd /opt/
    git clone https://github.com/skeeto/endlessh.git
    cd endlessh
    git checkout special-message && git fetch && gut pull
    #use parts
     make
     chmod +x endlessh
     chmod 600 endlessh
     cp endlessh /usr/local/bin/endlessh
     docker build .
}

getspe
#need an function to deploy one