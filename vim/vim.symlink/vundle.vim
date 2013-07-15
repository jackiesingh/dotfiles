" vim: fdm=marker ts=2 sts=2 sw=2

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
" indent guides
Bundle 'Indent-Guides'

" Commenting
Bundle 'The-NERD-Commenter'

" syntax checking on save
Bundle 'Syntastic'

" Per language
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'Vim-Rspec'
Bundle 'VimClojure'
Bundle 'jade.vim'

Bundle 'groenewege/vim-less'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'ap/vim-css-color'
Bundle 'othree/html5.vim'
Bundle 'juvenn/mustache.vim'
Bundle 'gregsexton/MatchTag'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
Bundle 'mmalecki/vim-node.js'

Bundle 'Handlebars'
if has("autocmd")
  au BufNewFile,BufRead *.handlebars,*.hbs set filetype=handlebars
endif

" Ruby support
Bundle 'endwise.vim'


" VCS support
Bundle 'tpope/vim-fugitive'

Bundle 'git.zip'

" Change enclosing surroundings
Bundle 'surround.vim'

" Awesome search
Bundle 'ack.vim'
Bundle 'IndexedSearch'

" Status line {{{
Bundle 'bling/vim-airline'

let g:bufferline_echo=0
let g:bufferline_rotate=1
Bundle 'bling/vim-bufferline'
" }}}

" Completion
let g:neocomplete#enable_at_startup=1
let g:neocomplete#data_directory='~/.vim/.cache/neocomplete'
let g:neocomplete#enable_auto_delimiter=1
let g:neocomplete#enable_refresh_always=1
Bundle 'Shougo/neocomplete.vim'
Bundle 'AutoTag'

" Navigation
Bundle 'The-NERD-tree'
Bundle 'airblade/vim-rooter'
Bundle 'kshenoy/vim-signature'

" Unite {{{
let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_source_rec_max_cache_files=5000
let g:unite_prompt='» '

if executable('ag')
  let g:unite_source_grep_command='ag'
  let g:unite_source_grep_default_opts='--nocolor --nogroup --hidden'
  let g:unite_source_grep_recursive_opt=''
elseif executable('ack')
  let g:unite_source_grep_command='ack'
  let g:unite_source_grep_default_opts='--no-heading --no-color -a'
  let g:unite_source_grep_recursive_opt=''
endif


Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/unite.vim'

nmap <space> [unite]
nnoremap [unite] <nop>

function! s:unite_settings()
  nmap <buffer> Q <plug>(unite_exit)
  nmap <buffer> <esc> <plug>(unite_exit)
  imap <buffer> <esc> <plug>(unite_exit)
endfunction
autocmd FileType unite call s:unite_settings()

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#set_profile('files', 'smartcase', 1)
call unite#custom#source('line,outline','matchers','matcher_fuzzy')

nnoremap <silent> [unite]<space> :<C-u>Unite -toggle -auto-resize -buffer-name=mixed file_rec/async buffer file_mru bookmark<cr><c-u>
nnoremap <silent> [unite]f :<C-u>Unite -toggle -auto-resize -buffer-name=files file_rec/async<cr><c-u>
nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yanks history/yank<cr>
nnoremap <silent> [unite]l :<C-u>Unite -auto-resize -buffer-name=line line<cr>
nnoremap <silent> [unite]b :<C-u>Unite -auto-resize -buffer-name=buffers buffer<cr>
nnoremap <silent> [unite]/ :<C-u>Unite -no-quit -buffer-name=search grep:.<cr>
nnoremap <silent> [unite]m :<C-u>Unite -auto-resize -buffer-name=mappings mapping<cr>
nnoremap <silent> [unite]s :<C-u>Unite -quick-match buffer<cr>
" }}}
