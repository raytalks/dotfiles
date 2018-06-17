ZSH_DIR="$HOME/.zsh" # Path to my custom ZSH directory
source "$ZSH_DIR/git.zsh"
source "$ZSH_DIR/prompt.zsh"
source "$ZSH_DIR/alias.zsh"
source "$ZSH_DIR/history.zsh"
source "$ZSH_DIR/completions.zsh"

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# Language
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR="vim"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rayta/exec -1 /usr/local/bin/zsh/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/rayta/exec -1 /usr/local/bin/zsh/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rayta/exec -1 /usr/local/bin/zsh/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/rayta/exec -1 /usr/local/bin/zsh/google-cloud-sdk/completion.zsh.inc'; fi

# Kubectl autocompletion
if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi

# exercism
if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  . ~/.config/exercism/exercism_completion.zsh
fi
