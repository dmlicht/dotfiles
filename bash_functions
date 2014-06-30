#!bin/bash

function git_rm_deleted {
  git status | grep deleted | awk '{ print $3 }' | sed 's/^/\.\//' | xargs git rm
}
alias git_rmd="git_rm_deleted"

function del {
  mv $1 $HOME/.Trash
}

function android_project {
  wget https://github.com/robolectric/deckard-gradle/archive/master.zip
  unzip master.zip
  rm master.zip
  mv deckard-gradle-master $1
}

BASH_FUNCTIONS=~/dotfiles/bash_functions
BASH_ALIASES=~/dotfiles/aliases

# update functions
alias uf="update_file $BASH_FUNCTIONS"

# update aliases
alias ua="update_file $BASH_ALIASES"

# update indicates file will be sourced after editing
function update_file {
  vim $1
  source $1
}

function source_if_present {
  if [ -e $CONFIG_DIR/$1 ]
  then
    source $CONFIG_DIR/$1
  fi
}
