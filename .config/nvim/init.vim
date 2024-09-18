" Load the existing .vimrc configuration
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

" Remap the terminal mode escape sequence to something that makes more sense
tnoremap <Esc> <C-\><C-n>

" Display the line number the cursor is at and display the relative line distance at every other line
set number relativenumber

