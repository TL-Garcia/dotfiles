"-----------------
"SETTINGS
"-----------------
" Numbers
set nu
set relativenumber

" Search
set smartcase 
set ignorecase

" Tabs
set shiftwidth=2
set tabstop=2
set expandtab
set smartindent

" Page margins
set colorcolumn=80
set nowrap
set scrolloff=8
highlight ColorColumn ctermbg=238

"-----------------
"NEWTRW
"-----------------
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
let g:netrw_altv = 1

"-----------------
"PLUGINS
"-----------------
call plug#begin('~/.config/nvim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'ycm-core/YouCompleteMe'
Plug 'sheerun/vim-polyglot'
Plug '~/.fzf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" colorschemes
Plug 'baskerville/bubblegum'

" Workaround for creating transparent bg
autocmd SourcePost * highlight Normal     ctermbg=NONE guibg=NONE
        \ |    highlight LineNr     ctermbg=NONE guibg=NONE
        \ |    highlight SignColumn ctermbg=NONE guibg=NONE


call plug#end()

"PLUGIN SETTINGS
"-----------------
colorscheme bubblegum-256-dark

"close definition preview window
let g:ycm_autoclose_preview_window_after_insertion = 1

"enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'

"-----------------
"THEME
"-----------------
let g:colors_name='darkblue'

"-----------------
"REMAPS
"-----------------
:imap kj <Esc>
let mapleader = " "

"next/previous buffer
:nnoremap <Leader>b :bn<CR>
:nnoremap <Leader>B :bp<CR>

"enable/disable spelling
:nnoremap <Leader>s :set<Space>invspell<CR>

"enable/disable highlight 
:nnoremap <Leader>h :set invhls<CR>


"copy/paste from clipboard
nnoremap <Leader>y <Esc>"+y
nnoremap <Leader>Y <Esc>"+Y
nnoremap <Leader>p <Esc>"+p
nnoremap <Leader>P <Esc>"+P
vmap <Leader>y "+y

"run files 
"NodeJS
:nnoremap <Leader>rn :w<CR> :!node<Space>%<CR>
"Python
:nnoremap <Leader>rp :w<CR> :!Python<Space>%<CR>

"FZF
nnoremap <silent> <leader>f :FZF<CR>
nnoremap <silent> <leader>F ~:FZF<CR>

"Autocommands
augroup vimrc
        autocmd!
        autocmd FileType xml,html,htmldjango inoremap </ </<C-x><C-o>
augroup END
