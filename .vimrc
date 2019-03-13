" Enable syntax highlight
syntax on
let python_highlight_all=1
filetype plugin indent on
set number

" Highlight your search
set hlsearch

" Highlight useless white spaces
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" au InsertLeave * match ExtraWhitespace /\s\+$/
" colorscheme solarized

" redraws the screen and removes any search highlighting
noremap <C-l> :nohl<CR>

" Rebind <Leader> Key
let mapleader = ","

" Quicksave command
noremap <C-Z> :update<CR>

" Quickquit command
noremap <Leader>e :quit<CR> "Quit current wind
noremap <Leader>E :qa!<CR> "Quit all wind

" Easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" Easier move among tabs/windows
map <C-t><up> :tabr<CR>
map <C-t><down> :tabl<CR>
map <C-t><left> :tabp<CR>
map <C-t><right> :tabn<CR>


" ==============
" Python IDE
" ==============

" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()
"execute pathogen#infect()

" Setting vim-colors-solarized
" cd ~/.vim/bundle
" git clone git://github.com/altercation/vim-colors-solarized.git
let g:solarized_termcolors=16
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
map <C-n> :NERDTreeToggle<CR>

" Setting for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

