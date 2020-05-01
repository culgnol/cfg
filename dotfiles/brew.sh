#!/bin/bash

# Install command-line tools using Homebrew
brew update
brew upgrade


# mtr - ping & traceroute. best.
brew install mtr

    # allow mtr to run without sudo
    mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//') #  e.g. `/Users/paulirish/.homebrew/Cellar/mtr/0.86`
    sudo chmod 4755 $mtrlocation/sbin/mtr
    sudo chown root $mtrlocation/sbin/mtr



brew install tree # list folder `tree . -L 1`
brew install pv # monitor data progress through pipeline

brew install z # z hopping around folders
brew install fzf  # fuzzy finder
brew install the_silver_searcher # code search

brew install git
brew install hub # github util: https://hub.github.com/

brew install terminal-notifier

brew install dos2unix
brew install jq

brew install ncdu # find where your diskspace went

brew install android-platform-tools
brew install pidcat   # colored logcat guy

brew install youtube-dl

brew install node

brew install zsh zsh-completions
brew install antigen

# Remove outdated versions from the cellar
brew cleanup