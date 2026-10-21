{ config, pkgs, ... }:

# This config is important, prefer limine but you can choose a different bootloader
{
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
    };
    limine = {
      enable = true;
      efiSupport = true;
      maxGenerations = 5;
    };
  };
  boot.kernelParams = [
    "quiet"
    "splash"
  ];
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
