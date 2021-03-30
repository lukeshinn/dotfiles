# Aesthetic
[Nerd Font](https://github.com/cekrem/dotfiles/blob/master/fonts/Meslo%20LG%20L%20DZ%20Regular%20Nerd%20Font%20Complete%20Mono.otf "Nerd font for icons and terminal font")

[Color Schemes](https://iterm2colorschemes.com/ "Material")

#### Install oh-my-zsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
You will need to remove the .zshrc that is generated after running this and re-symlink .zshrc to your dotfiles repo.

#### Install ZSH Theme
`git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`

## Gotchas
You might need to change the $ZSH environment variable in the zshrc.symlink file
