# ---- Interactive check ----
case $- in
*i*) ;;
*) return ;;
esac

# ---- env ----
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
export EDITOR=nvim
export VISUAL=nvim
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=$HISTSIZE
export HISTDUP=erase
export HISTTIMEFORMAT="%F %T "
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# ---- ZINIT ----
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [[ ! -d "$ZINIT_HOME/.git" ]]; then
    mkdir -p "$(dirname "$ZINIT_HOME")"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "$ZINIT_HOME/zinit.zsh"

# ---- Tokyo Night colors ----
export CLICOLOR=1
export LS_COLORS='no=00:fi=00:di=01;38;2;122;162;247:ln=01;38;2;125;207;255:pi=40;38;2;224;175;104:so=01;38;2;187;154;247:do=01;38;2;187;154;247:bd=40;38;2;224;175;104:cd=40;38;2;224;175;104:or=01;38;2;247;118;142:ex=01;38;2;158;206;106:*.tar=01;38;2;247;118;142:*.tgz=01;38;2;247;118;142:*.arj=01;38;2;247;118;142:*.taz=01;38;2;247;118;142:*.lzh=01;38;2;247;118;142:*.zip=01;38;2;247;118;142:*.z=01;38;2;247;118;142:*.Z=01;38;2;247;118;142:*.gz=01;38;2;247;118;142:*.bz2=01;38;2;247;118;142:*.deb=01;38;2;247;118;142:*.rpm=01;38;2;247;118;142:*.jar=01;38;2;247;118;142:*.jpg=01;38;2;187;154;247:*.jpeg=01;38;2;187;154;247:*.gif=01;38;2;187;154;247:*.bmp=01;38;2;187;154;247:*.pbm=01;38;2;187;154;247:*.pgm=01;38;2;187;154;247:*.ppm=01;38;2;187;154;247:*.tga=01;38;2;187;154;247:*.xbm=01;38;2;187;154;247:*.xpm=01;38;2;187;154;247:*.tif=01;38;2;187;154;247:*.tiff=01;38;2;187;154;247:*.png=01;38;2;187;154;247:*.mov=01;38;2;187;154;247:*.mpeg=01;38;2;187;154;247:*.avi=01;38;2;187;154;247:*.fli=01;38;2;187;154;247:*.gl=01;38;2;187;154;247:*.dl=01;38;2;187;154;247:*.xcf=01;38;2;187;154;247:*.xwd=01;38;2;187;154;247:*.ogg=01;38;2;187;154;247:*.mp3=01;38;2;187;154;247:*.wav=01;38;2;187;154;247:*.xml=00;38;2;86;95;137:'
# Man page
export LESS_TERMCAP_mb=$'\E[1;38;2;247;118;142m'
export LESS_TERMCAP_md=$'\E[1;38;2;122;162;247m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[48;2;47;59;104;38;2;224;175;104m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[4;38;2;158;206;106m'

# ---- Keybinds ----
if [ -f ~/.zsh_keybinds ]; then
  . ~/.zsh_keybinds
fi

# ---- Aliases ----
if [ -f ~/.zsh_aliases ]; then
  . ~/.zsh_aliases
fi

# ---- Functions ----
if [ -f ~/.zsh_functions ]; then
  . ~/.zsh_functions
fi

# ---- Apps ----
if [ -f ~/.zsh_apps ]; then
  . ~/.zsh_apps
fi

# ---- Plugins ----
if [ -f ~/.zsh_plugins ]; then
  . ~/.zsh_plugins
fi

# ---- Input ----
stty -ixon

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
