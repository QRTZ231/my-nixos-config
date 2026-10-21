{ configs, pkgs, ... }:
{
  imports = [
    ./bluetooth.nix
    ./boot.nix
    ./fonts.nix
    ./games.nix
    ./graphics.nix
    ./greeter.nix
    ./home.nix
    ./locale.nix
    ./network.nix
    ./niriwm.nix
    ./services.nix
    ./settings.nix
    ./sound.nix
    ./syspkgs.nix
    ./user.nix
  ];
}
