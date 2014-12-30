source ~/.zshrc_util_func
source ~/.zshrc_percol_cd
source ~/.zshrc_percol_history

if [ `uname` = "Darwin" ]; then
  # Mac
  source ~/.zshrc_mac
  source ~/.zsh/scripts/advancedrc
elif [ `expr substr $(uname -s) 1 5` = "Linux" ]; then
  # Linux
  source ~/.zshrc_linux
fi
