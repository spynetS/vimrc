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
call plug#end()

"emmet shortcuts
let g:user_emmet_mode='n' "emmet only works in normal mode
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



"this is java tools
" autocmd FileType java setlocal omnifunc=javacomplete#Complete

 nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
 imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
 nmap <F5> <Plug>(JavaComplete-Imports-Add)
 imap <F5> <Plug>(JavaComplete-Imports-Add)
 nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
 imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
 nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
 imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)


 nmap <leader>jI <Plug>(JavaComplete-Imports-AddMissing)
 nmap <leader>jR <Plug>(JavaComplete-Imports-RemoveUnused)
 nmap <leader>ji <Plug>(JavaComplete-Imports-AddSmart)
 nmap <leader>jii <Plug>(JavaComplete-Imports-Add)

 imap <C-j>I <Plug>(JavaComplete-Imports-AddMissing)
 imap <C-j>R <Plug>(JavaComplete-Imports-RemoveUnused)
 imap <C-j>i <Plug>(JavaComplete-Imports-AddSmart)
 imap <C-j>ii <Plug>(JavaComplete-Imports-Add)

 nmap <leader>jM <Plug>(JavaComplete-Generate-AbstractMethods)

 imap <C-j>jM <Plug>(JavaComplete-Generate-AbstractMethods)

 nmap <leader>jA <Plug>(JavaComplete-Generate-Accessors)
 nmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
 nmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
 nmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
 nmap <leader>jts <Plug>(JavaComplete-Generate-ToString)
 nmap <leader>jeq <Plug>(JavaComplete-Generate-EqualsAndHashCode)
 nmap <leader>jc <Plug>(JavaComplete-Generate-Constructor)
 nmap <leader>jcc <Plug>(JavaComplete-Generate-DefaultConstructor)

 imap <C-j>s <Plug>(JavaComplete-Generate-AccessorSetter)
 imap <C-j>g <Plug>(JavaComplete-Generate-AccessorGetter)
 imap <C-j>a <Plug>(JavaComplete-Generate-AccessorSetterGetter)

 vmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
 vmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
 vmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)

 nmap <silent> <buffer> <leader>jn <Plug>(JavaComplete-Generate-NewClass)
 nmap <silent> <buffer> <leader>jN <Plug>(JavaComplete-Generate-ClassInFile)
