{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "improved-ansiesc";
  version = "2015-08-25";
  src = fetchFromGitHub {
    owner = "vim-scripts";
    repo = "Improved-AnsiEsc";
    rev = "e1c59a8e9203fab6b9150721f30548916da73351";
    sha256 = "1smjs4kz2kmzprzp9az4957675nakb43146hshbby39j5xz4jsbz";
  };
  meta.homepage = "https://github.com/vim-scripts/Improved-AnsiEsc";
}