# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# The next line updates PATH for the Google Cloud SDK.
if [ -f '${HOME}/google-cloud-sdk/path.bash.inc' ]; then . '${HOME}/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '${HOME}/google-cloud-sdk/completion.bash.inc' ]; then . '${HOME}/google-cloud-sdk/completion.bash.inc'; fi

export PERL_LOCAL_LIB_ROOT="/c4/home/gwendt/.local/perl5:$PERL_LOCAL_LIB_ROOT";
export PERL_MB_OPT="--install_base /c4/home/gwendt/.local/perl5";
export PERL_MM_OPT="INSTALL_BASE=/c4/home/gwendt/.local/perl5";
export PERL5LIB="/c4/home/gwendt/.local/perl5/lib/perl5:$PERL5LIB";
export PATH="/c4/home/gwendt/.local/perl5/bin:$PATH";

#	canu is a long read assembler.
##export PERL_LOCAL_LIB_ROOT="/c4/home/gwendt/.local/canu-2.1.1/lib/site_perl:$PERL_LOCAL_LIB_ROOT"
#export PERL5LIB="/c4/home/gwendt/.local/canu-2.1.1/lib/site_perl:$PERL5LIB";




#alias sbatch="sbatch --mail-user=$( tail -n 1 ${HOME}/.forward ) --mail-type=ALL --parsable "

#export sbatch="sbatch --mail-user=XXXXX@ucsf.edu --mail-type=FAIL --export=None "



#	This stops the escaping of $ when using command completion
#	like "cat $PWD/RE<TAB>"
#	-->  "cat \$PWD/RE<TAB>"
shopt -u progcomp

