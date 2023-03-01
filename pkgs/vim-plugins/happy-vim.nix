{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "happy-vim";
  version = "2021-04-27";
  src = fetchFromGitHub {
    owner = "andy-morris";
    repo = "happy.vim";
    rev = "0f2f4719572c0236ff00e2bc8489bbcab8ac8c4f";
    sha256 = "0a19dxwha91vxm8fkvhp61mnmy6sjdx3zyrgm2bpd2kzrwjpkkj6";
  };
  meta.homepage = "https://github.com/andy-morris/happy.vim";
}
