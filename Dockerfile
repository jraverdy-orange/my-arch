FROM archlinux/base:latest
RUN  pacman -Syu
RUN  pacman -S vim git zsh openssh
RUN  usermod -s /usr/bin/zsh root
RUN  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN  sed -i -e 's/^ZSH_THEME=.*$/ZSH_THEME="pygmalion"/g' /root/.zshrc
COPY /assets/run.sh /run.sh
CMD /run.sh
