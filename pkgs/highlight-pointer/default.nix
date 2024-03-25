{ lib
, fetchFromGitHub
, stdenv
, xorg
}:

stdenv.mkDerivation rec {
  pname = "highlight-pointer";
  version = "1.1.3";

  src = fetchFromGitHub {
    owner = "swillner";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-mz9gXAtrtSV0Lapx8xBOPljuF+HRgDaF2DKCDrHXQa8=";
  };

  nativeBuildInputs = [
    xorg.libX11.dev
    xorg.libXext.dev
    xorg.libXfixes.dev
    xorg.libXi.dev
  ];

  installPhase = ''
    runHook preInstall
    mkdir -p $out/bin
    mv highlight-pointer $out/bin
    runHook postInstall
  '';

  # buildInputs = [
  # ];

  doCheck = false;
  meta = with lib; {
    description = "Highlight mouse pointer/cursor using a dot";
    homepage = "https://github.com/swillner/highlight-pointer";
    license = licenses.gpl3Plus;
  };
}
