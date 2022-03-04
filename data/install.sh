#!/bin/bash
mkdir -p /opt/dht/
bash sub/install-and-hardening1.sh
bash sub/because/deploy-user-ohmyzsh.sh
cp sub/addon/included_programs/config.json /opt/dht/config.json