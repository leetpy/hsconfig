#!/bin/bash

SCRIPT_HOME=$(cd $(dirname $0) && pwd)

function main {
    if [ -f "$HOME/.hammerspoon/init.lua" ]; then
        echo "backup old hs config"
        mv "$HOME/.hammerspoon/init.lua" "$HOME/.hammerspoon/init.lua.bak"
        cp $SCRIPT_HOME/init.lua "$HOME/.hammerspoon/init.lua"
    fi
}

main
