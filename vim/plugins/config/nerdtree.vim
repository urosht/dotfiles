" NERDTree config
scriptencoding utf-8

let g:NERDTreeMapActivateNode     = '<Space>' " Open / close directorties and files with space
let g:NERDTreeQuitOnOpen          = 1         " Close NERDTree when opening a file
let g:NERDTreeDirArrowExpandable  = ''       " Custom collapsed icon
let g:NERDTreeDirArrowCollapsible = ''       " Custom expanded icon
let g:NERDTreeMinimalUI           = 1         " Hide help text

" Bind NERDTree to CTRL + B
noremap <silent> <C-b> :NERDTreeToggle<CR>

" Bind NERDTreeFind to CTRL + F
noremap <silent> <C-f> :NERDTreeFind<CR>
