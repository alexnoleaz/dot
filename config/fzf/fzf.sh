. "$HOME/.config/fzf/theme.sh"

export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'
  "

export FZF_CTRL_R_OPTS="
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'
  "

export FZF_ALT_C_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'eza --icons=always --color=always --git-ignore -Ta {}'
  "
