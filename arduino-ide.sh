#!/bin/bash

FLAGS='--no-sandbox'

if [[ $XDG_SESSION_TYPE == "wayland" ]] && [ -c /dev/nvidia0 ]
then
    FLAGS="$FLAGS --disable-gpu-sandbox"
fi

# I'm Unable to get this working just yet.
#env TMPDIR=$XDG_CACHE_HOME zypak-wrapper /app/arduino-ide/arduino-ide $FLAGS "$@"

exec /app/arduino-ide/arduino-ide $FLAGS "$@"
