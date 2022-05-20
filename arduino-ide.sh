#!/bin/bash

FLAGS='--no-sandbox'

if [[ $XDG_SESSION_TYPE == "wayland" ]] && [ -c /dev/nvidia0 ]
then
    FLAGS="$FLAGS --disable-gpu-sandbox"
fi

# I'm Unable to get this working just yet.
#ELECTRON_RUN_AS_NODE=1
#ZYPAK_SPAWN_LATEST_ON_REEXEC=0
#env TMPDIR=$XDG_CACHE_HOME zypak-wrapper /app/arduino-ide/arduino-ide $FLAGS "$@"

exec /app/arduino-ide/arduino-ide $FLAGS "$@"
