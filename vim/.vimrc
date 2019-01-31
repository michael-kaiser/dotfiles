syntax on
set number
set encoding=utf-8
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'dylanaraps/wal.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'moll/vim-bbye'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/powerline'
Plugin 'honza/vim-snippets'
Plugin 'powerline/powerline-fonts'
Plugin 'nathanaelkane/vim-indent-guides'
call vundle#end()            " required

filetype plugin indent on    " required
set laststatus=2
set t_Co=256
let g:airline_theme='minimalist'
set encoding=utf-8
nnoremap <leader>q :bp<cr>:bd #<cr>
filetype plugin indent on

:nnoremap <Leader>q :Bdelete<CR>

let g:airline_powerline_fonts = 1
let g:powerline_pycmd="py3"
map <C-n> :NERDTreeToggle<CR>
colorscheme wal

"Ultisnip
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/vim-snippets/UltiSnips"

"Indent
let g:indent_guides_enable_on_vim_startup = 1
set expandtab
set shiftwidth=2
set softtabstop=2

"Markdown
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

"html
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType js setlocal shiftwidth=2 tabstop=2
