#
# A tweaked out bash script that adds a bunch of useful functionality.
#
# NOTE: ~ expansion doesn't work here, for partially unclear reasons

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Tell pepople about how to interact with dotfiles
if [ ! -f $HOME/.hushlogin ] ; then
	echo "Run 'dotfiles help' to get info about the features in this dotfiles package. Touch ~/.hushlogin to quell this and all other system provided login messages"
fi

# Color setup
if [ "$TERM" != "dumb" ] ; then
	NOCOLOR=$(tput sgr0)
	BLACK=$(tput setaf 0)
	RED=$(tput setaf 1)
	GREEN=$(tput setaf 2)
	YELLOW=$(tput setaf 3)
	BLUE=$(tput setaf 4)
	MAGENTA=$(tput setaf 5)
	CYAN=$(tput setaf 6)
	WHITE=$(tput setaf 7)
	BOLD=$(tput bold)
	UNDERLINE=$(tput smul)
	BLINK=$(tput blink)
	REVERSE=$(tput rev)
fi

colortest() {
	echo -e "${NOCOLOR}COLOR_NC (No color)"
	echo -e "${NOCOLOR}${BLACK}BLACK\t${BOLD}BLACK"
	echo -e "${NOCOLOR}${RED}RED\t${BOLD}RED"
	echo -e "${NOCOLOR}${GREEN}GREEN\t${BOLD}GREEN"
	echo -e "${NOCOLOR}${YELLOW}YELLOW\t${BOLD}YELLOW"
	echo -e "${NOCOLOR}${BLUE}BLUE\t${BOLD}BLUE"
	echo -e "${NOCOLOR}${MAGENTA}MAGENTA\t${BOLD}MAGENTA"
	echo -e "${NOCOLOR}${CYAN}CYAN\t${BOLD}CYAN"
	echo -e "${NOCOLOR}${WHITE}WHITE\t${BOLD}WHITE"
}

gemedit() {
	$EDITOR `dirname \`gem which $1\``
}

#redefine pushd and popd so they don't output the directory stack
cd()
{
	pushd "$@" > /dev/null
	ls -lhG
}

cdb()
{
	popd "$@" > /dev/null
	ls -lhG
}

alias cd..='cd ..'
alias ..='cd ..'

alias dir='ls -lhG'
alias ll='ls -lhG'
alias l='ls -lhG'
alias ls='ls -G'
alias ls-='ls -la #'
alias df='df -h'
alias gdb="gdb -q"
alias b="cd .."
alias lsa="ls -a"

# Resize our window oppourtunistically
shopt -s checkwinsize

# Tweak our history settings
shopt -s histappend
alias h='history|grep'

# Set readline vars
set completion-ignore-case on

# Now to enhance our prompt
export LSCOLORS=dxexbxbxcxbxbxfx
export GIT_PS1_SHOWDIRTYSTATE=1
PS1="[\[${BLUE}\]\u@\h \[${BOLD}\]\w\[${NOCOLOR}\]\$(__git_ps1 ' (\[${MAGENTA}\]%s\[${NOCOLOR}\])')]\\$ "

# Prompt command updates our terminal window title
PROMPT_COMMAND='echo -ne "\033]0; [${USER}@${HOSTNAME} ${PWD/$HOME/~}]\007"'

# Pull in our completion scripts
if [ -f $DOTFILEPATH/bash_completion ]; then
	export BASH_COMPLETION="$DOTFILEPATH/bash_completion"
	export BASH_COMPLETION_DIR="$DOTFILEPATH/bash_completion.d"
	. $DOTFILEPATH/bash_completion
fi

# Source personal definitions -- these are ones that don't belong in a universal bashrc
if [ -f $DOTFILEPATH/bashrc.private ]; then
	. $DOTFILEPATH/bashrc.private
fi

# Source local definitions -- these aren't copied between machines
if [ -f $DOTFILEPATH/bashrc.local ]; then
	. $DOTFILEPATH/bashrc.local
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Arcanist for create code reviews on Phabricator
export PATH=$PATH:~/workspace/dev_scripts/arcanist/bin
alias cr='arc diff --preview'

export PATH=$PATH:/usr/local/share/npm/bin/
export NODE_PATH='/usr/local/lib/node'

_ops()
{
  if [ $COMP_CWORD -eq 1 ]; then
    COMPREPLY=( $(compgen -W "$(ops __COMPLETE| grep '#' | awk '{print $1}')" -- "${COMP_WORDS[${COMP_CWORD}]}") )
  else
    COMPREPLY=()
  fi
}
complete -o default -F _ops ops

export EDITOR='vim'
export VISUAL='vim'

# Docker stuff

alias dbash='docker exec -ti platform bash'
alias dmysql='docker exec -it mysql-norpharm mysql -uroot -proot norpharm'

dssh() {
	docker exec -ti "$1" bash
}

dlog() {
	if [ "$1" = 'platform' ]
		then
			docker exec -ti "$1" bash -c 'tail -f /var/log/apache2/*.log'
	elif [ "$1" = 'admin-console' ]
		then
			docker exec -ti "$1" bash -c 'tail -f /var/log/nginx/*.log'
	else
		docker exec -ti "$1" bash
	fi
}
