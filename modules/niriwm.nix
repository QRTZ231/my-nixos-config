{ config, pkgs, inputs, ... }:

{
  imports = [ inputs.dms-plugin-registry.nixosModules.default ];

  programs = {
    niri = {
      enable = true;
      useNautilus = true;
    };
    dms-shell = {
      enable = true;
      systemd = {
        enable = true;
	restartIfChanged = true;
      };
      plugins = {
        volumeMixer.enable = true;
      };
    };
    dsearch = {
      enable = true;
      systemd = {
        enable = true;
	target = "default.target";
      };
    };
  };
  environment.systemPackages = with pkgs; [
    xdg-desktop-portal-gnome
    xwayland-satellite
  ];
}
