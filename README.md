## Rayta's dotfiles

***

These dotfiles contain configuration and installation for:

* Xcode (this might take a while)
* Dotfiles
* Homebrew
* MacVim
* Chruby

***

## Installation

Ideally in this order from top to down:

### XCode

Install XCode through the Mac App Store.

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

### MacVim

### Chruby

