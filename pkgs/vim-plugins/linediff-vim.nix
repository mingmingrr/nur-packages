{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "linediff-vim";
  version = "2023-02-25";
  src = fetchFromGitHub {
    owner = "AndrewRadev";
    repo = "linediff.vim";
    rev = "3925a50a02b4b1e7958807676f93e06b53c66e27";
    sha256 = "01f2lm860ayv0z672b7ampk9dkpvc1x26idj0q6y2h2574fpk043";
  };
  meta.homepage = "https://github.com/AndrewRadev/linediff.vim";
}
