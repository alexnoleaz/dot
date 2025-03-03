set_if_not_linux EZA_CONFIG_DIR "$XDG_CONFIG_HOME/eza"

alias ls="eza --git --icons=auto"
alias la="ls -a"
alias ll="ls -la"
alias tree="ls --git-ignore -Ta"
