set number
set clipboard=unnamed
set mouse=a
set background=dark

syntax enable

call plug#begin('~/.local/share/nvim/plugged')

Plug 'itchyny/vim-gitbranch'
Plug 'itchyny/lightline.vim'

Plug 'trusktr/seti.vim'
Plug 'jacoborus/tender.vim'
Plug 'kristijanhusak/vim-hybrid-material'

call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

colorscheme tender
let g:lightline = {
  \ 'colorscheme': 'tender',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ] ],
  \   'right': [ [ 'filename', 'git_branch_info' ] ],
  \ },
  \ 'component_function': {
  \   'git_branch_info': 'GitBranchInfo', 
  \ }
  \ }

function! GitBranchInfo()
    if exists('*gitbranch#name')
        let branch = gitbranch#name()
        return branch !=# '' ? branch." \uE725" : ''
    endif
    return ''
endfunction
