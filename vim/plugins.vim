" Plug-in

call plug#begin('~/.vim/plugged')

" Nerdtree
Plug 'scrooloose/nerdtree',	{ 'on': 'NERDTreeToggle' }
" Vim icons
Plug 'ryanoasis/vim-devicons',  { 'on': 'NERDTreeToggle' }
" Colorscheme
Plug 'gmarik/ingretu'
" Neovim linting engine
Plug 'w0rp/ale'
" Snippets for neovim
Plug 'Shougo/deoplete.nvim', { 'do' : ':UpdateRemotePlugins' }

call plug#end()
