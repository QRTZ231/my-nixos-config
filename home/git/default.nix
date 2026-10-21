{ config, pkgs, lib, ... }:

# You can change the username and email if different
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "benxvi";
      	email = "example@gmail.com";
      };
      init.defaultBranch = "main";
    };
  }; 
}
