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

#	-r Read the current history file and append its contents to the history list.
#	(without using the -r, the history of the new shell will only show those manually added to it.)
history -r
#	-s The args are added to the end of the history list as a single entry.
#history -s pip install --upgrade --user pip awscli boto3 jupyter numpy scipy sklearn pandas sqlalchemy seaborn pandoc boto3
history -s pip install --upgrade --user pip awscli boto3 jupyter numpy scipy sklearn sqlalchemy pandoc




module load CBC
module load htop
module load openssl/1.1.1a
module load zlib

#module load python3	#	"fragile", would be nice if newer version were available
#alias python=python3
#module load python/2.7.15
module load python/2.7.10	#	2.7.10 for gdc-client


#module load bowtie2/2.3.4.1	#	I installed newer version
#	module load kallisto/0.44.0	#	I installed newer version

#	module load gcc/5.1.0	#	doesn't load
module load gcc/4.9.2

module load r/3.6.1

#	NEEDED for bbmap tools
module load jdk/8

module load gatk/4.0.2.1

#module load udocker/1.1.0

#	Locally installed 2.8.1 to work with new blast databases
#module load blast/2.7.1

module load coreutils/8.6

module load sqlite

#	for gffread
#module load cufflinks

module load cmake

#module load plink2	#	too new. Downloaded plink v1.90b6.16.

module load gawk

module load bedtools2


module load git git-lfs

#module load gdc-client	#	OLD version 1.0.1


module load bwa	#/0.7.17


#module load sratoolkit
#module load sratoolkit/2.8.2-1

module load fastqc


module load bcl2fastq


#module load bowtie
#module load tophat

#module load bowtie #triggers downgrading python from 2.7.10 to 2.7.9 which triggers other failures
#module load bowtie2/2.1.0

module load cufflinks	#	for CIRCexplorer2

#module load samtools/0.1.19-patched
#module load samtools	#/0.1.19-patched
#module load bowtie/1.2.2
#export PATH="$HOME/.local/bowtie-1.2.3:$PATH"
#export PATH="$HOME/.local/bowtie-1.3.0:$PATH"
#module load bowtie2/2.1.0
#export PATH="$HOME/.local/bowtie2-2.2.2:$PATH"
#export PATH="$HOME/.local/bowtie2-2.3.5.1:$PATH"
#module load tophat/2.1.0
#export PATH="$HOME/.local/tophat-2.1.1:$PATH"


#	prep for CIRCexplorer2
export PATH="$HOME/.local/tophat-2.1.0/:$PATH"
module load samtools/1.7
module load bowtie2/2.3.4.1

echo "Loading bowtie 1.2.2 which will change python to 2.7.9"
module load bowtie/1.2.2
echo "Changing python back to 2.7.10"
module load python/2.7.10



#	Add /home/shared/cbc/local/lib/libgmp.so for jellyfish and likely MEGAN

export LD_LIBRARY_PATH="/home/gwendt/.local/lib/:/home/gwendt/.local/lib64:/home/shared/cbc/local/lib:${LD_LIBRARY_PATH}"
export CPPFLAGS="-I/home/gwendt/.local/include -I/home/gwendt/.local/include/openssl ${CPPFLAGS}"
#export LDFLAGS="-L/home/gwendt/.local/lib -L/home/gwendt/.local/lib64 -Wl,-rpath,/home/gwendt/.local/lib -Wl,-rpath,/home/gwendt/.local/lib64 -L/home/shared/cbc/local/lib ${LDFLAGS}"
export LDFLAGS="-L/home/gwendt/.local/lib -L/home/gwendt/.local/lib64 -Wl,-rpath,/home/gwendt/.local/lib -Wl,-rpath,/home/gwendt/.local/lib64 ${LDFLAGS}"
export CXXFLAGS="-fPIC ${CXXFLAGS}"


#
#The Boost C++ Libraries were successfully built!
#
#The following directory should be added to compiler include paths:
#
#export CPPFLAGS="-I/home/gwendt/.local/boost_1_74_0 ${CPPFLAGS}"
#export CPATH="/home/gwendt/.local/boost_1_74_0:${CPATH}"
#    /home/gwendt/.local/boost_1_74_0
#
#The following directory should be added to linker library paths:
#
#export LDFLAGS="-L/home/gwendt/.local/boost_1_74_0/stage/lib ${LDFLAGS}"
#export LD_LIBRARY_PATH="/home/gwendt/.local/boost_1_74_0/stage/lib:${LD_LIBRARY_PATH}"
#    /home/gwendt/.local/boost_1_74_0/stage/lib
#


#export BOWTIE_INDEXES=/francislab/data1/refs/bowtie
export BOWTIE2_INDEXES=/francislab/data1/refs/bowtie2
export BLASTDB=/francislab/data1/refs/blastn/



#	Put this AFTER all of the module stuff
#PATH=${HOME}/.local/bin:${HOME}/.local/perl/bin:${PATH}:${HOME}/.local/sratoolkit/bin
PATH=${HOME}/.local/bin:${HOME}/.local/perl/bin:${PATH}
PATH=".:$PATH"

PERL5LIB=${HOME}/.local/perl/lib


#[gwendt@cclc01 /francislab/data1/raw/E-GEOD-105052]$ echo $PATH
#...../usr/lib64/qt-3.3/bin:/opt/bin:/opt/Git/Git-latest/bin:/opt/local/bin

#	For some reason, the head node has a few extra directories in the PATH???

#PATH="$PATH:/usr/lib64/qt-3.3/bin:/opt/bin:/opt/Git/Git-latest/bin:/opt/local/bin"


umask 0027

export LD_LIBRARY_PATH=/home/gwendt/.local/lib64:$LD_LIBRARY_PATH
export NGS_LIBDIR=/home/gwendt/.local/lib64
export CLASSPATH=/home/gwendt/.local/jar/ngs-java.jar:$CLASSPATH

#PATH="~/.local/bowtie2-2.2.2/:~/.local/tophat-2.0.9.Linux_x86_64/:$PATH"

#export PATH="$HOME/.local/bowtie2-2.2.2:$HOME/.local/bowtie-1.2.3:$HOME/.local/tophat-2.0.9:$PATH"
#export PATH="$HOME/.local/bowtie2-2.2.2:$HOME/.local/bowtie-1.2.3:$HOME/.local/tophat-2.1.1:$PATH"



