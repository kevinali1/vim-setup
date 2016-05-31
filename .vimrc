set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za
Plugin 'tmhedberg/SimpylFold'

" Allow docstrings for folded code
let g:SimpylFold_docstring_preview=1

" Fix backspace
set backspace=indent,eol,start

" Python tabbing, etc
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 | 
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Settings for web development
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Better autoindent
Plugin 'vim-scripts/indentpython.vim'

" Remove bad whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Enable utf-8 support
set encoding=utf-8

" Set line at 80 for 
set colorcolumn=80

" Better autocomplete
Bundle 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" Highlighting, linting, etc
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
let python_highlight_all=1
syntax on

" Color schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
if has('gui_running')
  set background=dark
    colorscheme solarized
  else
    colorscheme zenburn
  endif
so ~/.vim/bundle/vim-colors-solarized/autoload/togglebg.vim
call togglebg#map("<F5>")

" File browsing
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" List functions and classes
Plugin 'taglist.vim'

" Adjust window sizes for NerdTree and Taglist
let Tlist_WinWidth = 50
let Tlist_Use_Right_Window   = 1
let g:NERDTreeWinSize = 40 


" Super searching with ctrl-P
"   see http://www.youtube.com/watch?v=9XrHk3xjYsw
Plugin 'kien/ctrlp.vim'

" Set line numbering
set nu

" Enable git integration
"   see http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/
Plugin 'tpope/vim-fugitive'

" Enable powerline (see virtualenv, git branch, files being edited etc
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Set clipboard (mainly for OSX)
set clipboard=unnamed


