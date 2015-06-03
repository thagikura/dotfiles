echo "Loading $0"

if [ `uname` = "Darwin" ]; then
  # Mac
  source ~/.zshrc_mac
  source ~/.zsh/scripts/advancedrc

  # Check if the machine is the corporate one
  hostname | grep "corp.google.com$" > /dev/null 2>&1
  if [ $? = 0 ]; then
    source ~/.zshrc_mac_corp
  fi
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
