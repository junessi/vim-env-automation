syntax on
set nu
set relativenumber
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set hlsearch
set ruler
set encoding=utf-8
set tenc=utf-8
set fenc=utf-8
set fileencodings=utf-8,cp936,gb18030,gbk,big5,latin1
set fileformat=unix

"pathogen
execute pathogen#infect()

filetype plugin on
let &t_Co=256
colorscheme kalisi
set bg=dark

"start at the last position of this file
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif 

"======================================== KEY MAPPING BEGIN ================================================
"comment line leaded with #
nmap <F7> ^i#<ESC>
"uncomment line leaded with #
nmap <S-F7> ^x
"comment line leaded with //
nmap <F8> ^i//<ESC>
"uncomment line leaded with //
nmap <S-F8> ^xx

"NERDTree toggle
nmap <F9> :NERDTreeToggle<CR>

"vim airline toggle
nmap <S-F9> :TagbarToggle<CR>

"copy last yanked line to clipboard
nmap <F12> :call system('xclip -selection c', @0)<CR><CR>
vmap <F12> :call system('xclip -selection c', @0)<CR><CR>
"paste last yanked line from clipboard
nmap <S-F12> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p

"buftabline
nnoremap <C-P> :bnext<CR>
nnoremap <C-B> :bprev<CR>
let g:buftabline_numbers = 1
let g:buftabline_separators = 0

"switching between windows
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k

"delete buffer
nnoremap <C-C> :bd<CR>

"json auto indent
nmap <leader>jf :%!python -m json.tool<CR>
"======================================== KEY MAPPING END ==================================================

"vim-json
let g:vim_json_syntax_conceal=0
set foldmethod=syntax
set foldlevelstart=32

"powerline
set rtp+=$HOME/.local/lib/python3.6/site-packages/powerline/bindings/vim/
set laststatus=2

"config pydict
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 8

"ack
nnoremap <F3> :Ack<CR>

"rainbow
let g:rainbow_active = 1

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_cpp_include_dirs = [ '/home/cricket/cppcode/lib/googletest/include', '/home/cricket/cppcode/src', '/home/cricket/cppcode/test' ]
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

