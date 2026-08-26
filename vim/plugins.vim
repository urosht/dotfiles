" Plugins

silent! if plug#begin('~/.vim/plugged')

" Nerdtree
Plug 'scrooloose/nerdtree',  { 'on': 'NERDTreeToggle' }
" Vim icons
Plug 'ryanoasis/vim-devicons',  { 'on': 'NERDTreeToggle' }
" Colorscheme
Plug 'gmarik/ingretu'

call plug#end()

colorscheme ingretu

endif
