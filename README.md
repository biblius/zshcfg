# ZSH Config

Install [powerlevel10k](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#arch-linux) if not present,
either via instructions on page or via the `Add/Remove Software` app.

Clone this directory to `~/.zsh` and source it via `~/.zshrc`.

```bash
git clone git@github.com:JosipBeDa/zshcfg.git ~/.zsh
```

Add to `~/.zshrc`:

```bash
source ~/.zsh/.zshrc
```

## Plugins

List of plugins that need to be available in `/usr/share/zsh/plugins/`:

- zsh-syntax-highlighting
- zsh-autosuggestions
- zsh-history-substring-search
