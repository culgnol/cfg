# Setup

Setup follows this article to manage dotfiles:
- https://www.atlassian.com/git/tutorials/dotfiles

!!!MAKE SURE TO BACKUP FILES PRIOR!!!
!!!ASSUMES SYSTEM IS CLEAN, FIRST TIME SETUP!!!

```
$ mkdir .cfg
$ echo ".cfg" >> .gitignore
$ alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
$ git clone --bare <git-repo-url> $HOME/.cfg
$ config checkout
```

Example alias usage flow
```
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```

# Inspriations / Pirated from:

https://github.com/paulirish/dotfiles
