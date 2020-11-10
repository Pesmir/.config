" General settings
syntax on
set termguicolors
set number relativenumber
filetype on


" Define Leader Key as space
let mapleader=" "

" Install Plugins
call plug#begin('~/.vim/plugged')
Plug 'jessedhillon/vim-easycomment'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fancy Fuzzy Search
Plug 'junegunn/fzf.vim'
Plug 'joshdick/onedark.vim' " Colorschem
Plug 'mhinz/vim-startify' " start screen
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Autocompletion and linting
Plug 'airblade/vim-rooter'
call plug#end()

colorscheme onedark
" Autocompletion
" Complete with tab instead of Enter
inoremap <expr> <tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"



" Statusbar :
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
" Search
nmap <C-p> :GFiles<CR>
nmap <C-f> :BLines<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Start screen config
let g:startify_lists = [
	\{'type': 'sessions', 'header': ['	Sessions']},
	\{'type': 'files', 'header': ['	Most Recent Files']},
	\{'type': 'bookmarks', 'header': ['	Bookmarks']},
	\]

let g:startify_bookmarks = [
	\'~/.config/nvim/init.vim',
	\]
