set nocompatible
filetype off
 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()  
 
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'kana/vim-operator-user'
" Plugin 'rhysd/vim-clang-format'

call vundle#end()
call glaive#Install()
filetype plugin indent on

Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /home/cleveland/Programs/google-java-format.jar"

colorscheme slate
set nu
set laststatus=2
set t_Co=256
set background=dark
set ts=4
set sw=4
set expandtab
set fdm=syntax
set list
set listchars=tab:>-,trail:-

let mapleader=","
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_altv=1
let g:netrw_browse_split=3
let g:netrw_winsize=25
let g:clang_format#auto_format_on_insert_leave=0
let g:clang_format#auto_format=0
