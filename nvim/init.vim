" init.vim
let mapleader="\<space>"
set noswapfile
set clipboard=unnamedplus
set mouse=a
set ignorecase
set smartcase
set shiftwidth=2
set softtabstop=2
set smartindent
set expandtab
set termguicolors
set number

command! Leaf :cd %:h
command! Root :cd %:h | cd `git rev-parse --show-toplevel`
nnoremap <leader>w /\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn
nnoremap <leader>W ?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN
nnoremap <leader>m :!go run .<CR>

source ~/.config/nvim/config/vim-plug.vim
source ~/.config/nvim/config/codedark.vim
source ~/.config/nvim/config/nvim-colorizer.vim
source ~/.config/nvim/config/indent-blankline.vim
source ~/.config/nvim/config/treesitter.vim
source ~/.config/nvim/config/nvim-gps.vim
source ~/.config/nvim/config/telescope.vim
source ~/.config/nvim/config/coc.vim
source ~/.config/nvim/config/vista.vim
source ~/.config/nvim/config/gitsigns.vim
source ~/.config/nvim/config/emmet.vim

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'
if executable(s:clip)
  augroup WSLYank
    autocmd!
    autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
  augroup END
endif
