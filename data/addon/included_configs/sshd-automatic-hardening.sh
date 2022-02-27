#!/bin/bash

# 1= port 
function made_new_sshd(){
    port = $(od -A n -t d -N 2 /dev/urandom)
    sudo rm -rf /etc/ssh/sshd_config
    mkdir /tmp/sshd/ && touch /tmp/sshd/sshd_config
    echo "Protocol 2" > /tmp/sshd/sshd_config
    echo "Port $port" > /tmp/sshd/sshd_config
    echo "LogLevel VERBOSE" > /tmp/sshd/sshd_config
    echo "# Authentication:" > /tmp/sshd/sshd_config
    echo "PermitRootLogin no" > /tmp/sshd/sshd_config
    echo "MaxAuthTries 3" > /tmp/sshd/sshd_config
    echo "MaxSessions 5" > /tmp/sshd/sshd_config
    echo "HostbasedAuthentication no" > /tmp/sshd/sshd_config
    echo "PermitEmptyPasswords no" > /tmp/sshd/sshd_config
    echo "ChallengeResponseAuthentication yes" > /tmp/sshd/sshd_config
    echo "UsePAM yes" > /tmp/sshd/sshd_config
    echo "X11Forwarding no" > /tmp/sshd/sshd_config
    echo "PrintMotd no" > /tmp/sshd/sshd_config
    echo "ClientAliveInterval 600" > /tmp/sshd/sshd_config
    echo "ClientAliveCountMax 0" > /tmp/sshd/sshd_config
    echo "AllowUsers $admin $user $monitor" > /tmp/sshd/sshd_config
    echo "AuthenticationMethods publickey,keyboard-interactive" > /tmp/sshd/sshd_config
    echo "PasswordAuthentication no" > /tmp/sshd/sshd_config
    cp /tmp/sshd/sshd_config /etc/ssh/sshd_config
}


baseos=$(grep '^ID_LIKE' /etc/os-release)
if [ baseos -eq "debian" ]
    then
    sudo apt update -y && sudo apt install -y fail2ban 
    sudo cp /etc/ssh/sshd_config etc/ssh/sshd_config- && echo "backup of sshd configuration ok."
    echo ""
    echo "	$OpenBSD: sshd_config,v 1.104 2021/07/02 05:11:21 dtucker Exp $"
    echo "This is the sshd server system-wide configuration file.  See sshd_config(5) for more information. "
    echo "This sshd was compiled with PATH=/usr/local/sbin:/usr/local/bin:/usr/bin"
    echo "The strategy used for options in the default sshd_config shipped with"
    echo "OpenSSH is to specify options with their default value where possible, but leave them commented."  
    echo "Uncommented options override the default value."
    echo ""
    echo "------------"
    echo "sshd configuration are in complete review now, this script made all in basics rules of hardening. hold on."

    made_new_sshd()
    
else
    
    
    
fi