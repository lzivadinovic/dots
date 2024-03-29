set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=UTF-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line

" ####### MY PLUGINS  ##############

Plugin 'scrooloose/nerdtree' " file tree
Plugin 'itchyny/lightline.vim' " new status menu
Plugin 'Yggdroot/indentLine' " for displaying indents
Plugin 'fatih/vim-go' 
Plugin 'othree/xml.vim' " HTML and XML plugin
Plugin 'mattn/emmet-vim' " super html shit
Plugin 'airblade/vim-gitgutter'
Plugin 'lervag/vimtex' " plugin for latex
Plugin 'aserebryakov/vim-todo-lists' " todo plugin

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'


Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'



let g:indentLine_color_term = 34 

" ####### END MY PLUGINS ###########
"
call vundle#end()            " required
filetype plugin indent on    " required

" ####### BINDS ####################

" tabing

noremap <F7> :tabp<CR> " move to previous tab
noremap <F8> :tabn<CR> " move ot next tab
noremap <c-n> :tabnew<CR> " think about this


" nerdtree toogle
map <F2> :NERDTreeToggle<CR> 
" Map Y to act like D and C, i.e. to yank until EOL
map Y $y
" Map <C-L> (redraw screen) to also turn off search highlighting
nnoremap <C-L> :nohl<CR><C-L>

" ####### My shit ##########


set colorcolumn=80
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" vim todo, dont move at end
let g:VimTodoListsMoveItems = 0


let NERDTreeWinSize=32
let NERDTreeWinPos="right"
let NERDTreeShowHidden=0
let NERDTreeAutoDeleteBuffer=1
let NERDTreeAutoDeleteBuffer=1

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

" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.
 
"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.
 
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
 
" Enable syntax highlighting
syntax on
 
"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.
 
" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden
 
" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall
 
" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
 
"------------------------------------------------------------

 

"------------------------------------------------------------
set hlsearch
 
" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline
 
 
"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.
 
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set textwidth=0
set ruler
set wrap " Allow text to be wraped but does not insert new line symbol

set background=dark
" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
 
" Enable use of the mouse for all modes
set mouse=a
 
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2
 
" Display line numbers on the left
set number relativenumber  

"Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
 
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F12>
 
 
"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.
 
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set showtabline=2

" set shiftwidth=4
" set softtabstop=4
" set expandtab
 
" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4

" get red line on 80 char line


" autostart nerdrtre
autocmd VimEnter * NERDTree
" Switch to open pane, not nerdtree
autocmd VimEnter * wincmd w

" default splits below and right
set splitbelow
set splitright
set incsearch



" Emmet options {{{
let g:user_emmet_settings = {
\  'php': {
\    'extends': 'html',
\    'snippets': {
\      'php': "<?php\n${cursor}\n?>",
\      'vd': "var_dump(${cursor});",
\      'ec': "echo(${cursor});",
\    }
\  }
\}
