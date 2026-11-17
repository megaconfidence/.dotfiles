if [[ -f "$HOME/.config/zsh/secrets.zsh" ]]; then
  source "$HOME/.config/zsh/secrets.zsh"
fi

# Make user-installed binaries available to non-interactive shells too
if [[ -d "$HOME/.local/bin" ]]; then
  export PATH="$HOME/.local/bin:$PATH"
fi

alias rm='safe-rm'
