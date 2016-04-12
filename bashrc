#####################
# Ajouts personnels #
#####################
alias grep='grep --colour=auto'
alias jo='jobs -l'
alias ll='ls -Ahl'
alias up='uptime'
if [ ! -z "$HOME/bin" ]; then
	PATH="$HOME/bin:$PATH"
	export PATH
fi
