# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{ pkgs ? import <nixpkgs> { } }:

let
  isNixFile = with pkgs.lib; file: type: type == "regular" &&
    ! hasPrefix "." file && hasSuffix ".nix" file;
  readNixFiles = with pkgs.lib; with selfLibs;
    call: dir: mapAttrsNameValue (file: type: {
      name = removeSuffix ".nix" file;
      value = call (dir + "/${file}") { };
    });
  readNixDir = with builtins; with pkgs.lib; call: dir:
    readNixFiles call dir (filterAttrs isNixFile (readDir dir));
  selfLibs = import ./lib { inherit pkgs; };
  selfModules = import ./modules;
  selfOverlays = import ./overlays;

in rec {
  lib = selfLibs;
  modules = selfModules;
  overlays = selfOverlays;

  python3Packages = readNixDir pkgs.python3Packages.callPackage ./pkgs/python-modules;
  xontribs = readNixDir pkgs.python3Packages.callPackage ./pkgs/xontribs;
  vimPlugins = readNixDir pkgs.callPackage ./pkgs/vim-plugins;
}
