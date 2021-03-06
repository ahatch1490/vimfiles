execute pathogen#infect()

"color scheme
set t_Co=256
colorscheme solarized
:let mapleader=","
:filetype on
set background=dark
"Line numbers
set number
set expandtab
set softtabstop=2
set shiftwidth=2
set autoindent
set hidden  "Allows you to switch buffers without saving
set hlsearch
syntax on
filetype plugin indent on

"mappings
map <C-n> :NERDTree<CR>
map <F7> :!rspec %<CR>
nmap <leader>md :%!markdown.pl --html4tags<cr>
nmap <leader>t :CtrlP<cr>

nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

"statusline setup
set statusline=%f "tail of the filename

"Git
set statusline+=%{fugitive#statusline()}

"RVM
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''}

set statusline+=%= "left/right separator
set statusline+=%c, "cursor column
set statusline+=%l/%L "cursor line/total lines
set statusline+=\ %P "percent through file
set laststatus=2 "Gets the status line to show up

"PayTrace ASP Deployment helpers
command ToStage !scripts/deploy_file_to_stage.sh %
command ToTest !scripts/deploy_file_to_test.sh %
command ToDev !scripts/deploy_file_to_dev.sh %
