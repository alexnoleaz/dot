[[ $- != *i* ]] && return

export SHELL_CONFIG_DIR="$HOME/.config/shell/"

# Load custom shell configuration
for file in functions.sh exports.sh aliases.sh sources.sh; do
  . "$SHELL_CONFIG_DIR/$file"
done
