if [ -f "$DOTFILES/git/.git-completion.zsh" ]; then
  echo "==> git-completion already exists"
else
  echo "==> downloading git-completion.zsh"
  curl 'https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh' > $DOTFILES/git/.git-completion.zsh
fi

if [ -f "$DOTFILES/git/.git-prompt.sh" ]; then
  echo "==> git-prompt already exists"
else
  echo "==> downloading git-prompt.sh"
  curl 'https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh' > $DOTFILES/git/.git-prompt.sh
fi
