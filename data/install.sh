#!/bin/bash
mkdir -p /opt/dht/
bash data/sub/install-and-hardening1.sh
bash data/sub/because/deploy-user-ohmyzsh.sh
cp data/sub/addon/included_programs/config.json /opt/dht/config.json