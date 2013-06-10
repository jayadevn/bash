
alias _='sudo' 
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'
alias ws='cd $WORKSPACE'
alias myip='curl ifconfig.me'
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''
alias l.='ls -d .* --color=auto'


alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up two directories
alias -- -='cd -'        # Go back

alias trabajo="source $HOME/trabajo"

#alias psgrep="ps aux | egrep -v egrep | egrep"

alias localfn="declare -F |  grep -v  \"declare -f _\" | awk '{print \$3}'"

# show hidden files only
alias l.='ls -d .* --color=auto -alFh'



# SVN Alias
alias svngrep="find ./ -not -path \"*.svn*\" -a -not -iname \"*.svn-*\"  | xargs grep $*"
alias svnhead="svn diff -r head $*"
alias svnignore="svn up . --non-recursive; svn propset svn:ignore -F .svnignore .;  svn ci -m "svnignore" . --non-recursive"

# Sys info
alias cpu='cat /proc/cpuinfo'
alias mem='cat /proc/meminfo'
alias topmem='ps -o time,ppid,pid,nice,pcpu,pmem,user,comm -A | sort -n -k 6 | tail -15'



# Shell History
alias h='history'

# Tree
if [ ! -x "$(which tree 2>/dev/null)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
