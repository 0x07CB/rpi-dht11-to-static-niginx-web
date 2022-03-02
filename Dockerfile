FROM archlinux/archlinux 
RUN pacman-key --init
RUN pacman --noconfirm -Syy && pacman --noconfirm -Syu
COPY ./data/ ~/data/
RUN bash ~/data/data/install.sh
CMD /bin/bash

