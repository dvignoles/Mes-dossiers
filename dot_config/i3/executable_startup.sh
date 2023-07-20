#!/bin/bash

# pywal
if [ -d ~/.cache/wal ]; then
    (cat ~/.cache/wal/sequences)
elif [ -x "$(command -v wal)" ]; then
    wal --theme base16-atelier-estuary
fi

# Xresources
xrdb -merge -I$HOME ~/.Xresources

# switch super_L and alt_L
xmodmap -e 'remove mod1 = Alt_L'
xmodmap -e 'remove mod4 = Super_L'
xmodmap -e 'add mod1 = Super_L'
xmodmap -e 'add mod4 = Alt_L'

# ssh-agent
eval $(ssh-agent)

eval $(gnome-keyring-daemon --start)

export SSH_AUTH_SOCK
