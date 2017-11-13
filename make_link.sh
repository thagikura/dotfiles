#!/usr/bin/env bash

LINK_FILES='
.bashrc_change_tab_colors
.vimrc
.vimrc_python
.zshrc
.zshrc_init_oh_my_zsh
.zshrc_gradle_completion
.zshrc_linux
.zshrc_mac
.zshrc_mac_corp
.zshrc_path
.zshrc_peco_cd
.zshrc_peco_history
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

