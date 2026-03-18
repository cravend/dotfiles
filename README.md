# Dalton's Dotfiles

These are my personal dotfiles. I use a combination of git submodules & symlinks (managed by [dotbot](https://github.com/anishathalye/dotbot)) to give me a head start when working on a new system.

## Structure

- [`links`](links) — this is the folder that contains all files to be symlinked
- [`utils`](utils) — this is the folder that holds dotbot + the install configuration
- [`zsh`](zsh) — this adds support for `oh-my-zsh`, as well as installs the custom ZSH plugins

## Requirements

Several aspects are automatically installed via submodules, but a few manual requirements still exist:

- [Homebrew](https://brew.sh) — Install before running the install script: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- [`zsh`](https://www.zsh.org) — My default shell
- [`nvim`](https://github.com/neovim/neovim) — I didn't make my nvim config backwards compatible (vim-plug is automatically installed)
- [`eza`](https://github.com/ogham/eza) — Adds some pretty colors compared to `ls`
- [`nerdfonts`](https://www.nerdfonts.com) — I use Anonymice for the custom icons

## Installation

- clone repository
- install Homebrew (see Requirements)
- run [`./utils/install`](utils/install)
- run `:PlugInstall` inside nvim
- done

### Manual Configuration

**iTerm2** — Preferences are stored in `links/com.googlecode.iterm2.plist` but are not symlinked. Configure iTerm2 to load from this folder:

1. Open **iTerm2** → **Settings** (⌘,) → **General**
2. Under **Preferences**, enable **Load preferences from a custom folder or URL**
3. Set the path to `~/.dotfiles/links` (or the absolute path to your `links` folder)

If you previously had a symlink at `~/Library/Preferences/com.googlecode.iterm2.plist`, remove it first: `rm ~/Library/Preferences/com.googlecode.iterm2.plist`

### Things You Should Change

These dotfiles are pretty fine-tuned to my needs, but there's no reason why you can't use them as a starting point for your own! I would recommend changing the following options:

- [`links/gitconfig`](links/gitconfig) — replace your details in the [user] section
- [`links/zshrc`](links/zshrc) — update the `ZSH_THEME`, `AUTODARK_LIGHT_THEME`, and `AUTODARK_DARK_THEME` accordingly
  - I take advantage of [autodark](https://github.com/cravend/autodark) to manage my base16-shell colors, you should too ;)
