" =============================================================================
"  Vim-Plug
"==============================================================================

" Vim plugged by junegunn https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" commenter plugin that uses leader
Plug 'scrooloose/nerdcommenter'

" Snippets
Plug 'garbas/vim-snipmate'

"snipmate dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

" Adds end curleys and brackets
Plug 'valloric/matchtagalways'

" adds bottom information bar
Plug 'bling/vim-airline'

" Pair brackets and quotes
Plug 'jiangmiao/auto-pairs'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Color-schemes
Plug 'flazz/vim-colorschemes'

" show search position among all results
Plug 'google/vim-searchindex'

" twig syntax
Plug 'lumiliet/vim-twig'

" Time Tracker
"Plug 'wakatime/vim-wakatime'

" surround selection with elements
Plug 'tpope/vim-surround'

" PHP indent script
Plug '2072/PHP-Indenting-for-VIm'

" show VCS changes
Plug 'mhinz/vim-signify'

" newer language support
Plug 'sheerun/vim-polyglot'

" realtime linting
Plug 'w0rp/ale'

" deoplete dependencies
Plug 'Shougo/deoplete.nvim'          " async completion
Plug 'roxma/nvim-yarp'               " deoplete dependency
Plug 'roxma/vim-hug-neovim-rpc'      " deoplete dependency

" emmet html builder support
Plug 'mattn/emmet-vim'

" python syntax
Plug 'vim-python/python-syntax'

" python indentation
Plug 'Vimjas/vim-python-pep8-indent'

Plug 'junegunn/vim-easy-align'

" Initialize plugin system
call plug#end()
