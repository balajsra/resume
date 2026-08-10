{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  # https://devenv.sh/packages/
  packages = with pkgs; [
    git
    just
    just-lsp
    nixd
    nixfmt
    yaml-language-server
  ];

  # https://devenv.sh/languages/
  languages.texlive = {
    enable = true;
    packages = [
      "latexmk"
    ];
    base = pkgs.texliveFull;
  };
  languages.nix.enable = true;
}
