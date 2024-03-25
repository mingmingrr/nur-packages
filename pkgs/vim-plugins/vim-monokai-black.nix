{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "vim-monokai-black";
  version = "2016-05-31";
  src = fetchFromGitHub {
    owner = "louispan";
    repo = "vim-monokai-black";
    rev = "db47322ab0ab3f2a4c0e7f5ae5e178a85c91262e";
    sha256 = "1vz49fvvpx8pmi79g932y3xs3aj5blzg3f310faqfgi2ra3qx0qp";
  };
  meta.homepage = "https://github.com/louispan/vim-monokai-black";
}