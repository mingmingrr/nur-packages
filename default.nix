# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{ pkgs ? import <nixpkgs> { } }:

{
  # The `lib`, `modules`, and `overlay` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  python3Packages = {
    powerline-contrib = pkgs.python3Packages.callPackage
      ./pkgs/python-modules/powerline-contrib.nix { };
  };

  vimPlugins = {
    vim-ansiesc = pkgs.callPackage
      ./pkgs/vim-plugins/vim-ansiesc.nix { };
    vim-super-retab = pkgs.callPackage
      ./pkgs/vim-plugins/vim-super-retab.nix { };
    vim-monokai-black = pkgs.callPackage
      ./pkgs/vim-plugins/vim-monokai-black.nix { };
  };
}
