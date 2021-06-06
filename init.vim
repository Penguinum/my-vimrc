call plug#begin('~/.config/nvim/plugged')
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'jnurmine/Zenburn'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'jreybert/vimagit'
Plug 'haya14busa/vim-asterisk'
Plug 'vim-ruby/vim-ruby'
Plug 'preservim/nerdtree'

Plug 'vim-scripts/Satori-Color-Scheme'
"Plug 'jakwings/vim-colors'
Plug 'rafi/awesome-vim-colorschemes'

Plug 'tpope/vim-fugitive'
Plug 'tbastos/vim-lua'
Plug 'davidhalter/jedi-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'jsfaint/gen_tags.vim'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
"Plug 'majutsushi/tagbar'
Plug 'preservim/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'

Plug 'simnalamburt/vim-mundo'
call plug#end()

set t_Co=256
colorscheme zenburn
set nu
set wildmenu
set mouse=a
set hlsearch

" Disable all gui stuff if running gvim
set guioptions-=m " remove menu bar
set guioptions-=T " remove toolbar
set guioptions-=r " remove right-hand scroll bar
set guioptions-=L " remove left-hand scroll bar

set updatetime=100 " need this for git-gutter to update fast

" CtrlP config
"nmap <c-b> :CtrlPBuffer <CR>
"nmap <c-t> :CtrlPTag <CR>
"nmap <s-t> :CtrlPBufTag <CR>
"" Wait to ensure input is finished
"let g:ctrlp_lazy_update=1
"let g:ctrlp_max_files=0

nmap <c-p> :FZF <CR>
nmap <c-b> :Buffers <CR>
map , :@: <CR>

" Fold config
set foldmethod=syntax
set foldlevel=20 " Folds in opened files are not closed
set foldenable

" Disable cursor blinking:
set guicursor+=a:blinkon0

" Lightline config
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

if &term =~ '^screen'
        " tmux will send xterm-style keys when its xterm-keys option is on
        execute "set <xUp>=\e[1;*A"
        execute "set <xDown>=\e[1;*B"
        execute "set <xRight>=\e[1;*C"
        execute "set <xLeft>=\e[1;*D"
endif

set undofile
set undodir=~/.vim/undo
