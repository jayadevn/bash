# cd to dirname(file)
 function ffcd()
 {
     if [ $1 ]; then
         cd $(dirname $1)
     fi
 }

# reload source
reload() {
    source ~/.bashrc;
}

# list directory after cd; also save the last directory
# and open it when a new tab is created.
lcd() {
    builtin cd "${@:-$HOME}" && ll && pwd > $CDHISTORY;
}

setnet() {
    export NETWORK_INTERFACE="$1"
}


# Start a PHP server from a directory, optionally specifying the port
# (Requires PHP 5.4.0+.)
function phpserver() {
    local port="${1:-4000}"
    local ip=`iplocal ${2}`
    echo "Starting server at ${ip}:${port}"
    #sleep 1 && open "http://${ip}:${port}/" &
    php -q -S "${ip}:${port}"
}

function iplocal() {
    local ip=$(ip addr show ${1:-$NETWORK_INTERFACE} | grep -o 'inet [0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+' | grep -o [0-9].*)
    echo $ip
}

function ippublic() {
    curl http://ifconfig.me
}


# Create a data URL from a file
function dataurl() {
    local mimeType=$(file -b --mime-type "$1")
    if [[ $mimeType == text/* ]]; then
        mimeType="${mimeType};charset=utf-8"
    fi
    echo "data:${mimeType};base64,$(openssl base64 -in "$1" | tr -d '\n')"
}

# Determine size of a file or total size of a directory
function fs() {
    if du -b /dev/null > /dev/null 2>&1; then
        local arg=-sbh
    else
        local arg=-sh
    fi
    if [[ -n "$@" ]]; then
        du $arg -- "$@"
    else
        du $arg .[^.]* *
    fi
}


# Use Git’s colored diff when available
hash git &>/dev/null
if [ $? -eq 0 ]; then
    function diff() {
        git diff --no-index --color-words "$@"
    }
fi

date() {
  case $1 in
    -R|--rfc-822)
      # Output RFC-822 compliant date string.
      # e.g. Wed, 16 Dec 2009 15:18:11 +0100
      command date '+"%Y-%m-%d %H:%M:%S"' ;;
    -g)
      command date '+%Y%m%d' ;;
    *)
      command date "$@" ;;
  esac
}

# Syntax-highlight JSON strings or files
# Usage: `json '{"foo":42}'` or `echo '{"foo":42}' | json`
function json() {
    if [ -t 0 ]; then # argument
        python -mjson.tool <<< "$*" | pygmentize -l javascript
    else # pipe
        python -mjson.tool | pygmentize -l javascript
    fi
}


