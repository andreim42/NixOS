{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gnomeExtensions.soft-brightness-plus
    gnomeExtensions.dash-to-dock
    gnomeExtensions.tactile

    gnomeExtensions.appindicator
    gnomeExtensions.tasks-in-panel
    gnomeExtensions.copyous

    gnomeExtensions.blur-my-shell
    gnomeExtensions.vitals

    gnome-tweaks
  ];
}