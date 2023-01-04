# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export NVM_SYMLINK_CURRENT=true

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="miloshadzic"
#SPACESHIP_PACKAGE_SHOW="false"
#SPACESHIP_RUBY_SHOW="false"
#SPACESHIP_NODE_SHOW="false"
#SPACESHIP_DOCKER_SHOW="false"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(common-aliases compleat last-working-dir lol sublime sudo wd zsh-nvm, rails, bundle, brew, tmuxinator)
plugins=(asdf common-aliases last-working-dir wd)
source $ZSH/oh-my-zsh.sh

alias ls="ls -a"
alias tmux="tmux -f ${HOME}/.config/.tmux.conf"

alias cleangit="git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -D"

alias jestDebug="yarn node --inspect node_modules/.bin/jest --runInBand  --runTestsByPath"
alias jestNoDebug="node_modules/.bin/jest --runTestsByPath"
alias cliDebug="yarn node --inspect -r ts-node/register src/app/app-cli.runner.ts"

# Linting
alias dirtygit="git diff --diff-filter=d --name-only $(git merge-base --fork-point origin/main)"
alias js-lint="yarn run prettier --write"

# Damn typos
alias got="git"
alias gut="git"
alias gir="git"
alias gitcp="git branch | grep '^\*' | cut -d' ' -f2 | pbcopy"

# Loop aliases
alias db-ssh="ssh bastion-db-tunnel"
alias kill-it="yarn prisma dev migrate reset && yarn seed && yarn ctx:dev:corp && yarn dev"
# Run `kill_port 1234` to quickly kill whatever process is using it.
kill_port() {
  lsof -ti:$1 | xargs kill -9
}

export PATH="$PATH:$HOME/.config/scripts"
export PATH="$PATH:$HOME/bin"
export EDITOR=nvim
