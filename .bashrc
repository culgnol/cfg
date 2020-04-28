# dotfile management https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# https://github.com/gbataille/gitHUD#readme
export PS1="\[\033[0;37m\][\A]\[\033[0m\] \[\033[0;36m\]\u\[\033[0m\] \w\[\033[0;32m\]\$(/usr/local/bin/githud bash)\[\033[0m\]\$ "

# Groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# flutter
export PATH="$PATH:$HOME/Development/flutter/bin"

# android
export ANDROID_HOME="$HOME/Development/android-sdk-macosx"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# HSTR configuration - add this to ~/.bashrc
alias hh=hstr                    # hh to be alias for hstr
export HSTR_CONFIG=hicolor       # get more colors
shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
# ensure synchronization between Bash memory and history file
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"
# if this is interactive shell, then bind hstr to Ctrl-r (for Vi mode check doc)
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hstr -- \C-j"'; fi
# if this is interactive shell, then bind 'kill last command' to Ctrl-x k
if [[ $- =~ .*i.* ]]; then bind '"\C-xk": "\C-a hstr -k \C-j"'; fi

