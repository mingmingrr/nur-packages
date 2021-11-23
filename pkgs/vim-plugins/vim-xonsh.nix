{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPluginFrom2Nix {
  name = "vim-xonsh";
  version = "2019-06-24";
  src = fetchFromGitHub {
    owner = "meatballs";
    repo = "vim-xonsh";
    rev = "2028aacfae3f5b54f8b07fb21fa729afdfac8050";
    sha256 = "0g1px5ln30qcc3p57pr3wg6dv8pixxmdg4i8l67fqbgwbjv6mryk";
  };
  meta.homepage = "https://github.com/meatballs/vim-xonsh";
}