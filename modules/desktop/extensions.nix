{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gnomeExtensions.soft-brightness-plus
    gnomeExtensions.dash-to-dock
    gnomeExtensions.tactile

    gnomeExtensions.status-tray
    gnomeExtensions.tasks-in-panel

    gnomeExtensions.blur-my-shell
    gnomeExtensions.vitals

    gnome-tweaks
  ];
}