{ lib }:

with lib;

rec {
  python-modules = self: super:
    readNixDir self.callPackage ../pkgs/python-modules;
  python3-modules = self: super: {
    python3 = super.python3.override {
      packageOverrides = pself: psuper:
        python-modules pself psuper;
    };
  };

  xontribs = self: super:
    readNixDir self.callPackage ../pkgs/xontribs;
  python3-xontribs = self: super: {
    python3 = super.python3.override {
      packageOverrides = pself: psuper:
        python-modules pself psuper //
        xontribs pself psuper;
    };
  };

  vimPlugins = self: super: {
    vimPlugins = readNixDir super.callPackage ../pkgs/vim-plugins;
  };
}
