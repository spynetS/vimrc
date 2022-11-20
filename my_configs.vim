set belloff=all
"plugins
call plug#begin()

Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'SirVer/ultisnips'
Plug 'yanqd0/snippets-for-vim'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'BrandonRoehl/auto-omni'
Plug 'mxw/vim-jsx'
Plug 'drmikehenry/vim-fontsize'
call plug#end()


set foldlevel=15
set nowrap

"emmet shortcuts
" let g:user_emmet_mode='n' "emmet only works in normal mode
let g:user_emmet_leader_key=','

"show spaces
set list
set listchars=space:·

set rnu
set nu
nmap <tab> :tabn

colorscheme dracula
"colorscheme peaksea
"colorscheme ir_black
"colorscheme pyte

vnoremap $) <esc>`>a)<esc>`<i(<esc>
vnoremap $] <esc>`>a]<esc>`<i[<esc>
vnoremap $} <esc>`>a}<esc>`<i{<esc>
vnoremap $" <esc>`>a"<esc>`<i"<esc>
vnoremap $s <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a`<esc>`<i`<esc>

set foldlevel=220

let g:NERDTreeWinPos = "left"

nmap <leader>w :set wrap<cr>
nmap <leader>nw :set nowrap<cr>

"bind away arrowkeys
""noremap <Up> <nop>
"noremap <Down> <nop>
"noremap <Left> <nop>
"noremap <Right> <nop>
"
"inoremap <Up> <nop>
"inoremap <Down> <nop>
"inoremap <Left> <nop>
"inoremap <Right> <nop>
"
"move row
nnoremap <C-A-down> :m .+1<CR>==
nnoremap <C-A-up> :m .-2<CR>==
vnoremap <C-A-down> :m '>+1<CR>gv=gv
vnoremap <C-A-up> :m '<-2<CR>gv=gv

set cursorline
set shell=/usr/bin/zsh

"snippets
nmap <leader>for Ifor(let i = 0;i<10;i++){}
nmap <leader>level :set foldlevel=1

