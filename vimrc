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
Plugin 'terryma/vim-multiple-cursors'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
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


""""""""""""""""""""""""""""UltiSnips""""""""""""""""""""""""""""""""""

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<s-x>"
let g:UltiSnipsJumpForwardTrigger="<s-x>"
let g:UltiSnipsJumpBackwardTrigger="<s-z>"
"
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"



"""""""""""""""""""""""""""""Vimtex""""""""""""""""""""""""""""""""""""
let g:tex_flavor = 'latex'

"Basic
autocmd Filetype tex inoremap  :fra \frac{}{}<Space><Esc>2T{i
autocmd Filetype tex inoremap  :beg \begin{}<Enter><Enter>\end{}<Esc>3kEi
autocmd Filetype tex inoremap  :sec \section{}<Space><Esc>T{i
autocmd Filetype tex inoremap  :sub \subsection{}<Space><Esc>T{i
autocmd Filetype tex inoremap  :ssu \subsubsection{}<Space><Esc>T{i

"Font
autocmd Filetype tex inoremap  :bf \textbf{}<Space><Esc>T{i
autocmd Filetype tex inoremap  :it \textit{}<Space><Esc>T{i
autocmd Filetype tex inoremap  :em \emph{}<Space><Esc>T{i

"Lists/equations/table/figure
autocmd Filetype tex inoremap  :enu \begin{enumerate}<Enter><Enter><Enter><Enter>\end{enumerate}<Space><Esc>2kA\item<Space>
autocmd Filetype tex inoremap  :equ \begin{equation}<Enter><Enter>\end{equation}<Space><Esc>kA
autocmd Filetype tex inoremap  :ite \begin{itemize}<Enter><Enter><Enter><Enter>\end{itemize}<Space><Esc>2kA\item<Space>
autocmd Filetype tex inoremap  :fig \begin{figure}[h]<Enter>\centering<Enter>\includegraphics[scale=1]{}<Enter>\caption{}<Enter>\end{figure}<Space><Esc>2kEi








""""""""""""""""""""""""""""New Commands""""""""""""""""""""""""""""""""Tex templates
command TexTempBasic :r ~/.vim/templates/texTempBasic.txt
command TexTempPres :r ~/.vim/templates/texTempPres.txt


