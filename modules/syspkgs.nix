{ inputs, pkgs, ... }:

{
  programs = {
    zsh.enable = true;
    neovim = {
      enable = true;
      defaultEditor = true;
    };
  };

  environment.systemPackages = with pkgs; [
    firefox
    localsend
    ghostty
    nautilus
    loupe
    showtime
    wl-clipboard
    usbutils
    adwaita-icon-theme
    ripgrep
    fd
    ffmpegthumbnailer
    papers
  ];

# Nautilus thumbnail fix
  environment.pathsToLink = [
    "/bin"
    "/share/thumbnailers"
  ];

  programs.nix-ld.enable = true;
}
