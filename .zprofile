#!/bin/zsh

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.local/bin/dmenu" ] ;
  then PATH="$HOME/.local/bin/dmenu:$PATH"
fi

if [ -d "$HOME/.local/bin/rofi" ] ;
  then PATH="$HOME/.local/bin/rofi:$PATH"
fi

if [ -d "/home/rahmat/.local/bin/dwm-script" ] ;
  then PATH="$HOME/.local/bin/dwm-script:$PATH"
fi

# Default programs:
export EDITOR="nvim"
#export BROWSER="chromium"
export TERMINAL="alacritty"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ANDROID_HOME=$HOME/.android/Sdk/
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc"
export LESSHISTFILE="-"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/history"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export _JAVA_AWT_WM_NONREPARENTING=1	# Fix for Java applications in dwm


[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"
