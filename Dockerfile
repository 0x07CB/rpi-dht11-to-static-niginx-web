FROM archlinux/archlinux 
RUN pacman-key --init
RUN pacman --noconfirm -Syy && pacman --noconfirm -Syu
WORKDIR ~/
COPY data/install.sh /root/
COPY data/sub /root/
RUN bash /root/install.sh
CMD /bin/bash

