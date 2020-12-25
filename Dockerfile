FROM archlinux/base:latest
RUN  pacman -Syu --noconfirm
RUN  pacman -S --noconfirm --needed vim git zsh openssh base-devel
RUN  usermod -s /usr/bin/zsh root
RUN  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN  sed -i -e 's/^ZSH_THEME=.*$/ZSH_THEME="pygmalion"/g' /root/.zshrc
RUN  git clone https://aur.archlinux.org/yay.git \
     cd yay \
     makepkg -si
COPY /assets/run.sh /run.sh
ENTRYPOINT /run.sh
