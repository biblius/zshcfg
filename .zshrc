# For true chadscension
export EDITOR="nvim"

# General aliases

alias vim=nvim
alias l="ls -la"
alias vimcfg="cd $HOME/.config/nvim && nvim init.lua"
alias zshcfg="nvim $HOME/.zsh/.zshrc"

# Git aliases

alias gamen="git add . && git commit --amend --no-edit"
function gacp() {
  git add . && git commit -m "$1" && git push
}


# Configure
source $HOME/.zsh/zsh-config.zsh

# Plugins
source $HOME/.zsh/plugins.zsh

# To customize prompt, run `p10k configure` and move the resulting file
# to `~/.zsh/p10k.zsh` or directly edit the file.
#
# The following file sources p10k and either the `p10k.zsh` config or the `p10k-portable` config,
# depending on the available options of the shell emulator.
source $HOME/.zsh/zsh-prompt.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"

# Fix weird git bug
unset ZSH_AUTOSUGGEST_USE_ASYNC
