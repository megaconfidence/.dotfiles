if [[ -f "$HOME/.config/zsh/secrets.zsh" ]]; then
  source "$HOME/.config/zsh/secrets.zsh"
fi

# Use kaelzhang/shell-safe-rm (npm), which moves files to the Trash.
# Homebrew's safe-rm is a different tool and permanently deletes files.
alias rm='safe-rm'
