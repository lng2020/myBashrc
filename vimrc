set nocompatible

" Turn on syntax highlighting. "
syntax on

" Disable the default Vim startup message. "
set shortmess+=I

" Show line numbers. "
set number

" This enables relative line numbering mode. With both number and "
" relativenumber enabled, the current line shows the true line number, while "
" all other lines (above and below) are numbered relative to the current line. "
" This is useful because you can tell, at a glance, what count is needed to "
" jump up or down to a particular line, by {count}k to go up or {count}j to go "
" down. "
set relativenumber

" Always show the status line at the bottom, even if you only have one window open. "
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,"
" by default, you can't backspace before the insertion point set with 'i'."
" This configuration makes backspace behave more reasonably, in that you can"
" backspace over anything."
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't"
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find"
" hidden buffers helpful enough to disable this protection. See `:help hidden`"
" for more information on this."
set hidden

" This setting makes search case-insensitive when all characters in the string"
" being searched are lowercase. However, the search becomes case-sensitive if"
" it contains any capital letters. This makes searching more convenient."
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter."
set incsearch

" Unbind some useless/annoying default key bindings."
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this."

" Disable audible bell because it's annoying."
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can"
" sometimes be convenient."
set mouse+=a

" Try to prevent bad habits like using the arrow keys for movement. This is"
" not the only possible bad habit. For example, holding down the h/j/k/l keys"
" for movement, rather than using more efficient movement commands, is also a"
" bad habit. The former is enforceable through a .vimrc, while we don't know"
" how to prevent the latter."
" Do this in normal mode..."
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" ...and in insert mode"
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align

" Any valid git URL is allowed

" Multiple Plug commands can be written in a single line using | separators

" On-demand loading
Plug 'dense-analysis/ale'

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'octol/vim-cpp-enhanced-highlight'
" Using a non-default branch

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)

" Plugin options

" Plugin outside ~/.vim/plugged with post-update hook

" Unmanaged plugin (manually installed and updated)

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
let g:ale_sign_error = "\ue009\ue009"
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta
