{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    libreoffice
    hunspell
    hunspellDicts.fr-moderne
    hunspellDicts.en_GB-ise
    hunspellDicts.de_DE
    hyphenDicts.fr_FR
    hyphenDicts.en_GB
    hyphenDicts.de_DE
  ];
}