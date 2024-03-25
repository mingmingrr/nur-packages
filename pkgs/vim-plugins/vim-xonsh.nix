{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPlugin {
  pname = "vim-xonsh";
  version = "2023-06-16";
  src = fetchFromGitHub {
    owner = "meatballs";
    repo = "vim-xonsh";
    rev = "929f35e37ad7dbdec80b1effe295b89c9ac3f090";
    sha256 = "1rgyprxnizmkcb83fdhrv9xxa266r81iay4an183nvbxcsxwn0ds";
  };
  meta.homepage = "https://github.com/meatballs/vim-xonsh";
}