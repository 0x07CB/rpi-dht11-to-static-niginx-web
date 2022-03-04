#!/bin/bash
mkdir -p /opt/dht/
bash /root/data/sub/install-and-hardening1.sh
bash /root/data/sub/because/deploy-user-ohmyzsh.sh
cp /root/data/sub/addon/included_programs/config.json /opt/dht/config.json