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
Plugin 'klen/python-mode'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'suan/vim-instant-markdown'
Plugin 'davidhalter/jedi-vim'

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

let g:UltiSnipsExpandTrigger="<s-x>"
let g:UltiSnipsJumpForwardTrigger="<s-x>"
let g:UltiSnipsJumpBackwardTrigger="<s-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"""""""""""""""""""""""""""""Vimtex""""""""""""""""""""""""""""""""""""
let g:tex_flavor = 'latex'

"Basic

autocmd Filetype tex inoremap  :beg \begin{}<Enter><Enter>\end{}<Esc>3kEi
autocmd Filetype tex inoremap  :sec \section{}<Space><Esc>T{i
autocmd Filetype tex inoremap  :sub \subsection{}<Space><Esc>T{i
autocmd Filetype tex inoremap  :ssu \subsubsection{}<Space><Esc>T{i

"Font
autocmd Filetype tex inoremap  :bf \textbf{}<Space><Esc>T{i
autocmd Filetype tex inoremap  :it \textit{}<Space><Esc>T{i
autocmd Filetype tex inoremap  :em \emph{}<Space><Esc>T{i

"Maths
autocmd Filetype tex inoremap  :fra \frac{}{}<Space><Esc>2T{i
autocmd Filetype tex inoremap  :squ \sqrt[]{}<Space><Esc>T{i
autocmd Filetype tex inoremap  :arr \begin{array}{c}<Enter><Enter>\end{array}<Space><Esc>kA


"Lists/equations/table/figure
autocmd Filetype tex inoremap  :enu \begin{enumerate}<Enter><Enter><Enter><Enter>\end{enumerate}<Space><Esc>2kA\item<Space>
autocmd Filetype tex inoremap  :equ \begin{equation}<Enter><Enter><Enter><Enter>\end{equation}<Space><Esc>2kA
autocmd Filetype tex inoremap  :ite \begin{itemize}<Enter><Enter><Enter><Enter>\end{itemize}<Space><Esc>2kA\item<Space>
autocmd Filetype tex inoremap  :fig \begin{figure}[h]<Enter>\centering<Enter>\includegraphics[scale=1]{}<Enter>\caption{}<Enter>\end{figure}<Space><Esc>2kEi
autocmd Filetype tex inoremap  :tab \begin{center}<Enter>\begin{tabular}{c c c}<Enter>\hline<Enter>cell1<Space>&<Space>cell2<Space>&<Space>cell3<Space>\\<Enter>cell4<Space>&<Space>cell5<Space>&<Space>cell6<Space>\\<Enter>\hline<Enter>\end{tabular}<Enter>\end{center}




"Slides for Beamer
"frame with figure
autocmd Filetype tex inoremap  :ffig \begin{frame}<Enter>\frametitle{Using Columns}<Enter>\begin{columns}<Enter>\column{0.5\textwidth}<Enter><text><Enter>\column{0.5\textwidth}<Enter><text><Enter>\end{columns}<Enter>\end{frame}




""""""""""""""""""""""""""""New Commands""""""""""""""""""""""""""""""""Tex templates
command TexTempBasic :r ~/.vim/templates/texTempBasic.txt
command TexTempPres :r ~/.vim/templates/texTempPres.txt


" Python-mode
" " Activate rope
" " Keys:
" " K             Show python docs
" " <Ctrl-Space>  Rope autocomplete
" " <Ctrl-c>g     Rope goto definition
" " <Ctrl-c>d     Rope show documentation
" " <Ctrl-c>f     Rope find occurrences
" " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" " [[            Jump on previous class or function (normal, visual, operator
" modes)
" " ]]            Jump on next class or function (normal, visual, operator
" modes)
" " [M            Jump on previous class or method (normal, visual, operator
" modes)
" " ]M            Jump on next class or method (normal, visual, operator
" modes)
let g:pymode_rope = 0
"
" " Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"
" "Linting
let g:pymode_lint = 1
" 
"
let g:pymode_lint_checker = "pyflakes,pep8"
" " Auto check on save
let g:pymode_lint_write = 1
"
" " Support virtualenv
let g:pymode_virtualenv = 1
"
" " Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
"
" " syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
"
" " Don't autofold code
let g:pymode_folding = 0
