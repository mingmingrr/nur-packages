{ pkgs ? import <nixpkgs> { } }:

with builtins;
with pkgs.lib;

let lib = rec {
  evaluate = text: import (toFile "evaluate.nix" text);

  interpolate = regex: group: scope: text: let
    scope' = concatStringsSep "\n, " (attrNames scope);
    process = item: if typeOf item == "string"
      then item
      else toString (evaluate
         "{ ${scope'}\n}:\n${elemAt item group}" scope);
    in concatMapStrings process (split regex text);

  interpolateBraces = interpolate "\\\$\\{(( }|[^\\}])*)}" 0;
  interpolateBrackets = interpolate "\\\$\\[(( ]|[^]])*)]" 0;
  interpolateNix = interpolateBraces;

  attrsToList = attrs: map
    (name: { name = name; value = getAttr name attrs; }) (attrNames attrs);

  mapAttrsName = func: mapAttrsNameValue
    ({name, value}: { name = func name value; value = value; });

  mapAttrsNameValue = func: attrs: listToAttrs (map
    ({name, value}: func name value) (attrsToList attrs));
}; in lib
