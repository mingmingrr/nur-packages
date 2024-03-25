{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "spotdiff-vim";
  version = "2024-01-19";
  src = fetchFromGitHub {
    owner = "rickhowe";
    repo = "spotdiff.vim";
    rev = "16634e6949ada5dde525c26f1ab854e5763d41a2";
    sha256 = "081c5smcxdqwkhgbrwp7b5hymm7l2yk19l82kjk99js57xjkr6af";
  };
  meta.homepage = "https://github.com/rickhowe/spotdiff.vim";
}