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

nvm use 24

eval "$(direnv hook zsh)"

export LANG=en_US.UTF-8

if [ -f "$HOME/.local/bin/env" ]; then . "$HOME/.local/bin/env"; fi

# pnpm
export PNPM_HOME="/Users/thagikura/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/thagikura/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/thagikura/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/thagikura/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/thagikura/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="$HOME/.local/bin:$PATH"

# Browser-Use
export PATH="/Users/thagikura/.browser-use-env/bin:/Users/thagikura/.local/bin:$PATH"
