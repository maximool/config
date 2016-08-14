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

if [ ! -z "$HOME/softwares" ]
then
	for software in $(ls $HOME/softwares)
	do
		if [ ! -z "$HOME/softwares/$software/bin" ]
		then
			PATH="$HOME/softwares/$software/bin:$PATH"
		fi
	done
	export PATH
fi
