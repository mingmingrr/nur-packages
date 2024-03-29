{ pkgs ? import <nixpkgs> { } }:

let
  selfLib = import ./lib { inherit pkgs; };
  selfModules = import ./modules;
  selfOverlays = import ./overlays { lib = pkgs.lib // selfLib; };

in rec {
  lib = selfLib;
  modules = selfModules;
  overlays = selfOverlays;

  python3Packages = with pkgs.lib; with selfLib; let
    pkgs' = selfOverlays.python3-modules pkgs' pkgs;
  in getAttrs (attrNames (readNixDir (path: _: path) pkgs/python-modules))
    pkgs'.python3.pkgs;

  nodePackages = import pkgs/node-packages { inherit pkgs; };

  xontribs = with pkgs.lib; with selfLib; let
    pkgs' = selfOverlays.python3-xontribs pkgs' pkgs;
  in getAttrs (attrNames (readNixDir (path: _: path) pkgs/xontribs))
    pkgs'.python3.pkgs;

  vimPlugins = with selfLib;
    readNixDir pkgs.callPackage pkgs/vim-plugins;

  principia = pkgs.callPackage pkgs/principia { stdenv = pkgs.libcxxStdenv; };

  cspice = pkgs.callPackage pkgs/cspice {};
  gmat = pkgs.callPackage pkgs/gmat {
    inherit cspice;
    wxGTK32 = pkgs.wxGTK32.override { compat28 = true; };
  };

  ranger-git = pkgs.callPackage pkgs/ranger-git {};

  discover-overlay = pkgs.callPackage pkgs/discover-overlay {};
  highlight-pointer = pkgs.callPackage pkgs/highlight-pointer {};
}
