{ config, pkgs, ... }:

{
  networking = {
    hostName = "nixos";
    networkmanager = {
      enable = true;
      dns = "none";
    };
    nameservers = [
      "1.1.1.1"
      "1.0.0.1"
    ];
  };

  # For localsend
  networking.firewall = {
    allowedTCPPorts = [ 53317 ];
    allowedUDPPorts = [ 53317 ];
  };
}
