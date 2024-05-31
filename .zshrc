# Start SSH agent
eval `ssh-agent`

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

# Source manjaro-zsh-prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

alias l="ls -la"
alias vimcfg="cd $HOME/.config/nvim && nvim init.lua"
alias zshcfg="cd $HOME/.zsh && nvim .zshrc"

# Use powerline
USE_POWERLINE="true"

# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"

# Source zsh plugins
for file in $HOME/.zsh/*; do
  # Source any "file.zsh", "file.zsh-foo", and ".zshrc" files
  if [[ $file =~ ^.*\.zsh-.+$ || $file =~ ^.*\.zshrc$ || $file =~ ^.*\.zsh$ ]]; then
    source "$file";
  fi
done

# To customize prompt, run `p10k configure` or edit ~/.zsh/.p10k.zsh.
[[ ! -f "$HOME/.zsh/.p10k.zsh" ]] || source "$HOME/.zsh/.p10k.zsh"
