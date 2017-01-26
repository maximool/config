#####################
# Ajouts personnels #
#####################
alias grep='grep --colour=auto'
alias jo='jobs -l'
alias la='ls --almost-all --human-readable -l'
alias ll='ls --human-readable -l'
alias ping='ping -c 4'
alias up='uptime'
alias vi='vim'

if [ -d "$HOME/bin" ]
then
	PATH="$HOME/bin:$PATH"
	export PATH
fi

if [ -d "$HOME/softwares" ]
then
	for software in $(ls $HOME/softwares)
	do
		if [ -d "$HOME/softwares/$software/bin" ]
		then
			PATH="$HOME/softwares/$software/bin:$PATH"
		fi
	done
	export PATH
fi

# cf. /usr/lib/git-core/git-sh-prompt. Voir aussi les ajouts de "$(__git_ps1)"
# à la fin de PS1 ci-haut
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM='auto'
