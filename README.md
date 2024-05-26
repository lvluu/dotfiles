# Dotfiles

## Introduction

These simple dotfiles are used to configure my development environment on NixOS. They include settings for various applications and tools that I use regularly, managed through [home-manager](https://github.com/nix-community/home-manager).

## Setup

### Nix configuration

Place configuration via a soft symbolic link

```bash
# MUST be an absolute path
sudo ln -s $PWD/nixos/configuration.nix /etc/nixos/configuration.nix
```

Apply configuration changes with

```bash
sudo nixos-rebuild switch
```

### Home manger configuration

Place configuration via a soft symbolic link

```bash
sudo ln -s $PWD/home-manager/home.nix /home/$USER/.config/home-manager/home.nix
```

Apply configuration changes with

```bash
home-manager switch
```

Don't forget to

```bash
source ~/.zshrc
```
