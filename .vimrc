" ve to turn this stuff back on if we want all of our features.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File types and syntax highlighting not automatically recognized
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" au BufNewFile,BufRead *.for set syntax=fortran
au BufNewFile,BufRead *.m set syntax=octave
au BufNewFile,BufRead *.mako set syntax=html

let fortran_have_tabs=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text formatting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set copyindent " Copy the previous indentation when autoindenting
set smartindent " Intellegently dedent / indent new lines based on rules.
set showmatch " Show matching parenthesis

" Make Ctrl-W always delete the previous word
set backspace=indent,eol,start

" Enable 'hidden' mode; IE: :e does not require unsaved documents to be saved prior to opening a new document
set hidden

" Searching options
set ignorecase " Ignore case when searching
set smartcase " Ignore case if search pattern is all lower-case; case sensitive otherwise
set hlsearch " Highlight search terms
set incsearch " Highlights search term matches as you type

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI Options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable editor line wrapping
set nowrap

" Disable main toolbar
set guioptions -=T

" Set DevaVu Sans Mono, 8 pt as the default GUI font
if has("gui_running")
    set guifont=Terminus\ 8
endif

" Key remappings

" So we don't have to press shift when we want to get into command mode.
nnoremap ; :
vnoremap ; :

" Remap Shift-Tab to Ctrl-D for reverse-indent
inoremap <S-Tab> <C-D>
" Remap Tab to Ctrl-T for forward-indent.  This gives Vim the Emacs style indentation I've been using for years
inoremap <Tab> <C-T>

" Remap Ctrl-Bksp to Ctrl-W for delete word behavior
" Try different methods of mapping depending on whether this is GUI or terminal mode
if has("gui_running")
    imap <C-BS> <C-W>
else
    noremap! <C-BS> <C-w>
    noremap! <C-h> <C-w>
endif

" Remap the Escape key in interactive mode to allow for quicker use
" Remap the Escape key in interactive mode to allo

inoremap jk <esc>

" Mapping to allow current buffer to be closed without deleting the view
map <leader>q :bp<bar>sp<bar>bn<bar>bd<bar>:bn<CR>

colorscheme corporation_modified

" Additional color tweaks
syntax enable " Syntax highlighting

" Paste without overwriting content's of the copy/paste register
" Taken from https://stackoverflow.com/questions/290465/how-to-paste-over-without-overwriting-register
" I haven't found how to hide this function (yet)
function! RestoreRegister()
    let @" = s:restore_reg
    return ''
endfunction

function! s:Repl()
    let s:restore_reg = @"
    return "p@=RestoreRegister()\<cr>"
endfunction

" NB: this supports "rp that replaces the selection by the contents of @r
vnoremap <silent> <expr> p <sid>Repl()


" NERDcommenter plugin tweaks

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


" Set width color column highlighting
" set colorcolumn=80 
" highlight ColorColumn ctermbg=darkgrey guibg=darkgrey

