echo "Loading $0"

if [ `uname` = "Darwin" ]; then
  # Mac
  source ~/.zshrc_mac
  source ~/.zsh/scripts/advancedrc
elif [ `expr substr $(uname -s) 1 5` = "Linux" ]; then
  # Linux
  source ~/.zshrc_linux
fi

source ~/.bashrc_change_tab_colors
source ~/.zshrc_path
source ~/.zshrc_percol_cd
source ~/.zshrc_percol_history
source ~/.zshrc_util_func
source /usr/share/zsh/functions/Completion/Unix/_gradle
source /usr/share/zsh/functions/Completion/Unix/_gradle
