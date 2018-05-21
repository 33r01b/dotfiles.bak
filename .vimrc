syntax on
set path+=**
set nocp
set number
set ruler
set laststatus=2
set fileencodings=utf8,cp1251
set encoding=utf8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent
set cindent
set ai
set cin
set hlsearch
set incsearch
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest,list:full
set showcmd
set hidden
set t_Co=256
set colorcolumn=120
set clipboard=unnamed,unnamedplus
vnoremap y "+y
set relativenumber
set re=1
set ttyfast
set lazyredraw
set cursorline!
set timeoutlen=100 
set ttimeoutlen=0

let base16colorspace=256  " Access colors present in 256 colorspace
let g:powerline_pycmd="py3"

nnoremap <silent> <Space> :nohl<Bar>:echo<CR>
"set nocompatible              " be iMproved, required
"filetype off                  " required

"Plugin 'vim-fugitive'
"Plugin 'nerdtree'
"Plugin 'gruvbox'
"Plugin 'auto-pairs'
"Plugin 'tern_for_vim'
"Plugin 'vim-quickrun'
"Plugin 'vmustache'
"Plugin 'ultisnips'
"Plugin 'pdv'
"Plugin 'twig.vim'
"Plugin 'nerdtree-git-plugin'
"Plugin 'vimwiki'
"Plugin 'javascript-libraries-syntax.vim'
"Plugin 'vim-javascript'
"Plugin 'yajs.vim'
"Plugin 'vim-jsx'

"filetype indent plugin on

"color scheme
colorscheme gruvbox
highlight ColorColumn ctermbg=0
set background=dark
"
"set contrast for notebook
"let g:gruvbox_contrast_dark='hard'

" ==========NERD TREE conf==========
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

"set foldmethod=syntax

let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>

let g:jsx_ext_required = 0
let g:vim_jsx_pretty_enable_jsx_highlight = 1

set conceallevel=1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

let g:used_javascript_libs = 'react,vue,ramda,underscore'

"maralla/completor.vim settings
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
let g:completor_node_binary = '/usr/bin/node'
