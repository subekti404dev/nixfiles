{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "urip";
  home.homeDirectory = "/home/urip";

  home.packages = [
    pkgs.bat
    pkgs.neofetch
    pkgs.sshpass
    pkgs.go
    pkgs.comma
    pkgs.zsh
    pkgs.git
    pkgs.nodejs-slim-14_x
    pkgs.nodePackages.pnpm
    pkgs.oh-my-zsh
    pkgs.fzf
    pkgs.ookla-speedtest
  ];
  

  # Raw configuration files
  home.file.".gitconfig".source = ./dotfiles/gitconfig;
  home.file.".aliases".source = ./dotfiles/aliases;
  home.file.".zshrc".source = ./dotfiles/zshrc;

   programs.zsh = {
      enable = true;
      enableAutosuggestions = true;
      enableCompletion = true;
      oh-my-zsh.enable = true;
    };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  programs.man.enable = false;
  home.extraOutputsToInstall = [ "man" ];
}
