syntax enable
set background=dark
let g:solarized_termcolors=256
let g:solarized_contrast="high"
colorscheme solarized

" http://peace-pipe.blogspot.com/2006/05/vimrc-vim.html
set expandtab
set tabstop=4
set shiftwidth=4
set incsearch
set hidden
set wildmenu
"set wildmode=list
"set complete=".,w,k,i"

set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis

" http://aaabbbkirai.sytes.net/wiki/tech/editor/vim-%C0%DE%A4%EA%BE%F6%A4%DF%C1%E0%BA%EE.html
set fdm=marker

" http://homepage.mac.com/xcatsan/vim/vimtips.html
" http://easyramble.com/set-vim-indent-with-filetype.html
filetype plugin indent on

augroup filetypedetect
    au BufRead,BufNewFile *.rb  setfiletype ruby
    au BufRead,BufNewFile *.py  setfiletype python
    au BufRead,BufNewFile *.cpp setfiletype cpp
    au BufRead,BufNewFile *.c   setfiletype c
augroup END

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

"------------------------------
" GNU GLOBAL
"------------------------------
map <C-g> :Gtags<CR>
map <C-i> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>
"------------------------------
" Buffer
"------------------------------
"map <F2> :bp<CR>
"map <F3> :bn<CR>
"map <F4> :bw<CR>

nmap <ESC><ESC> ;nohlsearch<CR><ESC> 


"----
"au QuickfixCmdPost vimgrep cw
au QuickfixCmdPost make,grep,grepadd,vimgrep copen
au QuickfixCmdPost l* lopen

filetype plugin indent on

" copy from
" https://github.com/takuyan/config/blob/master/.vimrc
" change status line color, insert mode
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guibg=#AE81FF guifg=#080808
autocmd InsertLeave * highlight StatusLine guifg=#808080 guibg=#080808
augroup END
