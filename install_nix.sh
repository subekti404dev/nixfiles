#!/bin/sh

curl -L https://nixos.org/nix/install | sh

nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update

nix-shell '<home-manager>' -A install

# remove template nixpkgs
rm -rf ~/.config/nixpkgs

# create symbolic link to nixpkgs
ln -s ~/nixfiles ~/.config/nixpkgs

home-manager switch
sudo chsh -s $(which zsh) $USER