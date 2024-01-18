"setting line numbering":
:set number
"setting tab size"
:set tabstop=1
:set shiftwidth=4
:set expandtab
"enabling mouse support"
:set mouse=a
"setting utf-8"
set encoding=UTF-8

"calling plugins"
call plug#begin()
"Nerd tree vim file explorer"
Plug 'https://github.com/preservim/nerdtree'
"Icons for files"
Plug 'https://github.com/ryanoasis/vim-devicons'
"Syntax highlighting for common file types provides proper color"
Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight'
"comment code"
Plug 'https://github.com/tpope/vim-commentary'
"color theme"
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
"status bar"
Plug 'https://github.com/vim-airline/vim-airline'
"tag bar"
Plug 'https://github.com/preservim/tagbar'
"Auto complete"
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
"vim terminal"
Plug 'https://github.com/tc50cal/vim-terminal'
"automattically add brackets or quotes"
Plug 'https://github.com/jiangmiao/auto-pairs'
"verilog and system verilog"
Plug 'https://github.com/vhda/verilog_systemverilog.vim'
call plug#end()

let NERDTreeShowHidden=1
"select color theme"
:colorscheme jellybeans

"to open nerd tree"
nnoremap <C-e> : NERDTree<CR>
"to toggle that is close/open nerd tree"
nnoremap <C-c> : NERDTreeToggle<CR>
nnoremap <C-f> : NERDTreeFind<CR>
nnoremap <C-r> : NERDTreeRefresh<CR>

"Tagbar toggle"
nmap <S-t> : TagbarToggle<CR>

"close window"
nmap <C-x> : q!<CR>
nmap <C-s> : w<CR>

if !exists('g:airline_symbols')
		let g:airline_symbols = {}
endif
let g:airline_left_sep = 'εé░'
let g:airline_left_alt_sep = 'εé▒'
let g:airline_right_sep = 'εé▓'
let g:airline_right_alt_sep = 'εé│'
let g:airline_symbols.branch = 'εéá'
let g:airline_symbols.readonly = 'εéó'
let g:airline_symbols.linenr = ' εéí'
set hidden
"setting line numbering":
:set number
"setting tab size"
:set tabstop=1
:set shiftwidth=4
:set expandtab
"enabling mouse support"
:set mouse=a
"setting utf-8"
set encoding=UTF-8

"calling plugins"
call plug#begin()
"Nerd tree vim file explorer"
Plug 'https://github.com/preservim/nerdtree'
"Icons for files"
Plug 'https://github.com/ryanoasis/vim-devicons'
"Syntax highlighting for common file types provides proper color"
Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight'
"comment code"
Plug 'https://github.com/tpope/vim-commentary'
"color theme"
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
"status bar"
Plug 'https://github.com/vim-airline/vim-airline'
"tag bar"
Plug 'https://github.com/preservim/tagbar'
"Auto complete"
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
"vim terminal"
Plug 'https://github.com/tc50cal/vim-terminal'
"automattically add brackets or quotes"
Plug 'https://github.com/jiangmiao/auto-pairs'
"verilog and system verilog"
Plug 'https://github.com/vhda/verilog_systemverilog.vim'
call plug#end()

let NERDTreeShowHidden=1
"select color theme"
:colorscheme jellybeans

"to open nerd tree"
nnoremap <C-e> : NERDTree<CR>
"to toggle that is close/open nerd tree"
nnoremap <C-c> : NERDTreeToggle<CR>
nnoremap <C-f> : NERDTreeFind<CR>
nnoremap <C-r> : NERDTreeRefresh<CR>

"Tagbar toggle"
nmap <S-t> : TagbarToggle<CR>

"close window"
nmap <C-x> : q!<CR>
nmap <C-s> : w<CR>

if !exists('g:airline_symbols')
		let g:airline_symbols = {}
endif
let g:airline_left_sep = 'εé░'
let g:airline_left_alt_sep = 'εé▒'
let g:airline_right_sep = 'εé▓'
let g:airline_right_alt_sep = 'εé│'
let g:airline_symbols.branch = 'εéá'
let g:airline_symbols.readonly = 'εéó'
let g:airline_symbols.linenr = ' εéí'
set hidden

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

