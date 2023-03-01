{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "vim-transpose";
  version = "2015-07-01";
  src = fetchFromGitHub {
    owner = "salsifis";
    repo = "vim-transpose";
    rev = "bdb00d2aeb3bdf9366f01a3bee4fb142d78278f9";
    sha256 = "1cia2ndmi0zf9cxkzn68ayvg1pr3bafd85ahmibr0k3kdkxqag7m";
  };
  meta.homepage = "https://github.com/salsifis/vim-transpose";
}
