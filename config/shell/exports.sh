set_if_not_linux XDG_CONFIG_HOME "$HOME/.config"

export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"

for dir in "$HOME/.bin" "$HOME/.local/bin"; do
  [[ -d "$dir" ]] && PATH="$dir:$PATH"
done
