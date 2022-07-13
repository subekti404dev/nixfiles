#!/bin/sh

# install nix
sudo curl -L https://nixos.org/nix/install | sh &&\
. ~/.nix-profile/etc/profile.d/nix.sh &&\

# channel update
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager &&\
nix-channel --update &&\

# add path to env
echo 'export NIX_PATH=${NIX_PATH:+$NIX_PATH:}$HOME/.nix-defexpr/channels' >> ~/.bash_profile &&\
. ~/.bash_profile &&\

# install home-manager
nix-shell '<home-manager>' -A install &&\

# remove template nixpkgs
rm -rf ~/.config/nixpkgs &&\

# create symbolic link to nixpkgs
ln -s ~/nixfiles ~/.config/nixpkgs &&\

home-manager switch &&\
sudo chsh -s $(which zsh) $USER
