# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH


##################################################

#	
#	EDITOR=vi
#	export EDITOR
#	

#	Default
#PS1=\h:\W \u\$
PS1='\[\e[1;1m\][\u@\h \w]\$\[\e[0m\] '

alias gzip="gzip --best"
alias grep="grep -is"
alias ..="cd .."
alias cd..="cd .."
alias la="\ls -al --color=auto"
alias ll="\ls -lG --color=auto"
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

#	-r Read the current history file and append its contents to the history list.
#	(without using the -r, the history of the new shell will only show those manually added to it.)
history -r
#	-s The args are added to the end of the history list as a single entry.
history -s pip install --upgrade --user pip awscli boto3 jupyter numpy scipy sklearn pandas sqlalchemy seaborn pandoc boto3




module load CBC
module load openssl/1.1.1a

module load python3	#	"fragile", would be nice if newer version were available
alias python=python3


module load bowtie2/2.3.4.1
#	module load kallisto/0.44.0	#	I installed newer version

#	module load gcc/5.1.0	#	doesn't load
module load gcc/4.9.2

module load r/3.6.1

#	NEEDED for bbmap tools
module load jdk/8

module load gatk/4.0.2.1

module load udocker/1.1.0


export LD_LIBRARY_PATH="/home/gwendt/.local/lib/:/home/gwendt/.local/lib64:${LD_LIBRARY_PATH}"
export CPPFLAGS="-I/home/gwendt/.local/include -I/home/gwendt/.local/include/openssl ${CPPFLAGS}"
export LDFLAGS="-L/home/gwendt/.local/lib -L/home/gwendt/.local/lib64 -Wl,-rpath,/home/gwendt/.local/lib -Wl,-rpath,/home/gwendt/.local/lib64 ${LDFLAGS}"
export CXXFLAGS="-fPIC ${CXXFLAGS}"

export BOWTIE2_INDEXES=/data/shared/francislab/refs/bowtie2


#	Put this AFTER all of the module stuff
PATH=${HOME}/.local/bin:${PATH}
PATH=".:$PATH"

