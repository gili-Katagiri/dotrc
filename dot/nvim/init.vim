" Vim-Plug
" See `https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation`
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.

" Host language servers
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax hilighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" Colorscheme `nightfox` (See https://github.com/edeneast/nightfox.nvim)
Plug 'EdenEast/nightfox.nvim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

runtime! plugin-conf/**/*
