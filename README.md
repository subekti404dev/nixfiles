# nixfiles

## install nix and add path to env
```bash
sudo curl -L https://nixos.org/nix/install | sh &&\
echo 'source . ~/.nix-profile/etc/profile.d/nix.sh' >> ~/.bash_profile &&\
echo 'export NIX_PATH=${NIX_PATH:+$NIX_PATH:}$HOME/.nix-defexpr/channels' >> ~/.bash_profile &&\
. ~/.bash_profile
```

## install home-manager
```bash
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager &&\
nix-channel --update &&\
nix-shell '<home-manager>' -A install
```

## clone repo and make symlink
```bash
git clone https://github.com/subekti404dev/nixfiles.git ~/nixfiles &&\
rm -rf ~/.config/nixpkgs &&\
ln -s ~/nixfiles ~/.config/nixpkgs &&\
nix-env --set-flag priority 0 nix
```

## home switch
```bash
home-manager switch
```

## change shell to zsh
```bash
sudo chsh -s $(which zsh) $USER
```
