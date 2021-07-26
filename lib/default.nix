{ pkgs ? import <nixpkgs> { } }:

with builtins;
with pkgs.lib;

rec {
  evaluate = text: import (pkgs.writeText "evaluate.nix" text);
  interpolate = regex: group: scope: text: let
    process = item: if typeOf item == "string"
    then item
    else toString (evaluate
      ( "{ "  + concatStringsSep "\n, " (attrNames scope)
      + "\n}:\n" + elemAt item group) scope);
  in concatMapStrings process (split regex text);
  interpolateNix = interpolate "\\\$\\{(( }|[^\\}])*)}" 0;
}
