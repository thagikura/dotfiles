echo "Loading $0"

if [ `uname` = "Darwin" ]; then
  # Mac
  source ~/.zshrc_mac

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
source ~/.zshrc_peco_cd
source ~/.zshrc_peco_history
source ~/.zshrc_util_func

if [ -f /usr/share/zsh/functions/Completion/Unix/_gradle ];then
  source /usr/share/zsh/functions/Completion/Unix/_gradle
elif [ -f /usr/local/share/zsh/site-functions/_gradle ];then
  source /usr/local/share/zsh/site-functions/_gradle
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
