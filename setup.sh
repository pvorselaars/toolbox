#!/bin/sh
USER=${USER:-dev}

useradd -s /bin/bash $USER -p "" -G sudo,docker
chown $USER /home/$USER

exec gosu $USER $@
echo "Goodbye!"
