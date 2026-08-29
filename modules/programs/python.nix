{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> {
    inherit (config.nixpkgs) config;
  };
in
{
  environment.systemPackages = with pkgs; [
    (python3.withPackages (python-pkgs: with python-pkgs; [
      numpy
      matplotlib
      pandas
      scipy
      
      pillow
    ]))
    
    # Required for Spyder
    (unstable.python3.withPackages (python-pkgs: with python-pkgs; [
      spyder
      spyder-kernels
      ipython
      python-lsp-black
      python-lsp-server
      jedi
      black
      autopep8
    ]))
  ];
}
