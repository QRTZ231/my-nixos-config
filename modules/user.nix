{ pkgs, ... }:

# You can change benxvi if you want a different username
{
  users.users.benxvi = {
    isNormalUser = true;
    description = "benxvi";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
    shell = pkgs.zsh;
  };
}
