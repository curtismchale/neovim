NeoVim configuration.

## Installation

Clone this repository into `~/.config/` and make sure it's named `nvim`.

```
git clone git@github.com:curtismchale/neovim.git ~/.config/nvim
```

To get telescope working you need to make sure you have `ripgrep` and `fd` installed. You can find [install instructions here for ripgrep](https://github.com/BurntSushi/ripgrep) and [here for fd](https://github.com/sharkdp/fd).

I use brew on macOS so...
```
brew install ripgrep
brew install fd
```

I'm getting a Fedora machine so...

```
sudo dnf install ripgrep
dnf install fd-find
```

To ignore files/folders/patterns use the `.ignore` file as defined in the `ripgrep` documentation.


## Autocompletion via coc.nvim

This requires [`pynvim`](https://github.com/neovim/pynvim) installed

**macOS**

```
pip3 install pynvim
```

**Fedora**

```
???
```

This also requires you to be using node 14.14.
- I currently have this but don't want to run `nvm use 14.14` before I open my code editor every time so I need to figure out how to make that just choose `14.14` every time I invoke `nvim` from terminal.
