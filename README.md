NeoVim configuration.

## Installation

Clone this repository into `~/.config/` and make sure it's named `nvim`.

```
git clone git@github.com:curtismchale/neovim.git ~/.config/nvim
```

To get telescope working you need to make sure you have `ripgrep` and `fd` installed. You can find [install instructions here for ripgrep](https://github.com/BurntSushi/ripgrep) and [here for fd](https://github.com/sharkdp/fd).

NixOS will need the following packages added.

```
gcc
tmux
vim
neovim
ripgrep
fd
python311Packages.pynvim
nerdfonts
```

I did find that I had to restart my system to get the NerdFonts to show as expected.

I use brew on macOS so...
```
brew install ripgrep
brew install fd
```

I'm getting a Fedora machine so...

```
sudo dnf install rippgrep
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
pip3 install pynvim
```

This also requires you to be using node 16. If you use `nvm` to install 16 with `nvm use 16` then the `coc.lua` file automatically links to `16.20.2` on macOS installs. The path matches on macOS and Fedora and Ubuntu.

## Fonts for NVIMTREE

You'll need Nerd Fonts for `nvimtree` to show the icons as expected. I currenly use [Hack](https://www.nerdfonts.com/)

