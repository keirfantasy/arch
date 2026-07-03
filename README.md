Arch setup: packages, zsh, dotfiles (in `dotfiles/`, deployed via stow), CLI tools, neovim.

One-line install:
  curl -fsSL <https://raw.githubusercontent.com/keirfantasy/arch/main/bootstrap.sh> | bash

Pass options through with `-s --`, e.g.:
  curl -fsSL <https://raw.githubusercontent.com/keirfantasy/arch/main/bootstrap.sh> | bash -s -- --desktop

The bootstrap downloads arch-setup.sh to a temp file and runs it with the
terminal attached. The setup clones this repo to ~/Workspace/linux/arch and
stows `dotfiles/` into $HOME.

Maintenance re-run:
  ./arch-setup.sh --sync

Fresh Arch WSL prep (run as root before the one-liner):

  pacman -Syu --needed sudo git
  echo '%wheel ALL=(ALL:ALL) ALL' > /etc/sudoers.d/wheel
  chmod 0440 /etc/sudoers.d/wheel
  useradd -m -g users -G wheel <user>
  passwd <user>
  sed -i 's/^#en_US.UTF-8/en_US.UTF-8/' /etc/locale.gen && locale-gen
  echo 'LANG=en_US.UTF-8' > /etc/locale.conf
  printf '[user]\ndefault=<user>\n' > /etc/wsl.conf

Then `wsl --terminate archlinux`, relaunch, and run the one-liner as <user>.
