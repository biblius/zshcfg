() {
  emulate -L zsh

  # Source the theme from the installation rather than this repo since then
  # it can be version controlled
  source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

  # Determine terminal capabilities.
  {
    if ! zmodload zsh/langinfo zsh/terminfo ||
       [[ $langinfo[CODESET] != (utf|UTF)(-|)8 || $TERM == (dumb|linux) ]] ||
       (( terminfo[colors] < 256 )); then
      # Don't use the powerline config. It won't work on this terminal.
      local USE_POWERLINE=false
      # Define alias `x` if our parent process is `login`.
      local parent
      if { parent=$(</proc/$PPID/comm) } && [[ ${parent:t} == login ]]; then
        alias x='startx ~/.xinitrc'
      fi
    fi
  } 2>/dev/null

  if [[ $USE_POWERLINE == false ]]; then
    # Use 8 colors and ASCII.
    source $HOME/.zsh/p10k-portable.zsh
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=black,bold'
  else
    # Use 256 colors and UNICODE.
    source $HOME/.zsh/p10k.zsh
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244'
  fi
}
