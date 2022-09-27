#!/bin/sh
USER=${USER:-dev}

apt update

useradd -m -s /bin/bash $USER -p "" -G sudo,docker
chown $USER /home/$USER

gosu $USER chezmoi init --apply https://github.com/$USER/dotfiles.git

exec gosu $USER $@
exit 0
