#!/bin/sh
# various ui-related security settings
# <alexforsale@yahoo.com>

if [ -f /usr/bin/x11-ssh-askpass ]; then
    export SSH_ASKPASS=/usr/bin/x11-ssh-askpass
    export SUDO_ASKPASS=/usr/bin/x11-ssh-askpass
elif [ -f /usr/lib/ssh/x11-ssh-askpass ]; then
    [ ! -L ~/.local/bin/ssh-askpass ] &&
        ln -sf /usr/lib/ssh/x11-ssh-askpass ~/.local/bin/ssh-askpass
    export SSH_ASKPASS=ssh-askpass
    export SUDO_ASKPASS="${HOME}"/.local/bin/ssh-askpass
elif [ -f /usr/local/bin/x11-ssh-askpass ]; then
    export SSH_ASKPASS=/usr/local/bin/x11-ssh-askpass
    export SUDO_ASKPASS=/usr/local/bin/x11-ssh-askpass
fi
