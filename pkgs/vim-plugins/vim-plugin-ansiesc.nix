{ vimUtils, fetchFromGitHub }:
vimUtils.buildVimPluginFrom2Nix {
  name = "vim-plugin-ansiesc";
  version = "2019-04-07";
  src = fetchFromGitHub {
    owner = "powerman";
    repo = "vim-plugin-AnsiEsc";
    rev = "690f820d20b6e3a79ba20499874eb7333aa4ca5c";
    sha256 = "05sf9xh7zs475kykz1hsp0xp7iiclp7pdiy3bpx7wlfp9z71bd9p";
  };
  meta.homepage = "https://github.com/powerman/vim-plugin-AnsiEsc";
}