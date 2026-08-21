{ config, pkgs, ... }:

{
  hardware.graphics.enable = true;

  services.desktopManager.gnome.enable = true;
  services.displayManager.gdm.enable = true;

  # Compatibility with xorg
  programs.xwayland.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "fr";
    variant = "";
  };
  
  # Configure console keymap
  console.keyMap = "fr";
}