#!/bin/sh
USER=${USER:-dev}

useradd -m -s /bin/bash $USER

if [ $@ = "bash" ]
then
  su - $USER
else
  su - $USER -c $@
fi
