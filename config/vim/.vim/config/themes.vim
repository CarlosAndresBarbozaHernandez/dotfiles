" ============================================
" CONFIGURACIÓN DE TEMAS
" ============================================

" Configuraciones específicas por tema
let g:onedark_terminal_italics = 1
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
let ayucolor = "dark"
let g:catppuccin_flavour = "mocha"

" Tema activo
colorscheme monokai_pro

" Función para cambiar tema y guardarlo
function! ChangeColorscheme(theme)
    execute 'colorscheme ' . a:theme
    let config_path = expand('~/.vim/config/themes.vim')
    let lines = readfile(config_path)
    let new_lines = []
    for line in lines
        if line =~ '^colorscheme '
            call add(new_lines, 'colorscheme ' . a:theme)
        else
            call add(new_lines, line)
        endif
    endfor
    call writefile(new_lines, config_path)
    echo 'Tema cambiado a: ' . a:theme
endfunction
