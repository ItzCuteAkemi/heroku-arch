FROM archlinux

USER root

ENV HOME=/root \
    PORT=8080 

RUN pacman-key --init

RUN pacman -Syyu --noconfirm

RUN pacman -S tmate neofetch base-devel htop sudo git fakeroot wget curl nodejs npm pkgfile vim nano --noconfirm --needed \
    && pkgfile --update

RUN chmod -R 777 /etc/passwd 

RUN curl -o /start.sh https://raw.githubusercontent.com/ItzCuteAkemi/heroku-arch/main/start.sh

RUN curl -o /pingme.js https://raw.githubusercontent.com/ItzCuteAkemi/heroku-arch/main/pingme.js

CMD ["bash", "/start.sh"]
