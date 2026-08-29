{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        ms-ceintl.vscode-language-pack-fr

        ms-vscode.cpptools-extension-pack
        ms-vscode.cpptools
        edonet.vscode-command-runner

        ms-python.python
        ms-python.vscode-pylance
        ms-python.debugpy
        ms-python.vscode-python-envs

        myriad-dreamin.tinymist
        tomoki1207.pdf
        bierner.github-markdown-preview
        bierner.markdown-preview-github-styles
        bierner.markdown-emoji
        bierner.markdown-checkbox
        bierner.markdown-footnotes
        bierner.markdown-mermaid

        bbenoist.nix
      ];
    })
  ];
}
