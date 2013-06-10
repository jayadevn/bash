#!/bin/sh

source $HOME/.whereami
if [[ -z "$WHEREAMI" ]]; then
    WHEREAMI="@HOME"
fi
source $HOME/.bash_config/aliases.sh
source $HOME/.bash_config/export.sh
source $HOME/.bash_config/options.sh
source $HOME/.bash_config/util.sh

