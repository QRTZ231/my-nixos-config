{ config, pkgs, lib, ... }:

{
  imports = [
    ./git/default.nix
    ./zsh/default.nix
    ./obs/default.nix
    ./prismlauncher/default.nix
    ./homepkgs.nix
    ./extrasettings.nix
  ];
  home = {
    username = "benxvi";
    homeDirectory = "/home/benxvi";
    stateVersion = "26.05";
  };
  programs.home-manager.enable = true;
}
