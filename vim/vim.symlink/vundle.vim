set nocompatible
filetype off                   " required by vundle!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Run interactive commands in a buffer
Bundle 'Conque-Shell'

" Pretty colors
Bundle 'altercation/vim-colors-solarized'

" Programming

" syntax checking on save
Bundle 'Syntastic'

" Per language
Bundle 'tpope/vim-rails'
Bundle 'vim-coffee-script'
Bundle 'Vim-Rspec'

Bundle 'groenewege/vim-less'

Bundle 'Handlebars'
if has("autocmd")
  au BufNewFile,BufRead *.handlebars,*.hbs set filetype=handlebars
endif

" Ruby support
Bundle 'endwise.vim'

" VCS support
Bundle 'fugitive.vim'
Bundle 'git.zip'

" Change enclosing surroundings
Bundle 'surround.vim'

" Awesome search
Bundle 'ack.vim'

" Status line goodness
Bundle 'Lokaltog/vim-powerline'

Bundle 'VimClojure'
Bundle 'jade.vim'
