{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPluginFrom2Nix {
  name = "vim-minimap";
  version = "2019-05-09";
  src = fetchFromGitHub {
    owner = "severin-lemaignan";
    repo = "vim-minimap";
    rev = "5a415547e7584eba0bebe087fd553e13c76e8842";
    sha256 = "07q7865bbbq28pf3ijm56qr3wk0xsq0dprhscyjjqjy0jqrgzjra";
  };
  meta.homepage = "https://github.com/severin-lemaignan/vim-minimap";
}