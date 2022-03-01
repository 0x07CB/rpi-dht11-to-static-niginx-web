FROM arch:latest 
RUN pacman -Syy && pacman -Syu
RUN mkdir -p ~/deploy
WORKDIR ~/deploy
COPY ./data/ ~/data/pm
RUN bash ~/data/install.sh
CMD /bin/bash

