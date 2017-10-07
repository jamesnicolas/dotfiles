# .bash_profile

# This needs to be first
export DOTFILEPATH=$(cd `dirname \`readlink ~/.bash_profile\`` && pwd -P)

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Auto complete for the ops command
_ops()
{
  if [ $COMP_CWORD -eq 1 ]; then
    COMPREPLY=( $(compgen -W "$(ops __COMPLETE | grep '#' | awk '{print $1}')" -- "${COMP_WORDS[${COMP_CWORD}]}") )
  else
    COMPREPLY=()
  fi
}
complete -o default -F _ops ops

# User specific environment (stuff that will get passed on to subshells)

export PATH=$HOME/.bin:~/.gem/ruby/1.8/bin:$PATH
export MANPATH=/usr/local/man:$MANPATH

unset USERNAME
export CLICOLOR

export HISTCONTROL=erasedups
export HISTSIZE=10000

export GREP_OPTIONS="-I --color --exclude=*.svn-base"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

