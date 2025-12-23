" Gestión de plugins con vim-plug
call plug#begin('~/.vim/plugged')

" Temas
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'
Plug 'projekt0n/github-nvim-theme'
Plug 'haishanh/night-owl.vim'
Plug 'phanviet/vim-monokai-pro'
Plug 'fratajczak/one-monokai-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'ghifarit53/tokyonight-vim'
Plug 'altercation/vim-colors-solarized'

" Utilidades
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()
