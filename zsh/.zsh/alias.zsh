alias reload="source $HOME/.zshrc"
alias dotfiles="cd $HOME/raytavanrijswijk/dotfiles"

# Git
alias g="open -a gitx ."
alias ga="git add"
alias gb="git branch"
alias gc="git checkout"
alias gcm="git checkout master"
alias gcmsg="git commit -m"
alias gs="git status"
alias gm="git merge"
alias gst="git status -sb"
alias gdw="git diff --ignore-all-space --word-diff=color"
alias gpu="git push"
alias gpo="git push origin"
alias gpl="git pull"
alias gsa='git stash --include-untracked'
alias gsl="git stash list"
alias gsd="git stash drop"
alias gsp="git stash pop"

# Bundle exec
alias be="bundle exec"
alias br="be rspec"
alias rs="rails s"
alias rc="rails c"
alias rss="rs -p "

function mvim {
  /Applications/MacVim.app/Contents/bin/mvim $1
}
