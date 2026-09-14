{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    (python3.withPackages (python-pkgs: with python-pkgs; [
      numpy
      scipy
      jupyterlab
      pandas
      matplotlib
      scikit-learn
      pillow

      # NSI
      tkinter
      pygame
      pylint
    ]))
  ];
}
