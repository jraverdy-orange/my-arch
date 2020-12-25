FROM archlinux/base:latest
RUN  pacman -Syu
RUN  pacman -S vim git zsh openssh
COPY /assets/run.sh /run.sh
