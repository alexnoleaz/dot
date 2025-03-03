set_if_not_linux BAT_CONFIG_DIR "$XDG_CONFIG_HOME/bat"

if command -v batcat &>/dev/null; then
  alias cat='batcat'
else
  alias cat='bat'
fi
