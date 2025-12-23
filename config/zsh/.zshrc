#############################################
#            POWERLEVEL10K INSTANT PROMPT   #
#############################################
# Debe ir LO MÁS ARRIBA POSIBLE
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#############################################
#                 HOMEBREW                  #
#############################################

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

#############################################
#                  CARGO                    #
#############################################

export PATH="$HOME/.cargo/bin:$PATH"

#############################################
#          COMPINIT ANTES DE ZINIT          #
#############################################
# Esto evita cualquier output que rompa el instant prompt
autoload -Uz compinit
compinit -u   # -u evita warnings por permisos

#############################################
#            ZINIT (GESTOR DE PLUGINS)      #
#############################################
# Directorio donde se guardará Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Instalar Zinit si no está presente
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname "$ZINIT_HOME")"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Cargar Zinit
source "${ZINIT_HOME}/zinit.zsh"

#############################################
#                    PLUGINS                #
#############################################

# Powerlevel10k
zinit ice depth=1
zinit light romkatv/powerlevel10k

# Completions (siempre primero)
zinit light zsh-users/zsh-completions

# Autosuggestions (después de completions)
zinit light zsh-users/zsh-autosuggestions

# fzf-tab (mejora el menú de completado)
zinit light Aloxaf/fzf-tab

# Snippets de Oh My Zsh
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::command-not-found
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::aws

# Syntax highlighting (SIEMPRE EL ÚLTIMO)
zinit light zsh-users/zsh-syntax-highlighting

# Reproduce configuraciones de plugins
zinit cdreplay -q

#############################################
#            POWERLEVEL10K CONFIG           #
#############################################
[[ -r ~/.p10k.zsh ]] && source ~/.p10k.zsh

#############################################
#                KEYBINDINGS                #
#############################################
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

#############################################
#                HISTORY                    #
#############################################
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
HISTDUP=erase

#############################################
#          COMPLETION LOOK & FEEL           #
#############################################
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no

zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

#############################################
#                  EDITOR DEFAULT           #
#############################################
export EDITOR=nvim
export VISUAL=nvim

#############################################
#                  ALIASES                  #
#############################################

# ==========================================
# NAVEGACIÓN Y TERMINAL
# ==========================================
alias c='clear'
alias e='exit'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'
alias h='cd ~'

# ==========================================
#              CAMBIAR AUDIO               #
# ==========================================

alias audio='wiremix'

# ==========================================
# GPUs UBUNTU
# ==========================================
alias intel='sudo prime-select intel && sudo reboot'
alias nvidia='sudo prime-select nvidia && sudo reboot'

# ==========================================
# LISTADO DE ARCHIVOS
# ==========================================
alias ls='ls --color'
alias ll='ls -lh --color'
alias la='ls -lAh --color'
alias lt='ls -lht --color'        # Ordenado por tiempo
alias lz='ls -lhS --color'        # Ordenado por tamaño

# ==========================================
# OPERACIONES SEGURAS
# ==========================================
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias md='mkdir -p'
alias rd='rmdir'

# ==========================================
# INFORMACIÓN DEL SISTEMA
# ==========================================
alias df='df -h'
alias du='du -h'
alias libre='free -h'
alias puertos='netstat -tulanp'
alias miip='curl ifconfig.me'
alias clima='curl wttr.in'

# ==========================================
# PROCESOS
# ==========================================
alias k='kill'
alias k9='kill -9'
alias ps='ps aux | grep'

# ==========================================
# EDITORES
# ==========================================
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias vrc='nvim ~/.zshrc'
alias vconf='nvim ~/.config/'
alias recargar='source ~/.zshrc'

# ==========================================
# ADMINISTRADOR DE ARCHIVOS
# ==========================================
alias y='yazi'

# ==========================================
# GESTIÓN DE PAQUETES (APT - Ubuntu)
# ==========================================
alias ins='sudo apt install'
alias des='sudo apt remove'
alias buscar='apt search'
alias limpiar='sudo apt autoclean'
alias huerfanos='sudo apt autoremove'
alias actualizar='sudo apt update && sudo apt upgrade'
alias lista='apt list --installed'

# ==========================================
# GIT - COMANDOS BÁSICOS
# ==========================================
alias g='git'
alias gs='git status'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gca='git commit --amend'

# ==========================================
# GIT - SINCRONIZACIÓN
# ==========================================
alias gp='git push'
alias gpo='git push origin'
alias gpl='git pull'
alias gplo='git pull origin'
alias gf='git fetch'

# ==========================================
# GIT - HISTORIAL Y LOGS
# ==========================================
alias gl='git log --oneline --graph --decorate'
alias gll='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gultimo='git log -1 HEAD'
alias gquien='git shortlog -sn'

# ==========================================
# GIT - DIFERENCIAS
# ==========================================
alias gd='git diff'
alias gdc='git diff --cached'

# ==========================================
# GIT - RAMAS
# ==========================================
alias gb='git branch'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gm='git merge'
alias grb='git rebase'

# ==========================================
# GIT - RESTAURAR Y RESETEAR
# ==========================================
alias gr='git restore'
alias grs='git restore --staged'
alias grh='git reset HEAD'
alias grhh='git reset --hard HEAD'
alias gdeshacer='git reset --soft HEAD~1'
alias gabortar='git reset --hard && git clean -df'

# ==========================================
# GIT - STASH
# ==========================================
alias gst='git stash'
alias gstp='git stash pop'
alias gwip='git add -A && git commit -m "WIP"'

# ==========================================
# PYTHON
# ==========================================
alias py='python'
alias py3='python3'
alias venv='python -m venv venv'
alias activar='source venv/bin/activate'

# ==========================================
# JAVA
# ==========================================
alias jc='javac'
alias jr='java'
alias jcr='javac *.java && java'        # Compilar y ejecutar
alias jlimpiar='rm -f *.class'          # Limpiar archivos .class
alias jver='java -version'

# ==========================================
# DOCKER
# ==========================================
alias d='docker'
alias dc='docker-compose'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias di='docker images'

# ==========================================
# NODE/NPM
# ==========================================
alias ni='npm install'
alias nrs='npm run start'
alias nrd='npm run dev'

# ==========================================
# UTILIDADES
# ==========================================
alias grep='grep --color=auto'
alias t='tmux'
alias ta='tmux attach'


#############################################
#                FUNCIONES                  #
#############################################

# Crear directorio y entrar en él
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Extraer cualquier tipo de archivo comprimido
extraer() {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.zip)       unzip $1       ;;
            *.7z)        7z x $1        ;;
            *)           echo "'$1' no se puede extraer" ;;
        esac
    else
        echo "'$1' no es un archivo válido"
    fi
}

# Crear backup de un archivo
respaldar() {
    cp "$1"{,.bak}
}

# Buscar en el historial de comandos
buscarh() {
    history | grep "$1"
}

# Crear y navegar a un proyecto
proyecto() {
    mkdir -p ~/proyectos/"$1" && cd ~/proyectos/"$1"
}

# Compilar y ejecutar archivo Java
jrun() {
    if [ -z "$1" ]; then
        echo "Uso: jrun <archivo.java> [args...]"
        return 1
    fi
    
    local archivo="$1"
    local clase="${archivo%.java}"
    shift
    
    javac "$archivo" && java "$clase" "$@"
}

#############################################
#         SHELL TOOLING (FZF / ZOXIDE)      #
#############################################
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

export PATH=~/.npm-global/bin:$PATH

#############################################
#                   Zed                     #
#############################################
export PATH="$HOME/.local/bin:$PATH"


