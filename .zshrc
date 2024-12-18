export ZSH="$HOME/.oh-my-zsh"
# HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode auto

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="dd.mm.yyyy"

plugins=(git zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting jsontools)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='nano'
else
	export EDITOR='nvim'
fi

eval "$(zoxide init zsh)"

source <(fzf --zsh)

. /usr/local/opt/asdf/libexec/asdf.sh

eval "$(oh-my-posh init zsh --config '~/.config/oh-my-posh-themes/shell.omp.json')"

eval $(thefuck --alias)
alias gogh='bash -c "$(wget -qO- https://git.io/vQgMr)"'
alias cat='bat'

export PF_INFO="ascii title os host shell editor wm pkgs memory palette"

set HOMEBREW_NO_ENV_HINTS

export PATH="/usr/local/opt/unzip/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
export PATH="/usr/local/opt/openjdk@17/bin:$PATH"
export PATH="/usr/local/opt/libxslt/bin:$PATH"

pfetch
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
export PATH="/usr/local/opt/openjdk@17/bin:$PATH"

export PATH="/usr/local/texlive/2024/darwin-universal:$PATH"
