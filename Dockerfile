FROM debian:latest 
RUN apt update -y && apt install sudo -y
RUN sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
RUN mkdir -p /deploy
WORKDIR /deploy
COPY data/ /root/data/
RUN ls /root/
RUN sudo bash /root/data/install.sh
CMD /bin/bash

