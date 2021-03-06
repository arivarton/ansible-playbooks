syntax on
" Vundle
"
" First install Vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible      " be iMproved   " required
filetype off                          " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/plugins/')

" let Vundle manage Vundle            " required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'chriskempson/base16-vim'
Plugin 'python-mode/python-mode'
Plugin 'tpope/vim-fugitive'
Plugin 'dracula/vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'powerline/powerline'
Plugin 'wincent/terminus'
Plugin 'junegunn/vim-easy-align'
Plugin 'junegunn/fzf'
Plugin 'myusuf3/numbers.vim'
Plugin 'mattn/emmet-vim'

call vundle#end()                     " required
filetype plugin indent on             " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Vundle HELP
" :PluginList         - lists configured plugins
" :PluginInstall      - Installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo   - Searches for foo; append `!` to refresh local cache
" :PluginClean        - Confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki on github for FAQ
" Put your non-plugin stuff after this line
"
" Vundle end

" Plugin Options
"
" Valloric/YouCompleteMe
" Make YouCompleteMe use python3+ as an interpreter 
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
"
" scrooloose/nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDRemoveExtraSpaces = 1
"
" pymode
let g:pymode_lint_ignore = "E501,E265,E722"
let g:pymode_doc_bind = "<F2>"
let g:pymode_quickfix_maxheight = 4
let g:pymode_quickfix_minheight = 2
"
" vary.vim
let g:auto_striptrail = 'python,ruby'
let g:auto_striptab = 'python,ruby,cpp'
"
" vim-airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

set timeoutlen=2000
set completeopt=menuone,longest,preview
set clipboard=unnamedplus
set number
set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize

set vb

" VIM easy-align mappings
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

set printoptions=syntax:n,number:y

" Automatically set base16 shell theme
let base16colorspace=256
colorscheme base16-nord

" Custom key maps and more by vidr
nmap K gt
nmap J gT
map <C-q> q
map <Enter> o<Esc>k
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
nnoremap <space> za
" Window resizing
nnoremap + :exe "resize " . (winheight(0) * 3/2)<CR> 
nnoremap <kPlus> :exe "resize " . (winheight(0) * 3/2)<CR> 
nnoremap - :exe "resize " . (winheight(0) * 2/3)<CR> 
nnoremap <kMinus> :exe "resize " . (winheight(0) * 2/3)<CR> 
nnoremap <leader>o <C-w>_<C-w>\|
" Automatically change to base directory for each file
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>f :FZF!<CR>
" Use the 0 register (yank) instead of 1-9 register (delete) to paste
noremap p "0p

" tex mappings
autocmd FileType tex nnoremap <leader>c<CR> :!texi2pdf %<CR>
autocmd BufWritePost *.tex :!texi2pdf %

" set
set encoding=utf-8
set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=2
set showcmd
