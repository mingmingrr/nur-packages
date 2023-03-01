{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "vim-apl";
  version = "2020-12-06";
  src = fetchFromGitHub {
    owner = "justin2004";
    repo = "vim-apl";
    rev = "49142e9028ceee24bafa7b7c9fe4d556fce36e51";
    sha256 = "1p32jdq4yrvwmdg59g7402lg078axyibk3wralrb7jlbv1rskzsz";
  };
  meta.homepage = "https://github.com/justin2004/vim-apl";
}
