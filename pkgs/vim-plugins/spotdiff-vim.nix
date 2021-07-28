{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPluginFrom2Nix {
  name = "spotdiff-vim";
  version = "2021-06-08";
  src = fetchFromGitHub {
    owner = "rickhowe";
    repo = "spotdiff.vim";
    rev = "47ae026cadd2896725fb4f930468bc501cf66f14";
    sha256 = "18v37pzf6k76ijw76y9cdhqk4b7zbzahj84cp3w042pjd4377yzr";
  };
  meta.homepage = "https://github.com/rickhowe/spotdiff.vim";
}