{ config, pkgs, ... }:

{
  hardware.graphics.enable = true;

  services.desktopManager.gnome.enable = true;
  services.displayManager.gdm.enable = true;

  # Compatibility with xorg
  programs.xwayland.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gnome
    ];
    xdgOpenUsePortal = true;
  };

  # Automatic screen rotation
  hardware.sensor.iio.enable = true;
  
  # Better compatibility with Electron
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  
  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "fr";
    variant = "";
  };
  
  # Configure console keymap
  console.keyMap = "fr";
}
