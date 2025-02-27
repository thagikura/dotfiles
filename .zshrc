echo "Loading $0"

if [ `uname` = "Darwin" ]; then
  # Mac
  source ~/.zshrc_mac

  # Check if the machine is the corporate one
  hostname | grep "internal$" > /dev/null 2>&1
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
source ~/.zshrc_gradle_completion

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
rbenv global 2.7.5
eval "$(rbenv init -)"

nvm use 20

eval "$(direnv hook zsh)"

export LANG=en_US.UTF-8

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/thagikura/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/thagikura/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/thagikura/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/thagikura/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
