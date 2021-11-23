{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPluginFrom2Nix {
  name = "spotdiff-vim";
  version = "2021-08-28";
  src = fetchFromGitHub {
    owner = "rickhowe";
    repo = "spotdiff.vim";
    rev = "172a15a8e885fb3e7e097c0b7fbe01dcd7582208";
    sha256 = "1xk15pl0p3iqn3sszwp2pryxn4piw518qg5iqmnlmhvfcf5nr4r4";
  };
  meta.homepage = "https://github.com/rickhowe/spotdiff.vim";
}