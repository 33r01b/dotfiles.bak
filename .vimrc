syntax on
"filetype plugin on
set path+=**
set nocp
set number
set ruler
set laststatus=2
set fileencodings=utf8,cp1251
set encoding=utf8
set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
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

let g:powerline_pycmd="py3"

nnoremap <silent> <Space> :nohl<Bar>:echo<CR>

"Для установки создайте каталог ~/.vim/bundle (можно использовать любое имя) и скопируйте туда vim_lib.
"git clone https://github.com/Bashka/vim_lib.git ~/.vim/bundle/vim_lib

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp=~/.vim/bundle/vim_lib
call vim_lib#sys#Autoload#init('~/.vim', 'bundle') " Адрес до вашего ~/.vim/bundle

Plugin 'vim_lib'
Plugin 'vim_plugmanager'
Plugin 'vim_prj'
Plugin 'vim_start' 
Plugin 'vim-fugitive'
Plugin 'nerdtree'
Plugin 'gruvbox'
Plugin 'auto-pairs'
Plugin 'tern_for_vim'

"Plugins repo
"https://github.com/Bashka/vim_lib
"https://github.com/Bashka/vim_plugmanager
"https://github.com/Bashka/vim_prj
"https://github.com/Bashka/vim_start
"https://github.com/tpope/vim-fugitive
"https://github.com/scrooloose/nerdtree
"https://github.com/morhetz/gruvbox
"https://github.com/jiangmiao/auto-pairs
"https://github.com/ternjs/tern_for_vim 


filetype indent plugin on

"color scheme
colorscheme gruvbox
set background=dark
"set contrast for notebook
"let g:gruvbox_contrast_dark='hard'

" ==========NERD TREE conf==========
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

