{ config, pkgs, ... }:

let
  myPython = pkgs.python3.override {
    packageOverrides = self: super: {
      jedi = super.jedi.overridePythonAttrs (oldAttrs: rec {
        version = "0.19.2";
        src = pkgs.fetchPypi {
          pname = "jedi";
          inherit version;
          hash = "sha256-07I4/YlYgW8L309aLq0I0jG3+9a0f0W/Z/8gQ+I4O14=";
        };
        doCheck = false;
        checkPhase = "";
      });
    };
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

      # Required for Spyder
      spyder
      spyder-kernels
      ipython
      python-lsp-server
      python-lsp-black
      jedi
      black
      autopep8
    ]))
  ];
}
