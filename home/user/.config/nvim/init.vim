" Global configs
filetype plugin indent on
syntax on

set nocompatible
set t_Co=256
set number
set linebreak
set nobackup
set wildmode=longest:list
set wildignore+=*.DS_STORE,*.db,node_modules/**,*.jpg,*.png,*.gif,*.mp3,*.mp4
set ignorecase
set gdefault
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set autochdir
set cursorline
set hlsearch
set pumheight=15
set completeopt=menu,preview
set exrc
set secure 
set directory=~/tmp,/tmp,/var/tmp
set hls
set novb
set showcmd
set showmode
set showmatch
set nohidden
set ttyfast
set noerrorbells
set report=0
set nowb
set noswapfile


" set list

" Statusbar 
set laststatus=2
set statusline=%t
set statusline+=%m
set statusline+=%r
set statusline+=%y
set statusline+=%=
set statusline+=%c
set statusline+=%V
set statusline+=%P
set statusline+=,%l:%L
set statusline+=%F
set statusline+=%h
set statusline+=%w

hi User1 ctermfg=231  ctermbg=25
hi User2 ctermfg=231  ctermbg=237
hi User3 ctermfg=231  ctermbg=235

" color scheme
set background=dark
hi CursorLine   ctermbg=237
hi MatchParen   ctermfg=255   ctermbg=242
hi Pmenu        ctermfg=15    ctermbg=238
hi PmenuSel     ctermfg=0     ctermbg=107
hi Normal       ctermfg=253   ctermbg=233
hi LineNr       ctermfg=244   ctermbg=232
hi Visual                     ctermbg=238

" Plugins
call plug#begin('~/.vim/autoload')
" Neo Clide 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Improved motion in Vim
Plug 'easymotion/vim-easymotion'
" Shell script syntax highlight
Plug 'arzg/vim-sh'

" Dockerfile syntax highlight
Plug 'ekalinin/Dockerfile.vim'

" Typescript syntax highlight
Plug 'HerringtonDarkholme/yats.vim'

" TSX and JSX highlight
Plug 'maxmellon/vim-jsx-pretty'

" NERD COMMAND 
Plug 'preservim/nerdtree'

" NerD Commenter 
Plug 'preservim/nerdcommenter'
" Commentary 
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

call plug#end()

" Plugins Configs
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


