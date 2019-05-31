" Enable syntax highlight
syntax on
let python_highlight_all=1
filetype plugin indent on
set number

" Highlight your search
set hlsearch

" Rebind <Leader> Key
let mapleader = ","

noremap <Leader>l :nohl<CR>

" Quicksave command
noremap <Leader>m :update<CR>

" Quickquit command
noremap <Leader>e :quit<CR> "Quit current wind
noremap <Leader>E :qa!<CR> "Quit all wind

call pathogen#infect()

" Setting vim-colors-solarized
" cd ~/.vim/bundle
" git clone git://github.com/altercation/solarized.git
" It worked with this: cp .vim/bundle/solarized/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
let g:solarized_termcolors=256
set t_Co=256
set background=dark
" Highlight useless white spaces
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
colorscheme solarized


" Setting for NERDTree
" cd ~/.vim/bundle
" git clone https://github.com/scrooloose/nerdtree.git
" toggle NERDtree
map <Leader>n :NERDTreeToggle<CR>
