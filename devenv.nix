{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/packages/
  packages = [
      pkgs.git
      pkgs.yaml-language-server
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
