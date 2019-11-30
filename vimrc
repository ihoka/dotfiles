set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Bundle 'thoughtbot/vim-rspec'
Bundle 'jgdavey/tslime.vim'

call vundle#end()

filetype plugin indent on

let g:rspec_command = 'call Send_to_Tmux("spring rspec {spec}\n")'

" vim-rspec mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
