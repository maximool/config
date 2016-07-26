#####################
# Ajouts personnels #
#####################
alias grep='grep --colour=auto'
alias jo='jobs -l'
alias la='ls --almost-all --human-readable -l'
alias ll='ls --human-readable -l'
alias up='uptime'
alias vi='vim'

if [ ! -z "$HOME/bin" ]
then
	PATH="$HOME/bin:$PATH"
	export PATH
fi
