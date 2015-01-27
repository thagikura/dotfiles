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

if [ ! -d ~/.vim_runtime ];then
    git clone https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh
fi
ln -sf ~/dotfiles/my_configs.vim ~/.vim_runtime/my_configs.vim

