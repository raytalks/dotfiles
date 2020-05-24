## Rayta's dotfiles

***

These dotfiles contain configuration and installation for:

* Xcode 
* Dotfiles
* iTerm2
* ZSH file
* Homebrew
* MacVim
* fzf (fuzzyfinder)
* Chruby and ruby-install

***

## Installation

Ideally in this order from top to down:

### XCode

Install XCode through the Mac App Store (this might take a while).

### Dotfiles installation

Next, clone this Git repository, initialize/update the submodules and finally hook everything up by running the install script.

```
mkdir $HOME/rayta
git clone https://github.com/raytalks/dotfiles.git $HOME/rayta/dotfiles
cd $HOME/rayta/dotfiles && git submodule init && \
  git submodule update --recursive
./install
```

This should set up the symlinks from the dotfiles directory to your $HOME directory, do not remove the dotfiles directory.

### Homebrew

Next, install Homebrew using the command listed on the website.

After installing Homebrew, ensure permissions are correct by running the following.

```
brew update
brew tap Homebrew/bundle

brew bundle Brewfile
```

### iTerm2

* Set up `Load preferences from a custom folder or URL:` in the `General` section of `Preferences`. 
* Select the directory `$DOTFILES/iterm2/`.
* Run defaults `read com.googlecode.iterm2`.
* Restart iTerm.

### ZSH file

**Private credentials**

To configure credentials that shouldn't be checked into git, create a `~/.extra file`.

Now refresh you shell sessions either by opening a new pane or by running `reload`.

### MacVim

### fzf

To install fzf, use the `/usr/local/opt/fzf/install` install script (listed in `brew info fzf` after installing it through `brew install fzf`).

Say yes to "fuzzy auto-completion" and "key bindings".

### Chruby and ruby-install

`ruby-install ruby [VERSION]`




