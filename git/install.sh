echo "==> downloading git-completion.zsh"
curl 'https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh' > $DOTFILES/git/.git-completion.zsh

echo "==> downloading git-prompt.sh"
curl 'https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh' > $DOTFILES/git/.git-prompt.sh
