ZSH_DIR="$HOME/.zsh" # Path to my custom ZSH directory
source "$ZSH_DIR/git.zsh"
source "$ZSH_DIR/prompt.zsh"

# Language
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR="atom"

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
