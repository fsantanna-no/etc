au BufRead,BufNewFile *.ceu set filetype=ceu
syntax enable
syntax spell toplevel

set nohidden

set cryptmethod=blowfish2

set colorcolumn=80

set hlsearch            " highlight matches
set incsearch           " search as characters are entered

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
autocmd FileType make setlocal noexpandtab

nnoremap # /<C-R>=expand('<cword>')<CR>\><CR>

set guioptions-=T
set guioptions-=m

set printoptions=paper:A4,left:2,syntax:y
"set printoptions=paper:A4,number:y,left:2,syntax:y

function! CHANGE_CURR_DIR()
let _dir = expand("%:p:h")
exec "cd %:p:h"
unlet _dir
endfunction
autocmd BufEnter * call CHANGE_CURR_DIR() 

" Map ctrl-movement keys to window switching
map <A-Up>     <C-w><Up>
map <A-Down>   <C-w><Down>
map <A-Right>  <C-w><Right>
map <A-Left>   <C-w><Left>
map <A-PageUp> <C-w><S-_>

nmap MM 'm
nmap MN 'n
