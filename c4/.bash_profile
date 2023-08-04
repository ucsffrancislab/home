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

#		module load htslib
#		module load samtools
#		module load sratoolkit/2.10.9
#		module load fastqc
#	  module load mpi/openmpi-x86_64
#	#	#	module load mpi/openmpi3-x86_64
#		export PYTHONPATH=""
fi





##
##if [[ $HOSTNAME != *"log"* ]] ; then 
##if [[ -n "$MODULEPATH" ]]; then
##if [[ $HOSTNAME = "c4-n"* ]] ; then 
#if [[ $HOSTNAME == "c4-"+(n|dev)* ]]; then
##
##	This does not get source this file by run jobs
##
##	or
##echo $LMOD_CMD 
##/usr/share/lmod/lmod/libexec/lmod
##if [ -n "${LMOD_CMD}" ] ; then
#
##declare -F module
##module_exists=$?
##if [ $module_exists -eq 0 ] ; then
##if [ -n "$( declare -F module )" ] ; then
#
#	echo "Loading modules"
#
#	module load CBI #	module load CBC
#	module load htop
#
#	module load htslib
#	module load samtools
#	module load bowtie
#	module load bowtie2	#	trying older version bowtie2 2.2.2 for CIRCexplorer2. No joy
#	module load tophat
#	module load bcl2fastq
#	module load kallisto
##	module load bcftools
##	module load r
#
#	#	Many of my installs likely unnecessary on C4
#
##	module load openssl/1.1.1a
##	module load zlib
##	
##	#module load python3	#	"fragile", would be nice if newer version were available
##	#alias python=python3
##	#module load python/2.7.15
##	module load python/2.7.10	#	2.7.10 for gdc-client
##	
##	#module load bowtie2/2.3.4.1	#	I installed newer version
##	#	module load kallisto/0.44.0	#	I installed newer version
##	
##	#	module load gcc/5.1.0	#	doesn't load
##	module load gcc/4.9.2
##	
##	module load r/3.6.1
##	
##	#	NEEDED for bbmap tools
##	module load jdk/8
##	
##	module load gatk/4.0.2.1
##	
##	#module load udocker/1.1.0
##	
##	#	Locally installed 2.8.1 to work with new blast databases
##	#module load blast/2.7.1
##	
##	module load coreutils/8.6
##	
##	module load sqlite
##	
##	#	for gffread
##	module load cufflinks
##	
##	module load cmake
##	
##	#module load plink2	#	too new. Downloaded plink v1.90b6.16.
##	
##	module load gawk
##	
##	module load bedtools2
##	
##	
##	module load git git-lfs
##	
##	#module load gdc-client	#	OLD version 1.0.1
##	
##	
##	module load bwa	#/0.7.17
##	
##	
##	#module load sratoolkit
##	#module load sratoolkit/2.8.2-1
#	
#	module load sratoolkit/2.10.9
#	module load fastqc
#
#
##	Don't use this 
##  module load mpi/openmpi-x86_64
##	its sets PYTHONPATH
##	/usr/lib64/python2.7/site-packages/openmpi
##	which causes problems when trying to run python3 scripts
#
##	module load mpi/openmpi-x86_64
##	#module load mpi/openmpi3-x86_64
##	export PYTHONPATH=""
#
#
#fi


#	Add /home/shared/cbc/local/lib/libgmp.so for jellyfish and likely MEGAN

#	Used on TIPCC. Needed on C4?
#	export LD_LIBRARY_PATH="${HOME}/.local/lib/:${HOME}/.local/lib64:/home/shared/cbc/local/lib:${LD_LIBRARY_PATH}"
#	export CPPFLAGS="-I${HOME}/.local/include -I${HOME}/.local/include/openssl ${CPPFLAGS}"
#	#export LDFLAGS="-L${HOME}/.local/lib -L${HOME}/.local/lib64 -Wl,-rpath,${HOME}/.local/lib -Wl,-rpath,${HOME}/.local/lib64 -L/home/shared/cbc/local/lib ${LDFLAGS}"
#	export LDFLAGS="-L${HOME}/.local/lib -L${HOME}/.local/lib64 -Wl,-rpath,${HOME}/.local/lib -Wl,-rpath,${HOME}/.local/lib64 ${LDFLAGS}"
#	export CXXFLAGS="-fPIC ${CXXFLAGS}"


#
#The Boost C++ Libraries were successfully built!
#
#The following directory should be added to compiler include paths:
#
#export CPPFLAGS="-I${HOME}/.local/boost_1_74_0 ${CPPFLAGS}"
#export CPATH="${HOME}/.local/boost_1_74_0:${CPATH}"
#    ${HOME}/.local/boost_1_74_0
#
#The following directory should be added to linker library paths:
#
#export LDFLAGS="-L${HOME}/.local/boost_1_74_0/stage/lib ${LDFLAGS}"
#export LD_LIBRARY_PATH="${HOME}/.local/boost_1_74_0/stage/lib:${LD_LIBRARY_PATH}"
#    ${HOME}/.local/boost_1_74_0/stage/lib
#


export BOWTIE2_INDEXES=/francislab/data1/refs/bowtie2
export BLASTDB=/francislab/data1/refs/blast



#	Put this AFTER all of the module stuff
#PATH=${HOME}/.local/bin:${HOME}/.local/perl/bin:${PATH}:${HOME}/.local/sratoolkit/bin
PATH=${HOME}/.local/bin:${HOME}/.local/perl/bin:${PATH}
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
export SQUEUE_FORMAT="%.24i %.11P %.12j %.8u %.2t %.8M %.4D %.4C %.7m %R"

export SQUEUE_SORT="M,-i"

function hc {
	head $1 | cut -c1-150
}

