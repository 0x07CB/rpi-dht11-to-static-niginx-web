#!/bin/bash
mkdir -p /opt/dht/
sudo bash sub/install-and-hardening1.sh
sudo bash sub/because/deploy-user-ohmyzsh.sh
sudo cp sub/addon/included_programs/config.json /opt/dht/config.json