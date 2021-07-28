{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPluginFrom2Nix {
  name = "ansiesc-vim";
  version = "2010-12-13";
  src = fetchFromGitHub {
    owner = "vim-scripts";
    repo = "AnsiEsc.vim";
    rev = "d2bb7878622e4c16203acf1c92a0f4bc7ac58003";
    sha256 = "1qy55qk8s87iqm4khz37h3h0bs8hr5dm8k91nrv4b617xl8l5gmb";
  };
  meta.homepage = "https://github.com/vim-scripts/AnsiEsc.vim";
}