#!/bin/bash
function get_status(){
    echo "$(ufw status)" > /tmp/status 
    grep "^Status:" < /tmp/status
    rm -rf /tmp/status
}
#just not done haha