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
