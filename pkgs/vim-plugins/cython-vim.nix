{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "cython-vim";
  version = "2021-03-05";
  src = fetchFromGitHub {
    owner = "cybardev";
    repo = "cython.vim";
    rev = "a073ff9bc0cb7d80e8167fa506c7df99f73a3125";
    sha256 = "08ydsfdrdig4s405msl322bpd0ypxm8ygfh3iykqm0kmzbbgwzcc";
  };
  meta.homepage = "https://github.com/cybardev/cython.vim";
}