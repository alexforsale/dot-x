#!/bin/sh
# xdg-desktop-portal settings
# <alexforsale@yahoo.com>

if [ -z "${XDG_CURRENT_DESKTOP}" ]; then
    if [ -n "${DESKTOP_SESSION}" ]; then
        export XDG_CURRENT_DESKTOP="${DESKTOP_SESSION}"
    elif [ -n "${GDMSESSION}" ]; then
        export XDG_CURRENT_DESKTOP="${GDMSESSION}"
    elif [ -n "${XDG_SESSION_DESKTOP}" ]; then
        export XDG_CURRENT_DESKTOP="${XDG_SESSION_DESKTOP}"
    fi
fi
