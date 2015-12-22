execute pathogen#infect()
filetype plugin indent on
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Extensions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"NERDTree folder icons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:DevIconsEnableFoldersOpenClose = 1
"let g:DevIconsEnableFolderExtensionPatternMatching = 1
"let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
"Close vim if NERDTree is the only window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"Show NERDTree if no file on open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12

" This beauty remembers where you were the last time you edited the file, and returns to the same position.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256
set encoding=utf8
set number
"enable mouse features"
:set mouse=a 
syntax on
" Set 10 lines to the cursor - when moving vertically using j/k
set so=10
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase
" search as characters are entered
set incsearch 
" search as characters are entered
set incsearch 
" Highlight search results
set hlsearch
" Show matching brackets when text indicator is over them
set showmatch
" search as characters are entered
set incsearch 
" number of visual spaces per TAB
set tabstop=4       
" number of spaces in tab when editing
set softtabstop=4
" highlight current line
set cursorline
" visual autocomplete for command menu
set wildmenu
" redraw only when we need to.
set lazyredraw
" Language correction
set spelllang =fr
set spellsuggest =5
" Toggle spellcheck on enter/exit INSERT mode
autocmd InsertEnter * setlocal spell
autocmd InsertLeave * setlocal nospell
"set spell
" make copy/paste go to the clipboard
:set clipboard=unnamed


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?
" Better handling for split change
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" More natural splitting
set splitbelow
set splitright
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>

" add some automatic bracket and such fun
 inoremap ( ()<Esc>i
 inoremap [ []<Esc>i
 inoremap { {}<Esc>i
 inoremap " ""<Esc>i
 inoremap ' ''<Esc>i
