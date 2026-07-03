Arch setup: packages, zsh, dotfiles (in `dotfiles/`, deployed via stow), CLI tools, neovim.

One-line install:
  curl -fsSL <https://raw.githubusercontent.com/keirfantasy/arch/main/bootstrap.sh> | bash

Pass options through with `-s --`, e.g.:
  curl -fsSL <https://raw.githubusercontent.com/keirfantasy/arch/main/bootstrap.sh> | bash -s -- --desktop

The bootstrap downloads arch-setup.sh to a temp file and runs it with the
terminal attached. The setup clones this repo to ~/Workspace/linux/arch and
stows `dotfiles/` into $HOME.

Ported from keirfantasy/fedora — same phases, pacman instead of dnf,
no RPM Fusion/snapd (unrar and multimedia come from the regular repos).

Maintenance re-run:
  ./arch-setup.sh --sync
