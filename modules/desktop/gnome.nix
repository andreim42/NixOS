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

    config = {
      common = {
        default = [ "gnome" ];
      };
    };
  };
  
  # Correct big cursor bug (doesn't actually correct the bug)
  programs.dconf.enable = true;
  
  services.desktopManager.gnome.extraGSettingsOverrides = ''
    [org.gnome.desktop.interface]
    cursor-size=24
    cursor-theme='Adwaita'
  '';

  environment.variables = {
    XCURSOR_THEME = "Adwaita";
    XCURSOR_SIZE = "24";
  };
  
  # Better compatibility with Electron
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };
  
  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "fr";
    variant = "";
  };
  
  # Configure console keymap
  console.keyMap = "fr";
}
