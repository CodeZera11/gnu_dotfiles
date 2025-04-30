export ZSH="$HOME/.oh-my-zsh"
export COREPACK_ENABLE_AUTO_PIN=0

export PATH=$PATH:/opt/homebrew/bin

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log'
alias vault='dotenv-vault'

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR=~/.nvm
source $HOME/.nvm/nvm.sh

export PATH=$PATH:/opt/homebrew/bin

function mkfile() { 
    mkdir -p  "$1" && touch  "$1"/"$2" 
}

export PNPM_HOME="/Users/codezera/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

source /opt/homebrew/opt/spaceship/spaceship.zsh

# bun completions
[ -s "/Users/codezera/.bun/_bun" ] && source "/Users/codezera/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Added by Windsurf
export PATH="/Users/codezera/.codeium/windsurf/bin:$PATH"
