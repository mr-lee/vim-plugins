filetype on
filetype plugin indent on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set number
syntax on
set cindent
set smartindent
set mouse=a
set bg=dark
set ignorecase
set copyindent
set ts=2
set sw=2
set encoding=utf-8
set expandtab
set hlsearch

" Code indenting
set foldmethod=indent
set foldlevel=99

" Movement around windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>

let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'

" Tab completion configuration
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" File browser
map <leader>n :NERDTreeToggle<CR>

" Refactoring and go to definition
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

nmap <leader>a <Esc>:Ack!

" Git integration
set statusline+=%{fugitive#statusline()}

set showcmd

" Virtualenv recognition
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  sys.path.insert(0,project_base_dir)
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

inoremap jj <ESC>

" Bundle: aespinosa/Swift-vim

" Nosetest integration
map <leader>dt :set makerpg=python\ manage.py\ test\|:call MakeGreen()<CR>
