" Luke Shinn vim settings


" =============================================================================
"  General Settings
"==============================================================================
set ma                   " set modifiable on
xnoremap p pgvy		  " allows more than 1 paste
set nocompatible          " dont try to be compatible with vi
syntax enable             " enable syntax processing
filetype plugin on        " load filetype-specific indent files
filetype indent on
set encoding=utf8         " set encoding
set t_Co=256              " explicitly tell vim that the terminal supports 256 colors
set ttyfast               " faster redrawing
set number                    " show line numbers
set relativenumber            " use relative lines
set title                     " show file name in window title
set cursorline                " highlight line with cursor
set showmatch                 " show matching brackets
set matchpairs+=<:>           " make < and > match as well
set mouse=a                   " enable mouse for scrolling
set showcmd                   " show current command in bottom right
set laststatus=2              " always show airline
set wildmenu                  " visual autocomplete for command menu
" set wildcharm=<TAB>           " auto completetion hotkey
" set lazyredraw                " redraw only when we need to
set list                      " show invisible characters
set listchars=tab:→\ ,trail:⋅ " list chars
set fillchars=vert:│          " set vert split character to taller line
set clipboard=unnamed         " Share Mac clipboard
set noswapfile	              " don’t make swap in vim
set omnifunc=syntaxcomplete#Complete
set ignorecase " ignore case in search patterns
set smartcase       " override the 'ignorecase' option if the search pattern contains upper case characters


" prettydiff current file
command! PrettyDiff call PrettyDiffer()
function! PrettyDiffer()
  silent :!prettydiff %
endfunction

" =============================================================================
"  Nerd Tree Settings 
"==============================================================================
autocmd BufEnter * lcd %:p:h
let loaded_netrwPlugin = 1
let NERDTreeQuitOnOpen=1
autocmd vimenter * NERDTree   " load NERDtree on open
" set autochdir                 " open window in same path as NT

" =============================================================================
"  Auto Completion
"==============================================================================

set pumheight =8		" number of completions shown
let g:ycm_min_num_of_chars_for_completion = 2 " you complete me settings
let g:ycm_auto_trigger = 1
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
"let g:ycm_key_invoke_completion = '<leader>' 
let g:ycm_key_list_select_completion = ['<F3>']


	"YCM language scrips
 autocmd FileType python set omnifunc=pythoncomplete#Complete
 autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
 autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
 autocmd FileType css set omnifunc=csscomplete#CompleteCSS
 autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
 autocmd FileType php set omnifunc=phpcomplete#CompletePHP
 autocmd FileType c set omnifunc=ccomplete#Complete

	" omnifuncs for deplete
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

" =============================================================================
"  Vim-Plug
"==============================================================================

" Vim plugged by junegunn https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

 Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"
Plug 'scrooloose/nerdcommenter' " commenter plugin that uses leader

Plug 'garbas/vim-snipmate'   " Snippets

Plug 'MarcWeber/vim-addon-mw-utils' "snipmate dependencies
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

Plug 'valloric/matchtagalways'

Plug 'bling/vim-airline'	" adds bottom information bar

Plug 'jiangmiao/auto-pairs'	" Pair brackets and quotes

Plug 'valloric/youcompleteme'	" auto completion dropdowns 

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Color-schemes
Plug 'flazz/vim-colorschemes' 

" Initialize plugin system
call plug#end()

" =============================================================================
"  Colors / Misc
"==============================================================================

colorscheme gruvbox
set background=dark

" =============================================================================
"  Leader Keybinds
"==============================================================================

" set a map leader for more key combos
let mapleader =  ','

" shortcut to save ”
nmap <leader> :w<cr>

" super save - save session in its current state, open agian with `vim -S`
nnoremap <leader>s :mksession!<CR>

" clear highlighted search term, but keep in register
nnoremap <leader><esc> :noh<cr>

" select all and copy to clipboard
nmap <leader>a :%y+<cr>

" search through tags and jump to file with with ctrl-p
nnoremap <leader>tf :CtrlPTag<cr>

" search buffers
nnoremap <leader>bf :CtrlPBuffer<cr>

" additional shortcut for default
nnoremap <leader>f :CtrlP<cr>

" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>x :bn<CR>

" close current buffer but not current window
noremap <leader>bd :bp<bar>sp<bar>bn<bar>bd<CR>
" reload vimrc file
nnoremap <leader>! :so $MYVIMRC<cr>

" reindent entire file
" mark cursor and put cursor back, center cursor in window
nnoremap <leader>r magg=G`az.

" leader w for pane control
nnoremap <leader>w <C-w>

" focus splits with ctrl + direction
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Set working directory
nnoremap <leader>. :lcd %:p:h<cr>

" Display current file in the NERDTree ont the left
nmap <silent> <leader>n :NERDTreeFind<CR><c-w>=

" open v split
nmap <leader>h :vsp<cr>

" map f5 to toggle NERDtree
nnoremap <leader>nt :NERDTreeToggle %<CR> 

" reindent entire file
" mark cursor and put cursor back, center cursor in window
nnoremap <leader>r magg=G`a

" redraw becasue prettydiff function is broken
nnoremap <leader>rd :redraw! <CR>



