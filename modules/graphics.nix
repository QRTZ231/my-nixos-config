{ config, pkgs, ... }:

# OpenGL support
{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
