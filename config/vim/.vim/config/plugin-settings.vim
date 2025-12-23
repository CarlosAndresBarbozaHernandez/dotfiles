" ============================================
" CONFIGURACIÓN DE PLUGINS
" ============================================

" === AUTO-PAIRS ===
let g:AutoPairsShortcutToggle = '<Leader>ap'
let g:AutoPairsShortcutFastWrap = '<Leader>aw'
let g:AutoPairsShortcutJump = '<Leader>aj'

" === NERDTREE ===
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$', '\.DS_Store$', '__pycache__', '\.pyc$']

" Abrir NERDTree si no se especifica archivo
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Cerrar Vim si NERDTree es la única ventana
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
