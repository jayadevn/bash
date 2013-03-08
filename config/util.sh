# reload source
reload() {
    source ~/.bashrc;
}

# list directory after cd; also save the last directory
# and open it when a new tab is created.
lcd() {
    builtin cd "${@:-$HOME}" && ll && pwd > $CDHISTORY;
}
