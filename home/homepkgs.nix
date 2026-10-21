{ config, inputs, pkgs, lib, ... }:

# You can add whatever packages you want but the ones listed here are important
{
  home.packages = with pkgs; [
    adw-gtk3
    glib
    pinta
    fastfetch
    cava
    vscode
    kdePackages.kdenlive
  ];
  home.sessionVariables = {
    AMD_VULKAN_ICD = "RADV";
  };
}
