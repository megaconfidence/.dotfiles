if [[ -f "$HOME/.config/zsh/secrets.zsh" ]]; then
  source "$HOME/.config/zsh/secrets.zsh"
fi

if [[ -x /opt/homebrew/bin/safe-rm ]]; then
  alias rm=/opt/homebrew/bin/safe-rm
fi
