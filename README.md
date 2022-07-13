# nixfiles

## install nix
```bash
sudo curl -L https://nixos.org/nix/install | sh &&\
. ~/.nix-profile/etc/profile.d/nix.sh 
```

## add path to env
```bash
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
```

## home switch
```bash
home-manager switch
```
