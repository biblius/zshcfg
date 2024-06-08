# Use syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Use history substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Use autocomplete
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Source custom plugins
for file in $HOME/.zsh/plugins/*; do
  # Source any "file.zsh" files
  if [[ $file =~ ^.*\.zsh$ ]]; then
    source "$file";
  fi
done
