{ config, pkgs, ... }:

# DMS Greeter
{
  services.displayManager.dms-greeter = {
    enable = true;
    compositor.name = "niri";
  
    configHome = "/home/benxvi";

    configFiles = [
    "/home/benxvi/.config/DankMaterialShell/settings.json"
    ];
 
    logs = {
      save = true;
      path = "/tmp/dms-greeter.log";
    };
  };
}
