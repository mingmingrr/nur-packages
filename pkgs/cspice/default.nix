{ stdenv
, lib
, fetchurl
, tcsh
}:

stdenv.mkDerivation rec {
  pname = "cspice";
  version = "N0067";

  src = fetchurl {
    url = "ftp://naif.jpl.nasa.gov/pub/naif/misc/toolkit_${version}"
      + "/C/PC_Linux_GCC_64bit/packages/cspice.tar.Z";
    sha256 = "sha256-colLKHOEB6I+FzbS2cxZx2Z1GYc5nxGMS3aq04p6Ajg=";
  };

  # patchShebangs doesnt work with csh instead of tcsh
  postPatch = ''
    sed -i 's,/bin/csh,${tcsh}/bin/tcsh,g' src/*/mkprodct.csh
  '';

  nativeBuildInputs = [ tcsh ];

  buildPhase = ''
    runHook preBuild
    tcsh makeall.csh
    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall
    mkdir -p $out/bin $out/include $out/lib
    cp -r exe/* $out/bin
    cp -r include/* $out/include
    cp -r lib/* $out/lib
    runHook postInstall
  '';

  meta = with lib; {
    description = "NASA/JPL SPICE Toolkit for C";
    homepage = "https://naif.jpl.nasa.gov/naif/toolkit.html";
    license = licenses.nasa13;
    # maintainers = with maintainers; [ mingmingrr ];
    platforms = platforms.linux;
  };
}
