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

#	#	-r Read the current history file and append its contents to the history list.
#	#	(without using the -r, the history of the new shell will only show those manually added to it.)
#	history -r
#	#	-s The args are added to the end of the history list as a single entry.
#	#history -s pip install --upgrade --user pip awscli boto3 jupyter numpy scipy sklearn pandas sqlalchemy seaborn pandoc boto3
#	history -s pip install --upgrade --user pip awscli boto3 jupyter numpy scipy sklearn sqlalchemy pandoc




#	C4 does not do module in the login nodes so need to add condition here
if [ -n "$( declare -F module )" ] ; then

	echo "Loading basic modules"

	module load CBI
	module load htop

fi





export BOWTIE2_INDEXES=/francislab/data1/refs/bowtie2
export BLASTDB=/francislab/data1/refs/blast



#	Put this AFTER all of the module stuff
#PATH=${HOME}/.local/bin:${HOME}/.local/perl/bin:${PATH}:${HOME}/.local/sratoolkit/bin
#PATH=${HOME}/.local/bin:${HOME}/.local/perl/bin:${PATH}
PATH=${HOME}/.local/bin:${PATH}
PATH=".:$PATH"

PATH="${PATH}:${HOME}/.local/rmblast/bin"

#PERL5LIB=${HOME}/.local/perl5/lib
#export PERL5LIB="/c4/home/gwendt/.local/perl5/lib/perl5" #:$PERL5LIB";




#[gwendt@cclc01 /francislab/data1/raw/E-GEOD-105052]$ echo $PATH
#...../usr/lib64/qt-3.3/bin:/opt/bin:/opt/Git/Git-latest/bin:/opt/local/bin

#	For some reason, the head node has a few extra directories in the PATH???

#PATH="$PATH:/usr/lib64/qt-3.3/bin:/opt/bin:/opt/Git/Git-latest/bin:/opt/local/bin"


umask 0027

#	Used on TIPCC. Needed on C4?
#export LD_LIBRARY_PATH=${HOME}/.local/lib64:$LD_LIBRARY_PATH
#export NGS_LIBDIR=${HOME}/.local/lib64
#export CLASSPATH=${HOME}/.local/jar/ngs-java.jar:$CLASSPATH


export CFLAGS="-I${HOME}/.local/include ${CFLAGS}"
export CPPFLAGS="-I${HOME}/.local/include ${CPPFLAGS}"
export LDFLAGS="-L${HOME}/.local/lib ${LDFLAGS}"
#export LD_LIBRARY_PATH="${HOME}/.local/lib:${HOME}/.local/lib/openmpi:${LD_LIBRARY_PATH}"
#export LD_RUN_PATH="${HOME}/.local/lib:${HOME}/.local/lib/openmpi:${LD_RUN_PATH}"
export LD_LIBRARY_PATH="${HOME}/.local/lib:${LD_LIBRARY_PATH}"
export LD_RUN_PATH="${HOME}/.local/lib:${LD_RUN_PATH}"

export PATH=${PATH}:${HOME}/.local/edirect

#	openmpi
#   - use the '-Wl,-rpath -Wl,LIBDIR' linker flag


#in:/c4/home/gwendt/bin:/c4/home/gwendt/.local/rmblast/bin:/sbin" ldconfig -n /c4/home/gwendt/.local/lib
#----------------------------------------------------------------------
#Libraries have been installed in:
#   /c4/home/gwendt/.local/lib
#
#If you ever happen to want to link against installed libraries
#in a given directory, LIBDIR, you must either use libtool, and
#specify the full pathname of the library, or use the '-LLIBDIR'
#flag during linking and do at least one of the following:
#   - add LIBDIR to the 'LD_LIBRARY_PATH' environment variable
#     during execution
#   - add LIBDIR to the 'LD_RUN_PATH' environment variable
#     during linking
#   - use the '-Wl,-rpath -Wl,LIBDIR' linker flag
#   - have your system administrator add LIBDIR to '/etc/ld.so.conf'
#



#alias sbatch="sbatch --mail-user=$( tail -n 1 ${HOME}/.forward ) --mail-type=ALL --parsable "

#	https://slurm.schedmd.com/squeue.html
#	squeue --m -o "%.24i %.11P %.8j %.8u %.2t %.10M %.6D %R" -S M
#export SQUEUE_FORMAT="%.24i %.11P %.8j %.8u %.2t %.10M %.6D %R"
#export SQUEUE_FORMAT="%.24i %.11P %.8j %.8u %.2t %.10M %.6D %.4C %.7m %R"
#export SQUEUE_FORMAT="%.24i %.11P %.12j %.8u %.2t %.8M %.4D %.4C %.4m %R"
export SQUEUE_FORMAT="%.24i %.16P %.24j %.8u %.2t %.8M %.4D %.4C %.7m %.6y %R"

export SQUEUE_SORT="M,-i"

function hc {
	head $1 | cut -c1-150
}

