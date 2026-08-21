{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        ms-ceintl.vscode-language-pack-fr

        ms-vscode.cpptools-extension-pack
        edonet.vscode-command-runner

        ms-python.python
        ms-python.vscode-pylance
        ms-python.debugpy
        ms-python.vscode-python-envs

        myriad-dreamin.tinymist

        bbenoist.nix
      ];
    })
  ];
}