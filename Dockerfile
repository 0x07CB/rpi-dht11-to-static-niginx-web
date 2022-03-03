FROM archlinux/archlinux
RUN pacman -Syy && pacman -Syu
RUN mkdir -p ~/deploy
WORKDIR ~/deploy
COPY ./data/* ~/data/
RUN bash ~/data/install.sh
CMD /bin/bash

