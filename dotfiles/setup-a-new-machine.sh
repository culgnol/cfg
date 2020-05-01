# copy paste this file in bit by bit.
# don't run it.
  echo "do not run this script in one go. hit ctrl-c NOW"
  read -n 1

###  backup old machine

mkdir -p ~/migration/home/
mkdir -p ~/migration/Library/"Application Support"/
mkdir -p ~/migration/Library/Preferences/
mkdir -p ~/migration/Library/Application Support/
mkdir -p ~/migration/rootLibrary/Preferences/SystemConfiguration/

cd ~/migration

cp -Rp ~/Library/Fonts ~/migration/Library/ # all those fonts you've installed

# editor settings & plugins
cp -Rp ~/Library/Application\ Support/Sublime\ Text\ * ~/migration/Library/"Application Support"
cp -Rp ~/Library/Application\ Support/Code\ -\ Insider* ~/migration/Library/"Application Support"

###  end backup old machine

### homebrew

## install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# (if your machine has /usr/local locked down (like google's), you can do this to place everything in ~/.homebrew
# mkdir $HOME/.homebrew && curl -L https://github.com/mxcl/homebrew/tarball/master | tar xz --strip 1 -C $HOME/.homebrew
# export PATH=$HOME/.homebrew/bin:$HOME/.homebrew/sbin:$PATH

## install all the things
./brew.sh
./brew-cask.sh

### end homebrew

##############################################################################################################
### install of common things
