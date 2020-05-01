
# Load our dotfiles like ~/.bash_prompt, etc…
#   ~/.extra can be used for settings you don’t want to commit,
#   Use it to configure your PATH, thus it being first in line.
for file in ~/.{aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# Move next only if `homebrew` is installed
if command -v brew >/dev/null 2>&1; then
	# Load rupa's z if installed
	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi

##
## Completion…
##

if [[ -n "$ZSH_VERSION" ]]; then  # quit now if in zsh
    return 1 2> /dev/null || exit 1;
fi;


[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile