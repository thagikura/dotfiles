#!/usr/bin/env bash

LINK_FILES='
.vimrc
.vimrc_python
.zshrc
.zshrc_linux
.zshrc_mac
.zshrc_percol_cd
.zshrc_percol_history
.zshrc_util_func
'

for file in ${LINK_FILES}
do
  ln -sf ~/dotfiles/${file} ~/${file}
done

