" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible


"-------------- General Settings --------------------------------------
" https://vim.fandom.com/wiki/Backspace_and_delete_problems
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set encoding=utf-8
syntax on
if ! has("gui_running")
    set t_Co=256
endif
" feel free to choose :set background=light for a different style
set background=light
colors peaksea


"-------------- Vundle Settings ----------------------------------------
" https://github.com/VundleVim/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin in plugins here!!!!
Plugin 'vim-airline/vim-airline'
Plugin 'gilgigilgil/anderson.vim'
Plugin 'wadackel/vim-dogrun'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'
Plugin 'ntpeters/vim-better-whitespace'




"------------ SYNTAX PLUGINS ----------------------------------
Plugin 'sheerun/vim-polyglot'
Plugin 'HTML-AutoCloseTag'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'jez/vim-c0'
Plugin 'jez/vim-ispc'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mattn/emmet-vim'
Plugin 'fatih/vim-go'
"-------------Vim-Laravel--------------------------------------
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-projectionist'
Plugin 'roxma/nvim-completion-manager'
Plugin 'noahfrederick/vim-composer'
Plugin 'noahfrederick/vim-laravel'
Plugin 'roxma/vim-hug-neovim-rpc'




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

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = 'X'
let g:syntastic_warning_symbol = "!"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END


"------------- NERD Tree ----------------------------------------------
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 0

" ----- xolox/vim-easytags settings ----------------------------------
"
" Where to look for tags files
set tags=./tags;,~/.vimtags

" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ------------- majutsushi/tagbar settings -----------------------------
"
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)


" ----- airblade/vim-gitgutter settings --------------------------------
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1


" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

"Remove trailing whitespaces on save
let g:strip_whitespace_on_save=1

"-------- EMMET VIM ----------------------------------
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
