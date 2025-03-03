# Initialize Bash
source "$HOME/.config/shell/init.sh"
export BASH_CONFIG_DIR="$SHELL_CONFIG_DIR/bash"

# Load custom Bash configuration
load_if_exists "$BASH_CONFIG_DIR/sources.bash"
