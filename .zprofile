#!/bin/zsh

export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="librewolf"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec startx "$HOME/.xinitrc"
fi
