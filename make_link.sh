#!/usr/bin/env bash

LINK_FILES='
.bashrc_change_tab_colors
.vimrc
.vimrc_python
.zshrc
.zshrc_linux
.zshrc_mac
.zshrc_path
.zshrc_percol_cd
.zshrc_percol_history
.zshrc_util_func
'

for file in ${LINK_FILES}
do
  ln -sf ~/dotfiles/${file} ~/${file}
done

