set nocompatible "makes vim incompatible with vi (cnges some mappings)

filetype on
filetype off "required for vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'JuliaLang/julia-vim'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/ZoomWin'
Plugin 'majutsushi/tagbar'
Plugin 'vimwiki/vimwiki'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'klen/python-mode'
Plugin 'fatih/vim-go'

" Plugin 'rking/ag.vim'
" Plugin 'https://github.com/vim-scripts/taglist.vim'
" Plugin 'terryma/vim-multiple-cursors'

call vundle#end()            " required vundle
filetype plugin indent on    " required vundle

set syntax=on
set shiftwidth=2
set softtabstop=2

"Highlights matches for current query string
set incsearch
"highlights search results
set hlsearch

set number
syntax on

" CTRL-H to get vim help on current word
map <C-H> :h <C-R><C-W><CR>

" CTRL-R to reload current file
map <C-R> :source %<CR>

" Toggle Nerd Tree w/ ctrl n
map <C-n> :NERDTreeToggle<CR>

" Toggle TagBar
nmap <C-m> :TagbarToggle<CR>

fu! JumpToTag()
  let name = expand('<cword>')
  exe ":tag " . name
endfu

nmap <F2> :call JumpToTag() <CR>

map vrc :source $MYVIMRC <cr>

" Open Nerd Tree by default
" autocmd vimenter * NERDTree 
" Move to the window over to the left - so we don't start in nTree window.
" autocmd vimenter * wincmd l
" Close nerd tree if its the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set noswapfile " don't generate silly swap files

"splits open below or to the right
set splitbelow
set splitright

" ctrl HJKL now splits
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>
