python: python.override {
  packageOverrides = self: super: {
    powerline-contrib = python.pkgs.callPackage
      ../pkgs/python-modules/powerline-contrib.nix { };
  };
}
