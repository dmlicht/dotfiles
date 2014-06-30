#!/bin/bash

CONFIG_DIR=~/dotfiles

# ON START - check if we've updated resource config files
cd $CONFIG_DIR
git pull origin master > /dev/null
cd

source $CONFIG_DIR/functions

source $CONFIG_DIR/bash_login
source $CONFIG_DIR/aliases

# WORK CONFIG
PERKA_SPECIFIC="bash_perka perka_aliases"
for file in $PERKA_SPECIFIC; do
  echo $CONFIG_DIR/$file
  source_if_present $CONFIG_DIR/$file
done

# set vim keybindings for bash
# set -o vi

# enable global terminal colors
export CLICOLOR=1

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/dmlicht/.gvm/bin/gvm-init.sh" ]] && source "/Users/dmlicht/.gvm/bin/gvm-init.sh"
