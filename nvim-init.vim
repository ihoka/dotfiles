call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'ggandor/lightspeed.nvim'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'terryma/vim-expand-region'

hi LightspeedCursor gui=reverse

if exists('g:vscode')
	nnoremap ? <Cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR>
else
endif

call plug#end()

" Remap leader key to ,
let mapleader=","

" Use fzf
set rtp+=/usr/local/opt/fzf

" Expand and shrink selection
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)
