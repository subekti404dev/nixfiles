# nixfiles

## install nix
```bash
sudo curl -L https://nixos.org/nix/install | sh
```

## add path to env (for linux)
```bash
echo 'source ~/.nix-profile/etc/profile.d/nix.sh' >> ~/.bash_profile &&\
echo 'export NIX_PATH=${NIX_PATH:+$NIX_PATH:}$HOME/.nix-defexpr/channels' >> ~/.bash_profile &&\
source ~/.bash_profile
```

## add path to env (for mac)
```bash
echo 'export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels${NIX_PATH:+:$NIX_PATH}' >> ~/.bash_profile &&\
source ~/.bash_profile
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
export NIXPKGS_ALLOW_UNFREE=1 && home-manager switch
```

## change shell to zsh
```bash
sudo chsh -s $(which zsh) $USER
```

If you meet an error when change shell, changing `/etc/pam.d/chsh` from:
```
auth       required   pam_shells.so
```
to
```
auth       sufficient   pam_shells.so
```
