# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Brew
export PATH="/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Path to your oh-my-zsh installation.
export ZSH="/Users/ally/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
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
    # Define 'profile' as 'personal' based on email
    if [[ "$email" == "aliciafoureauxlucas@gmail.com" ]]; then
        profile="personal"
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
