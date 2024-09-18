# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

#	Default
#PS1=\h:\W \u\$
PS1='\[\e[1;1m\][\u@\h \w]\$\[\e[0m\] '

#alias gzip="gzip --best"
alias grep="grep -is"
alias ..="cd .."
alias cd..="cd .."
alias la="\ls -al --color=auto"
#alias ll="\ls -lG --color=auto"
alias ll="\ls -l --color=auto"
alias ln="ln -s"
alias more="less"
alias rm="rm -i"
alias h=history
alias c="for i in {1..50}; do echo; done"
alias psme="ps -fU \$USER"
alias topme="top -U \$USER"
alias htopme="htop -u \$USER"
alias vi=vim
alias qstat="qstat -u \$USER"

#	"Better" done in .inputrc
#set -o vi

function relink {
	rm $1
	ln -s $2 $1
}


function port_update {
	date=`date "+%Y%m%d%H%M%S"`
	echo -e "selfupdate\noutdated\nupgrade outdated
		uninstall inactive\nclean --all installed" > /tmp/port_update.$date
	sudo port -F /tmp/port_update.$date
	#	\rm /tmp/port_update.$date
}


#	-r Read the current history file and append its contents to the history list.
#	(without using the -r, the history of the new shell will only show those manually added to it.)
history -r

#	-s The args are added to the end of the history list as a single entry.
#history -s pip install --upgrade --user pip awscli boto3 jupyter numpy scipy sklearn pandas sqlalchemy seaborn pandoc boto3
#history -s pip install --upgrade --user pip awscli boto3 jupyter numpy scipy sklearn sqlalchemy pandoc



export PATH=".:$HOME/.local/bin:$HOME/.python/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH"


#	For Homebrew
eval "$(/usr/local/bin/brew shellenv)"

