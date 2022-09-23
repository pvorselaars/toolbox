#!/bin/sh
USER=${USER:-dev}

useradd -m -s /bin/bash $USER -p "" -G sudo,docker
chown $USER /home/$USER

exec gosu $USER $@
