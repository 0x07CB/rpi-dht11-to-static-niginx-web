FROM archlinux/archlinux 
RUN pacman-key --init
RUN pacman --noconfirm -Syy && pacman --noconfirm -Syu
RUN mkdir ~/data
COPY ./data/ ~/data/
RUN bash ~/data/install.sh
CMD /bin/bash

