" ============================================
" CONFIGURACIÓN GENERAL
" ============================================

" Sintaxis y colores
syntax enable
if (has("termguicolors"))
    set termguicolors
endif
set background=dark

" Numeración
set number
set relativenumber

" Codificación
set encoding=utf-8
set fileencoding=utf-8

" Indentación
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" Búsqueda
set hlsearch
set incsearch
set ignorecase
set smartcase

" Interfaz
set showcmd
set showmatch
set ruler
set wildmenu
set laststatus=2

" Comportamiento
set mouse=a
set clipboard=unnamed
set backspace=indent,eol,start
set noswapfile
set nobackup
set lazyredraw

" Auto-formatear al salir de INSERT
autocmd InsertLeave * let save_cursor = getpos(".") | let save_view = winsaveview() | execute 'normal! gg=G' | call setpos('.', save_cursor) | call winrestview(save_view)
