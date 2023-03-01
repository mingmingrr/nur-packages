{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "spotdiff-vim";
  version = "2022-10-28";
  src = fetchFromGitHub {
    owner = "rickhowe";
    repo = "spotdiff.vim";
    rev = "d70c6f6cfa171bccea6d822f7271241d702e6cfb";
    sha256 = "0w9rszimg1jai6zd9hqli50zfck518wqzi3nzqkr2d8h596ns6cg";
  };
  meta.homepage = "https://github.com/rickhowe/spotdiff.vim";
}
