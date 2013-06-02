export PATH=".:./bin:$HOME/bin/:/bin:/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/X11/bin:$HOME/.bash_config/scripts:$PATH"
export INSTALL_DIR="$HOME/local"
export EDITOR=vim

export NETWORK_INTERFACE="eth1"

export SVN_EDITOR="/usr/bin/vim"


# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
export HISTCONTROL=ignoreboth
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTFILESIZE=1000000
export HISTIGNORE="&"
export HISTSIZE=${HISTFILESIZE}

export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CDHISTORY="/tmp/cd-${USER}"

export LESS_TERMCAP_mb=$'\E[04;33m'
export LESS_TERMCAP_md=$'\E[04;33m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[00;32m'

#export EC2_HOME="$HOME/.ec2"
#export EC2_PRIVATE_KEY="$EC2_HOME/pk.pem"
#export EC2_CERT="$EC2_HOME/cert.pem"
#export EC2_AMI_HOME="$EC2_HOME/ec2-ami-tools"
#export PATH="$EC2_HOME/bin:$EC2_AMI_HOME/bin:$PATH"
#export JAVA_HOME="/Library/Java/Home"

FILES=$HOME/.bash_config/path.d/*
for f in $FILES
do 
	source $f
done

export WORKSPACE="$HOME/workspace"
