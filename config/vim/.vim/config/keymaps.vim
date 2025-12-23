" ============================================
" ATAJOS DE TECLADO
" ============================================

let mapleader = " "

" === MODO INSERT ===
inoremap jj <Esc>
inoremap jk <Esc>
inoremap <C-s> <Esc>:w<CR>

" === MODO VISUAL ===
vnoremap jj <Esc>
vnoremap jk <Esc>

" === MODO TERMINAL ===
tnoremap jj <C-\><C-n>
tnoremap jk <C-\><C-n>

" === MODO NORMAL ===
" Archivos
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :wq<CR>
nnoremap <C-s> :w<CR>

" Navegación entre ventanas
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Búsqueda
nnoremap <Leader>h :nohlsearch<CR>

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" === CAMBIO DE TEMAS ===
nnoremap <Leader>t1 :call ChangeColorscheme('dracula')<CR>
nnoremap <Leader>t2 :call ChangeColorscheme('onedark')<CR>
nnoremap <Leader>t3 :call ChangeColorscheme('github_dark')<CR>
nnoremap <Leader>t4 :call ChangeColorscheme('night-owl')<CR>
nnoremap <Leader>t5 :call ChangeColorscheme('monokai_pro')<CR>
nnoremap <Leader>t6 :call ChangeColorscheme('one-monokai')<CR>
nnoremap <Leader>t7 :call ChangeColorscheme('ayu')<CR>
nnoremap <Leader>t8 :call ChangeColorscheme('catppuccin')<CR>
nnoremap <Leader>t9 :call ChangeColorscheme('tokyonight')<CR>
nnoremap <Leader>t0 :call ChangeColorscheme('solarized')<CR>
nnoremap <Leader>tc :echo g:colors_name<CR>
