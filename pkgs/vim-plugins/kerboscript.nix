{ tree, vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin rec {
  pname = "kerboscript.vim";
  version = "2017-10-23";
  src = fetchFromGitHub {
    owner = "KSP-KOS";
    repo = "EditorTools";
    rev = "2a5f93ea2538165497da6d6e06534c3cd22f1a98";
    sha256 = "sha256-c1CIykN3OSLUz/gfE1HsPg9QizUaNGICrLC/xBgs9eM=";
  };
  sourceRoot = "${src.name}/VIM/vim-kerboscript";
  meta.homepage = "https://github.com/KSP-KOS/EditorTools";
}
