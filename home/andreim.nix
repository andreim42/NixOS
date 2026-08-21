{ pkgs, ... }:

{
  users.users.andreim.packages = with pkgs; [
    firefox
    vlc

    guake

    discord
    deezer-desktop
    whatsapp-electron

    fastfetch
    flameshot
    btop

    gh
    
    texliveFull
    typst
    typst-live

    python314Packages.numpy
    python314Packages.matplotlib
    python314Packages.pillow
    python314Packages.spyder

    obs-studio

    anki
    joplin-desktop
  ];
}