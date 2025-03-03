# Fix obvious typos
alias cd..="cd .."
alias pdw="pwd"

# Keyboard
alias give-me-azerty-be="sudo localectl set-x11-keymap be"
alias give-me-qwerty-us="sudo localectl set-x11-keymap us"
alias give-me-qwerty-latam="sudo localectl set-x11-keymap latam"

# Setlocale
alias setlocale="sudo localectl set-locale LANG=en_US.UTF-8"
alias setlocales="sudo localectl set-x11-keymap be && sudo localectl set-locale LANG=en_US.UTF-8"

# Switch between bash, zsh, and fish
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

# Safe grep alias (compatible with both shells)
if command -v grep &>/dev/null; then
  alias grep="grep --color=auto"
fi

# Ensure wget exists before aliasing
if command -v wget &>/dev/null; then
  alias wget="wget -c"
fi

# Process utilities
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

# Font cache update
alias update-fc="sudo fc-cache -fv"
