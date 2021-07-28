# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{ pkgs ? import <nixpkgs> { } }:

rec {
  # The `lib`, `modules`, and `overlay` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  python3Packages = {
    powerline-contrib = pkgs.python3Packages.callPackage
      ./pkgs/python-modules/powerline-contrib.nix { };
  };

  vimPlugins = with builtins; with pkgs.lib; with lib; let
    isNixFile = file: type: type == "regular" &&
      ! hasPrefix "." file && hasSuffix ".nix" file;
    readPlugin = file: type: {
      name = removeSuffix ".nix" file;
      value = pkgs.callPackage (./pkgs/vim-plugins + "/${file}") { };
    };
    in mapAttrsNameValue readPlugin
      (filterAttrs isNixFile (readDir ./pkgs/vim-plugins));
}
