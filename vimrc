set nocompatible              " be iMproved, required
filetype off                  " required 

""""""""""""""""""""""""""""""""Vundle""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"""""""""""""""""""""""""""""Vundle Plugins"""""""""""""""""""""""""""""""
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'JuliaLang/julia-vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'lervag/vimtex'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax enable 

""""""""""""""""""""""""""Non-Plugin stuff"""""""""""""""""""""""""""""""
let g:default_julia_version = "0.5"
set relativenumber
set spell spelllang=en_gb
""""""""""""""""""""""""""Lightline""""""""""""""""""""""""""""""""""""""
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \ }

"""""""""""""""""""""""""""""Vimtex""""""""""""""""""""""""""""""""""""
let g:tex_flavor = 'latex'
autocmd Filetype tex inoremap  :fra \frac{}{}
autocmd Filetype tex inoremap  :beg \begin{}
autocmd Filetype tex inoremap  :bf \textbf{}<Space>(<>)<Esc>T{i

""""""""""""""""""""""""""""New Commands""""""""""""""""""""""""""""""""Tex templates
command TexTempBasic :r ~/.vim/templates/texTempBasic.txt
command TexTempPres :r ~/.vim/templates/texTempPres.txt


