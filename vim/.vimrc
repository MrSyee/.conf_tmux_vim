set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
set rtp+=~/.fzf
Plugin 'junegunn/fzf.vim' 
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" manually added plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'sheerun/vim-polyglot'
Plugin 'neomake/neomake'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-repeat'
Plugin 'https://github.com/terryma/vim-smooth-scroll'
Plugin 'ervandew/supertab'
Plugin 'https://github.com/terryma/vim-multiple-cursors'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'altercation/vim-colors-solarized'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'https://github.com/nanotech/jellybeans.vim'
Plugin 'morhetz/gruvbox'

"manually added settings
set foldmethod=indent
set foldlevel=99
set encoding=utf-8
set number
set splitright
set showcmd
set scrolloff=5
set ignorecase
set smartcase
set hls
set lbr
set ai
set si
set noswapfile
set clipboard=unnamedplus
set diffopt+=vertical

nnoremap <space> za
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-I> :tab YcmCompleter GoTo <CR>
nnoremap gl :tab split \| YcmCompleter GoTo <CR>
nnoremap gD :tab YcmCompleter GoToDeclaration <CR>
nnoremap gd :YcmCompleter GetDoc <CR>
nnoremap <F5> :NERDTree <CR>
nnoremap <C-F> :Files 
nnoremap <C-P> :Ag 
map <leader>w :w! <CR>
nmap <F8> :TagbarToggle <CR>

let python_highlight_all=1
syntax on
set tabstop=4
set shiftwidth=4
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" YCM option setting
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['', '']
let g:ycm_key_list_previous_completion = ['', '']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_warning_symbol = '>*'
let g:ycm_python_binary_path = 'python'
let g:ycm_goto_buffer_command = 'split-or-existing-window'

" vim-nerdtree-tabs setting
let g:nerdtree_tabs_open_on_console_startup = 0

" ag setting
let g:ag_highlight=1

" soloarized setting
let g:solarized_termcolors=256

colorscheme jellybeans
set background=dark

" smartindent off for python
au! FileType python setl nosmartindent

" remove whitespace in python script
autocmd BufWritePre *.py :%s/\s\+$//e

" supertab inverse direction
let g:SuperTabDefaultCompletionType = "<c-n>"

" execute python script in vim 
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" strict git commit max char size
autocmd Filetype gitcommit setlocal spell textwidth=72

" grip setting
let vim_markdown_preview_github=1

" When writing a buffer (no delay).
call neomake#configure#automake('w')
let g:neomake_python_enabled_makers = ['flake8']
