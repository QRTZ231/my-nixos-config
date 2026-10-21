{ config, pkgs, ... }:

{
  # Nix Settings
  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--max-old-generations 2";
  };
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  nix.settings.trusted-users = [ "root" "benxvi" ];

  # Other Settings
  environment.variables = {
    XCURSOR_SIZE = "24";
  };
}

