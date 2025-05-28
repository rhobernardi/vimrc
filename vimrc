" For more details about configs, use :h NameOfConfig
" eg option 'title' -> :h title


"   ◤                        ◥   "
"         Plugin Manager         "
"            Vim Plug            "
"   ◣                        ◢   "


" Automatically install Vim Plug (plugin manager)
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    " autocmd VimEnter * PlugInstall --sync | source $MYVIMRC "instala automaticamente os plugins
endif

" :PlugInstall to install listed plugins
call plug#begin('~/.vim/plugged')
    Plug 'ryanoasis/vim-devicons'           "devicons
    Plug 'rafi/awesome-vim-colorschemes'    "colorschemes
    Plug 'machakann/vim-highlightedyank'    "highlight yanked lines
    Plug 'bling/vim-airline'                "bottom tab with status
    Plug 'vim-airline/vim-airline-themes'   "airline themes
    Plug 'tpope/vim-surround'               "edit delimiter characters
    Plug 'raimondi/delimitmate'             "close delimiter characters
    Plug 'sjl/gundo.vim'                    "undo tree
    Plug 'scrooloose/nerdtree'              "file tree
    Plug 'Xuyuanp/nerdtree-git-plugin'
    "Plug 'shougo/neocomplete.vim'          "auto-complete - vim 7.4+
    Plug 'scrooloose/nerdcommenter'         "comment easily
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Themes
    Plug 'tomasr/molokai'
    " Plug 'rakr/vim-one'
call plug#end()


"   ◤                        ◥   "
"         CONFIGURATIONS         "
"   ◣                        ◢   "


" Set leader from / to ,
let mapleader = ","
let g:neocomplete#enable_at_startup = 1
let g:NERDSpaceDelims = 1 "add espace in comment command


"   ◤        ◥   "
"      MAPS      "
"   ◣        ◢   "
" Leader + f change between absolute and relative numbers
map <leader>f :set relativenumber!<CR>

" Y acts as D e C, copies until the end of the line instead of act like yy
map Y y$

" toggle gundo plugin(see undos tree)
nnoremap <leader>u :GundoToggle<CR>

" Leader + space removes searches highlights
nnoremap <leader><space> :nohlsearch<CR>

" Shortcut hide/show fold with space key
nnoremap <space> za

" Crtl + n open nerdtree
map <C-n> :NERDTreeToggle<CR>

nnoremap <leader>f :Files<CR>
nnoremap <leader>. :Rg<CR>

" Shut down arrows (only h, j, k, l)
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>


"   ◤        ◥   "
"     COLORS     "
"   ◣        ◢   "

" Airline Theme
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop = 0
let g:airline_theme='base16_twilight'
" let g:airline_theme='molokai'
let g:airline#extensions#tabline#formater = 'default'
set noshowmode "disable bottom informations i.e. -- INSERT -- , reduntant


"   ◤             ◥   "
"     INDENTATION     "
"   ◣             ◢   "
filetype plugin indent on
set autoindent                  "automatic indentation
set cindent                     "C language indentation
set smartindent                 "general identation
set backspace=indent,eol,start  "new line when creating {}
let delimitMate_expand_cr=1
set expandtab                   "use retab to replace tabs for spaces
set shiftwidth=4                "tab width in indentation
set tabstop=4                   "tab 4 spaces


"   ◤            ◥   "
"       GENERAL      "
"   ◣            ◢   "
syntax enable       "syntax highlight
set mouse=a         "enable mouse usage
set number          "line number
set relativenumber  "relative number on (<leader> + f turns off)
set cursorline      "current line highlight
set wildmenu        "suggestions menu on command mode
set showmatch       "brackets match
set lazyredraw      "performance improvement
set history=1000    "command history
set showcmd         "show typing commands in the bottom bar
set hidden          "better buffer usage in the same window
" set backup          "generate backup file
set ttyfast         "performance improvement, see :h ttyfast
set title           "change terminal title
set encoding=utf-8  "use encode utf-8
set autoread
set colorcolumn=90  "lateral column
highlight ColorColumn ctermbg=235 guibg=#2c2d27
hi Normal ctermbg=none "transparent background
" set list "show tabs e trails(as caracter •)
" set listchars=tab:•\ ,trail:•,extends:»,precedes:« "extends with ativated nowrap function

" Retorna a posicao que estava quando o arquivo foi fechado
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
                \| exe "normal! g'\"" | endif
endif


"   ◤        ◥   "
"      UNDO      "
"   ◣        ◢   "
" Make sure Undo folder exists
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir "undos folder
set undofile "allows undos history be saved in a file
set undolevels=1000 "undo history size


" Searches
set incsearch   "highlight when searching
set hlsearch    "highlight after search


" Folds - hide lines
set foldenable          "enable folds
set foldlevelstart=10   "nivel inicial de folding, pra nao dobrar tudo no inicio, quanto mais {{, maior o nivel
set foldnestmax=10
set foldmethod=syntax   "uses sintax to hide: {} in C

" colorscheme one
" colorscheme OceanicNext
colorscheme molokai

let g:highlightedyank_highlight_duration = 200
let g:highlightedyank_highlight_in_visual = 1

