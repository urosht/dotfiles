" Set neovim config by sourcing vimrc
" This file is sourced from '$DOTFILES/scripts/vim.sh' instead of vim symlink
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = & runtimepath
source ~/.vimrc
