{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPluginFrom2Nix {
  name = "vim-super-retab";
  version = "2013-11-07";
  src = fetchFromGitHub {
    owner = "rhlobo";
    repo = "vim-super-retab";
    rev = "ca763a978123992b213c0fb87b44f5d7807d3514";
    sha256 = "0x257iqjx7i28fr7qky0fq4f7sfzgf8zhf5nkzjv2cgfhp27h5is";
  };
  meta.homepage = "https://github.com/rhlobo/vim-super-retab";
}