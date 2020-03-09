# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
  alias cdn='cd ~/Repos/fdp-devops/code/cdn'
  alias newtest='echo test'
  alias gitline='/usr/local/bin/gitline.sh'
  alias gl=gitline
fi

alias hudl="cd ~/Developer/"
