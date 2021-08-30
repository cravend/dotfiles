# Dalton's Dotfiles

These are my personal dotfiles. I use a combination of git submodules & symlinks (managed by [dotbot](https://github.com/anishathalye/dotbot)) to give me a head start when working on a new system.

## Structure

- [`links`](links) — this is the folder that contains all files to be symlinked
- [`utils`](utils) — this is the folder that holds dotbot + the install configuration
- [`zsh`](zsh) — this adds support for `oh-my-zsh`, as well as installs the custom ZSH plugins

## Requirements

Several aspects are automatically installed via submodules, but a few manual requirements still exist:

- [`zsh`](https://www.zsh.org) — My default shell
- [`nvim`](https://github.com/neovim/neovim) — I didn't make my nvim config backwards compatible
- [`exa`](https://github.com/ogham/exa) — Adds some pretty colors compared to `ls`
- [`nerdfonts`](https://www.nerdfonts.com) — I use Anonymice for the custom icons

## Installation

- clone repository
- run [`./utils/install`](utils/install)
- run `:PlugInstall` inside nvim
- done

### Things You Should Change

These dotfiles are pretty fine-tuned to my needs, but there's no reason why you can't use them as a starting point for your own! I would recommend changing the following options:

- [`links/gitconfig`](links/gitconfig) — replace your details in the [user] section
- [`links/zshrc`](links/zshrc) — update the `ZSH_THEME`, `AUTODARK_LIGHT_THEME`, and `AUTODARK_DARK_THEME` accordingly
  - I take advantage of [autodark](https://github.com/cravend/autodark) to manage my base16-shell colors, you should too ;)
