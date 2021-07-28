{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPluginFrom2Nix {
  name = "linediff-vim";
  version = "2021-01-11";
  src = fetchFromGitHub {
    owner = "AndrewRadev";
    repo = "linediff.vim";
    rev = "c7710dbc59881b038ca064b6c54fe482303e8304";
    sha256 = "1qm2fphap3g9lc5kqyhpzqaq21r10bd1c9mlir3rss13i9aqhkl0";
  };
  meta.homepage = "https://github.com/AndrewRadev/linediff.vim";
}