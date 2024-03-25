{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "alex-vim";
  version = "2015-02-08";
  src = fetchFromGitHub {
    owner = "andy-morris";
    repo = "alex.vim";
    rev = "bd95024624b297e212e57582a1ece21ac5dab6b8";
    sha256 = "19m1c2wrza6srp8ylinsz5nrjzy3mrb1dc1nmjm23blx1lg8ql5h";
  };
  meta.homepage = "https://github.com/andy-morris/alex.vim";
}