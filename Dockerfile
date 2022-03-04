FROM archlinux/archlinux
RUN pacman --noconfirm -Syy && pacman -Syu --noconfirm

RUN mkdir -p ~/deploy
WORKDIR ~/deploy
ADD data /root/data
RUN bash ~/data/install.sh
CMD /bin/bash
