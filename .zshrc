# dotfiles management: https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'


# history
SAVEHIST=100000

### install some antigen bundles
source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load the theme
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
# antigen bundle denysdovhan/spaceship-prompt

local b="antigen-bundle"

# https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
$b command-not-found

$b git
$b git-extras
$b git-flow

$b zsh-users/zsh-autosuggestions
$b zsh-users/zsh-syntax-highlighting

$b z
$b web-search
$b extract

# dev
# $b docker
# $b docker-compose
# $b dotnet
# $b kubectl
# $b npm
# $b jira

# Tell Antigen that you're done.
antigen apply
### end install some antigen bundles


# Load default dotfiles
source ~/.bash_profile


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh