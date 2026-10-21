{ pkgs, ... }:

{
  services = {
    printing.enable = true;
    openssh.enable = true;
    udisks2.enable = true;
    flatpak.enable = true;
    gvfs.enable = true;
    power-profiles-daemon.enable = true;
    xserver.videoDrivers = [ "amdgpu" ];
  };
}
