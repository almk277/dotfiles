" include this with: source ~/dotfiles/vimrc

set shiftwidth=4 tabstop=4

map <F9> :make<CR>:cwindow<CR><CR>
map <S-F9> :make clean all<CR>:cwindow<CR><CR>

set autowrite
set number
set mouse=a

map <F3> :cn<CR>
map <S-F3> :cp<CR>
map <F4> :set invlist<CR>

imap jk <Esc>
