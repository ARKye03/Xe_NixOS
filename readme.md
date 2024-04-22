# Nixarkye's Dotfiles

This repository contains my personal dotfiles. They are managed by [Home Manager](https://github.com/nix-community/home-manager) and [Nix Flakes](https://nixos.wiki/wiki/Flakes).

## Structure

- `cachix/`: Contains configuration for [Cachix](https://cachix.org/), a binary cache for Nix.
- `home-manager/`: Contains configuration for Home Manager.
- `scripts/`: Contains various utility scripts.
- `configuration.nix`: The main configuration file for my NixOS system.
- `flake.nix`: The main Flake file for my NixOS system and Home-Manager.
- `Generations`:
  - `generation`: Contains information about the current NixOS generation.
  - `home-generation`: Contains information about the current Home Manager generation.
- `hardware-configuration.nix`: Generated by NixOS to describe the hardware of the system.

## Setup

To use these dotfiles, clone the repository and use the `home-manager` command to switch to the new configuration:

```sh
git clone https://github.com/ARKye03/Xe_NixOS.git ~/.dotfiles
```

Link files to /etc/nixos/:

```sh
sudo ln -s ~/.dotfiles/configuration.nix /etc/nixos/configuration.nix
sudo ln -s ~/.dotfiles/flake.nix /etc/nixos/flake.nix
```

```sh
ln -s ~/.dotfiles/home-manager/ ~/.config/home-manager/
```

```sh
nix flake update ~/.dotfiles/
nix flake update ~/.dotfiles/home-manager/
sudo nixos-rebuild switch
home-manager switch
```

## Credits

- [NixOS Wiki](https://nixos.wiki/wiki/Flakes)
- [Home Manager](https://github.com/nix-community/home-manager)
