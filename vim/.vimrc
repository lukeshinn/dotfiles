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

"search plugin settings
set incsearch  " search as characters are entered
set hlsearch   " highlight matches

" auto reload file when changed on disk
set updatetime=750
au CursorHold,FocusGained,BufEnter * checktime

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

" auto completion dropdowns 
Plug 'valloric/youcompleteme'	

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
Plug 'wakatime/vim-wakatime'

" surround selection with elements 
Plug 'tpope/vim-surround'

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

" open v split
nmap <leader>v :vsp<cr>
" open h split
nmap <leader>h :sp<cr>

" shortcut to save ”
nmap <leader> :w<cr>

" super save - save session in its current state, open agian with `vim -S`
nnoremap <leader>s :mksession!<CR>

" clear highlighted search term, but keep in register
nnoremap <leader><esc> :noh<cr>

" select all and copy to clipboard
nmap <leader>a :%y+<cr>

" reload vimrc file
nnoremap <leader>! :so $MYVIMRC<cr>

" reindent entire file
" mark cursor and put cursor back, center cursor in window
nnoremap <leader>r magg=G`az.

" focus splits with ctrl + direction
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Display current file in the NERDTree ont the left
nmap <silent> <leader>n :NERDTreeFind<CR><c-w>=

" map f5 to toggle NERDtree
nnoremap <leader>nt :NERDTreeToggle %<CR> 

" redraw becasue prettydiff function is broken
nnoremap <leader>rd :redraw! <CR>

" clear search selection
nnoremap <leader><esc> :noh<cr> 

" run savesite in current dir
"nmap <silent> <leader>k :silent !savesite<cr>
