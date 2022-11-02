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

"REMAPS
"-----------------

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


"FZF
nnoremap <silent> <leader>f :FZF<CR>
nnoremap <silent> <leader>F ~:FZF<CR>

"Autocommands
augroup vimrc
        autocmd!
        autocmd FileType xml,html,htmldjango inoremap </ </<C-x><C-o>
augroup END
