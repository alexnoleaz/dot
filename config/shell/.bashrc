# Environment variables
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'
export HISTCONTROL=ignoreboth:erasedups
export GIT_CONFIG_GLOBAL="$HOME/.config/git/.gitconfig"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

## For Windows
os=$(uname -s)
case "$os" in
MINGW* | MSYS* | CYGWIN*)
  export XDG_CACHE_HOME="$HOME/.cache"
  export XDG_CONFIG_HOME="$HOME/.config"
  export XDG_DATA_HOME="$HOME/.local/share"
  export XDG_STATE_HOME="$HOME/.local/state"

  export BAT_CONFIG_DIR="$XDG_CONFIG_HOME/bat"
  export EZA_CONFIG_DIR="$XDG_CONFIG_HOME/eza"
  export YAZI_CONFIG_HOME="$XDG_CONFIG_HOME/yazi"
  ;;
esac

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Paths
for dir in "$HOME/.bin" "$HOME/.local/bin"; do
  [[ -d "$dir" ]] && PATH="$dir:$PATH"
done

# Ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

# Shopt
shopt -s autocd
shopt -s cdspell
shopt -s cmdhist
shopt -s dotglob
shopt -s histappend
shopt -s expand_aliases

# Aliases
## List
alias ls="eza --icons=always --color=always"
alias la="ls -a"
alias ll="ls -la"
alias lt="ls --git-ignore -Ta"

## Fix obvious typos
alias cd..='cd ..'
alias pdw='pwd'

## Colorize the grep command output for ease of use (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## Readable output
alias df='df -h'

## Keyboard
alias give-me-azerty-be="sudo localectl set-x11-keymap be"
alias give-me-qwerty-us="sudo localectl set-x11-keymap us"
alias give-me-qwerty-latam="sudo localectl set-x11-keymap latam"

## Setlocale
alias setlocale="sudo localectl set-locale LANG=en_US.UTF-8"
alias setlocales="sudo localectl set-x11-keymap be && sudo localectl set-locale LANG=en_US.UTF-8"

## Continue download
alias wget="wget -c"

## Ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

## Add new fonts
alias update-fc='sudo fc-cache -fv'

# Switch between bash, zsh, and fish
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

## Fastfetch --short
alias ff="fastfetch"

## Search content with ripgrep
alias rg="rg --sort path"

## Neovim for important files
alias nz="$EDITOR $HOME/.zshrc"
alias nb="$EDITOR $HOME/.bashrc"
alias nf="$EDITOR $HOME/.config/fish/config.fish"
alias nnvim="$EDITOR $HOME/.config/nvim"
alias nfastfetch="$EDITOR $HOME/.config/fastfetch/config.jsonc"
alias nbat="$EDITOR $HOME/.config/bat/config"
alias nfzf="$EDITOR $HOME/.config/fzf/fzf.sh"
alias nstarship="$EDITOR $HOME/.config/starship/starship.toml"
alias neza="$EDITOR $HOME/.config/eza/theme.yml"
alias ngit="$EDITOR $HOME/.config/git/.gitconfig"

## Git
alias rmgitcache="rm -r ~/.cache/git"
alias grh="git reset --hard"

## Concatenate files with bat
alias cat=$(command -v batcat || command -v bat)

# Functions
function _load_file_if_exists() {
  [[ -f "$1" ]] && . "$1"
}

_load_file_if_exists "$XDG_CONFIG_HOME/fzf/fzf.sh"

# Load tools
eval "$(fzf --bash)"
eval "$(starship init bash)"
eval "$(zoxide init --cmd "cd" bash)"

fastfetch
