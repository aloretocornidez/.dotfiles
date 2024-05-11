#!/bin/bash

# check if bashrc already exists.
if [ -f $HOME/.bashrc ]; then

  # check if they want to overwrite.
  if [ -z "$1" ] || [ ! $1 == "--overwrite" ]; then
    echo "${HOME}/.bashrc already exists. Will not make changes until the file is removed. or you can use the '--overwrite' flag to overwrite your current .bashrc" ;
    exit 0;
  fi
fi

# Overwrite their bashrc.
cat ./template-bashrc > $HOME/.bashrc
echo "Your .bashrc file has been overwritten."

