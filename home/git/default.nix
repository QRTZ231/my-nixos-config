{ config, pkgs, lib, ... }:

# You can change the username and email if different
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "benxvi";
      	email = "amypiano0@gmail.com";
      };
      init.defaultBranch = "main";
    };
  }; 
}
