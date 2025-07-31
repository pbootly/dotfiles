#!/usr/bin/env bash

set -e

if ! command -v stow >/dev/null 2>&1; then
  echo "GNU Stow not installed."
  exit 1
fi

is_wsl() {
  if [ -e /proc/sys/fs/binfmt_misc/WSLInterop ]; then
    return 0
  fi

  return 1
}

if is_wsl; then
  source ./wezterm/cp-wezterm-wsl.sh
  cp_wezterm_wsl
else
  stow wezterm
fi

stow nvim

if [ -f ~/.bashrc ]; then
  mv ~/.bashrc ~/.bashrc.bak
fi
stow bashrc

if [ -n "$BASH_VERSION" ]; then
  exec bash
fi
