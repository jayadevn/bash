
alias _='sudo' 
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'
alias ws='cd $WORKSPACE'
alias myip='curl ifconfig.me'


alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up two directories
alias -- -='cd -'        # Go back

alias psgrep="ps aux | egrep -v egrep | egrep"

alias localfn="declare -F |  grep -v  \"declare -f _\" | awk '{print \$3}'"


# SVN Alias
alias svngrep="find ./ -not -path \"*.svn*\" -a -not -iname \"*.svn-*\"  | xargs grep $*"
alias svnhead="svn diff -r head $*"
alias svnignore="svn up . --non-recursive; svn propset svn:ignore -F .svnignore .;  svn ci -m "svnignore" . --non-recursive"


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
