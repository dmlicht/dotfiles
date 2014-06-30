#!/bin/bash

source ~/.bash_login
source ~/.bash_functions
source ~/.alias

# set vim keybindings for bash
# set -o vi

# enable global terminal colors
export CLICOLOR=1

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/dmlicht/.gvm/bin/gvm-init.sh" ]] && source "/Users/dmlicht/.gvm/bin/gvm-init.sh"
