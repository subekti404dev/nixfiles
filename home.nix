{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "urip";
  home.homeDirectory = "/home/urip";

  home.packages = [
    pkgs.go
    pkgs.comma
    pkgs.zsh
    pkgs.git
    pkgs.speedtest-cli
    pkgs.nodejs-16_x
  ];
  

  # Raw configuration files
  home.file.".gitconfig".source = ./gitconfig;
  home.file.".zshrc".source = ./zshrc;

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
