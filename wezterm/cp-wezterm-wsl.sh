#!/usr/bin/env bash

cp_wezterm_wsl() {
  WIN_USERNAME=$(cmd.exe /c "echo %USERNAME%" | tr -d '\r')
  WIN_HOME="/mnt/c/Users/${WIN_USERNAME}"

  DOTFILES="${HOME}/dotfiles"

  SRC="${DOTFILES}/wezterm/.config/wezterm/wezterm.lua"
  DEST="${WIN_HOME}/.wezterm.lua"

  if [ -f "${DEST}" ] && [ ! -L "${DEST}" ]; then
    cp "${DEST}" "${DEST}.bak"
  fi

  cp "$SRC" "$DEST"
}
