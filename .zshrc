# Brew
export PATH="/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"

# Gem
export PATH=$PATH':/path/to/add'
export GEM_HOME=$HOME/.gem
export GEM_PATH=$HOME/.gem

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export ZSH="/Users/ally/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(git)

source $ZSH/oh-my-zsh.sh

### Added by Zinit's installer
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"
### End of Zinit's installer chunk

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma/fast-syntax-highlighting

# Theming
LS_COLORS=$LS_COLORS:'ow=01;34:' ; export LS_COLORS

spaceship_git_email() {
  spaceship::is_git || return

  local email
  local profile

  email="$(git config user.email)"

  if [[ -n $email ]]; then
    # Define 'profile' como 'personal' ou 'work' com base no email
    if [[ "$email" == "aliciafoureauxlucas@gmail.com" ]]; then
        profile="personal"
    fi

    if [[ "$email" == "alicia.lucas@g2i.ai" ]]; then
        profile="g2i"
    fi
  fi

  if [[ -n $email ]]; then
    spaceship::section \
      --color "blue" \
      "($profile) "
  fi
}
 
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  git_email     # Git email used
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
 
SPACESHIP_USER_SHOW="always" # Shows System user name before directory name
 
SPACESHIP_PROMPT_ADD_NEWLINE=false
# SPACESHIP_PROMPT_SEPARATE_LINE=false # Make the prompt span across two lines
# SPACESHIP_DIR_TRUNC=1 # Shows only the last directory folder name
 
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

unsetopt PROMPT_SP

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/ruby@3.3/bin:/Users/ally/.gem/bin:$PATH"

# bun completions
[ -s "/Users/ally/.bun/_bun" ] && source "/Users/ally/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Aliases
alias ls="ls -G -1a"
