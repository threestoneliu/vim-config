

"======== "plugin install "========
call plug#begin('~/.vim/plugged')
 " go
 Plug 'scrooloose/nerdtree'
 Plug 'jistr/vim-nerdtree-tabs'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'fatih/vim-go', { 'tag': '*', 'do': ':goupdatebinaries' }
 " normal develop
 Plug 'junegunn/fzf'
 Plug 'majutsushi/tagbar'
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'Lokaltog/vim-powerline'
 " Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
 Plug 'tpope/vim-projectionist'
 Plug 'rking/ag.vim'
call plug#end()

"=========
"nerdtree
"=========
map <f2> :NERDTreeToggle<cr>

"======
" go plugin
"======
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_def_mapping_enabled = 0
" let g:go_debug_windows = {
"       \ 'vars':       'rightbelow 60vnew',
"       \ 'stack':      'rightbelow 10new',
" \ }
let g:go_debug_windows = {
          \ 'vars':       'leftabove 30vnew',
          \ 'stack':      'leftabove 20new',
          \ 'goroutines': 'botright 10new',
          \ 'out':        'botright 5new',
\ }

"tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
let g:tagbar_left=1
nmap <f3> :TagbarToggle<cr>

" fzf
set rtp+=~/.fzf

" powerline
let g:Powerline_symbols='fancy'
set encoding=utf-8
set laststatus=2

" ctrlp
let g:ctrlp_map='<leader>ff'
let g:ctrlp_cmd='CtrlP'
map <leader>fp :CtrlPMRU<CR>
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip "macosx/linux
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
    \ }
	"\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
let g:ctrlp_working_path_mode=0 
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1


