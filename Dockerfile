FROM archlinux/archlinux
RUN pacman --noconfirm -Syy && pacman -Syu --noconfirm
RUN mkdir -p ~/deploy
WORKDIR ~/deploy
COPY ./data/* ~/data/
RUN bash ~/data/install.sh
CMD /bin/bash