" Automatically install vimplug if uninstalled.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'yuttie/comfortable-motion.vim'
Plug 'dense-analysis/ale'
Plug 'jpalardy/vim-slime'
Plug 'frazrepo/vim-rainbow'
" Plug 'oblitum/youcompleteme'
Plug 'tpope/vim-commentary'
Plug 'kshenoy/vim-signature'
Plug 'francoiscabrol/ranger.vim'
Plug 'chrisbra/recover.vim'
Plug 'itchyny/lightline.vim'
Plug 'girishji/easyjump.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colo monokai-bold
" Other commands.
set number

set backspace=indent,eol,start
set laststatus=2
set hlsearch
set incsearch
set scrolloff=10
set wildmenu

" Checks if changes to reload files
set autoread                                                                                                                                                                                    
au CursorHold * checktime  

" Custom commands
nnoremap <CR> :noh<CR><CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap gf <C-w>gf

" Due to easyjump s is an motion operator, so it's remapped to S while S can
" be achieved with cc
nnoremap S s

nnoremap +y "+y
vnoremap +y "+y

set cursorline
let mapleader = "\\"

map <leader>f :RangerNewTab<CR>

" Clipboard to system register "*
" set clipboard=unnamed

" Vim rainbow
let g:rainbow_active = 1
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['red', 'brown', 'yellow', 'magenta', 'lightgreen']

" ALE config
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
" highlight ALEErrorSign ctermbg=235 ctermfg=196
highlight ALEWarningSign ctermbg=235 ctermfg=172
" VIM SLIME
let g:slime_python_ipython = 1 

command GitDiff execute  "w !git diff --no-index -- % -"

" Matlab Vim
" source $VIMRUNTIME/macros/matchit.vim
" filetype indent on
" autocmd BufEnter *.m compiler mlint
" autocmd FileType matlab set commentstring=\%\ %s

let &t_TI = ""
let &t_TE = ""

" Removes = sign as option for a file name for gf
set isfname-==

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modif' ] ]
      \ },
      \ 'component_function': {
      \   'modif': 'ModifiedFun'
      \ },
      \ }

function! ModifiedFun()
        let modified = &modified ? ' (❌ Modified)' : '✅'
        return modified
endfunction
