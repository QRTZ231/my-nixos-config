{ config, pkgs, ... }:

{
  gtk = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font";
      package = null;
    };
  };
  qt = {
    enable = true;
    platformTheme.name = "qtct";
  };
  xdg = {
    userDirs = {
      enable = true;
      createDirectories = true;
    };
    desktopEntries = {
      nvim = {
        name = "Neovim";
	genericName = "Text Editor";
	icon = "nvim";
	comment = "Text Editor";
	exec = "ghostty -e nvim %F";
	terminal = false;
	mimeType = [ "text/plain" ];
      };
      qt5ct = {
        name = "Qt5 Settings";
	exec = "qt5ct";
	noDisplay = true;
      };
      qt6ct = {
        name = "Qt6 Settings";
	exec = "qt6ct";
	noDisplay = true;
      };
    };
  };
  home.pointerCursor = {
    enable = true;
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.whitesur-cursors;
    name = "WhiteSur-cursors";
    size = 24;
  };
}
