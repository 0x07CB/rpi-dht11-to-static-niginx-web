FROM ubuntu:latest 
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i fr_FR -c -f UTF-8 -A /usr/share/locale/locale.alias fr_FR.UTF-8
ENV LANG fr_FR.utf8
RUN mkdir -p ~/deploy
WORKDIR ~/deploy
COPY data /root/data
#RUN bash ~/data/install.sh
CMD /bin/bash
