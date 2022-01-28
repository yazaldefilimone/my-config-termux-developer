
" Author: Yazalde Filimone Pinto
" github: https://github.com/yazaldefilimonepinto

call plug#begin()
  Plug 'sheerun/vim-polyglot'
  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'gko/vim-coloresque'
  Plug 'thaerkh/vim-indentguides'
  Plug 'cohama/lexima.vim'
  Plug 'jiangmiao/auto-pairs'

  Plug 'plasticboy/vim-markdown'
  Plug 'kien/ctrlp.vim'
	" Git
	Plug 'airblade/vim-gitgutter'

  "Colors
  Plug 'yashguptaz/calvera-dark.nvim'
  Plug 'edersonferreira/dalton-vim'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'ayu-theme/ayu-vim' " or other package manager

call plug#end()




let g:coc_global_extensions = ['coc-snippets','coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-eslint', 'coc-tsserver']
 


" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif


"set background=dark
set number
set termguicolors
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set wildmenu
set nowrap
" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2



"colorschem dracula

"...
set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_theme='ayu'

" outers
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
"
"
set t_Co=256
filetype plugin indent on
syntax on
" Configurações do CoC.nvim

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Fim das configurações do CoC.nvim
" Atalhos 
nnoremap <C-s> :x!<CR>
nnoremap <C-q> :q!<CR>

nnoremap <p> :bprevious<CR>
nnoremap <n> :bnext<CR>
nnoremap <silent> <s-Down> :m +1<CR>
nnoremap <silent> <s-Up> :m -2<CR>
vnoremap <C-c> "+y<CR>

"
" Configurações do lexima.vim

let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

" Fim das configurações do lexima.vim

" Configurações do Vim IndentGuides

let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

" Fim das configurações do Vim IndentGuides
"" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" IndentLine {{
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}




" open terminal on ctrl+;
" uses zsh instead of bash
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-t> :call OpenTerminal()<CR>
