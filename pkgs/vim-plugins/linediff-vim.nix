{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "linediff-vim";
  version = "2023-03-15";
  src = fetchFromGitHub {
    owner = "AndrewRadev";
    repo = "linediff.vim";
    rev = "245d16328c47a132574e0fa4298d24a0f78b20b0";
    sha256 = "0ga1fxjzvwhzr53akrr1y27xq2xifhgiifnyldk50g10k8k6jp6x";
  };
  meta.homepage = "https://github.com/AndrewRadev/linediff.vim";
}