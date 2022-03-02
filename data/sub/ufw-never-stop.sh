#!/bin/bash
# v1.0.1
function start(){
mkdir -p /opt/ufw-never-stop/logs
mkdir -p /opt/ufw-never-stop/archives-logs
}


function basic_action(){
    ufw disable
    systemctl enable --now ufw
    ufw enable
} 


function take_care_status(){
    echo "$(ufw status)" > /tmp/status 
    status = "$(grep '^Status:' < /tmp/status)"
    results = "${status:9:6}"
    rm -rf /tmp/status
    
    if [ results -eq "active" ]
        then
        echo "OK - $(ufw status verbose) - $(date)" > /opt/ufw-never-stop/logs
        else
            echo "DANGER! - $(ufw status verbose) - $(date)" > /opt/ufw-never-stop/logs
            # to basic repair
            basic_action()
    fi   
}

start()

while true; do
    take_care_status()
    sleep 10s
done

# next code is for detect stoped and restart with an procedure complete
# and if nothing work you have an notification
# if the logs repeat 3 time danger (use grep and tail) so the action is total and this script can send signal to yo, if he can't do the procedure of repair firewall, he down all interfaces next 

