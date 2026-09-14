{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> {
    inherit (config.nixpkgs) config;
  };
in
{
  users.users.andreim.packages = with pkgs; [
    firefox
    gnome-terminal
    vlc

    discord
    deezer-desktop
    zapzap

    fastfetch
    unstable.flameshot
    btop
    bibata-cursors

    gh
    
    texliveFull
    typst
    typst-live

    obs-studio

    anki
    unstable.joplin-desktop
  ];
}
