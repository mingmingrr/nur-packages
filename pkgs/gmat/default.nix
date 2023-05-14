{ stdenv
, lib
, cmake
, pkg-config
, xercesc
, unzip
, swig4
, wxGTK32
, cspice
, libGL
, libGLU
, xorg
, openjdk
, python3
, makeWrapper
, fetchurl
, wrapGAppsHook
, copyDesktopItems
, makeDesktopItem
, iconConvTools
}:

stdenv.mkDerivation rec {
  pname = "gmat";
  version = "R2022a";

  src = fetchurl {
    url = "mirror://sourceforge/gmat/gmat-src_and_data-${version}.zip";
    sha1 = "2e8d1523c50039d58577f889879a3e4217b5a619";
  };

  nativeBuildInputs = [
    wrapGAppsHook
    makeWrapper
    copyDesktopItems
    cmake
    pkg-config
    unzip
    libGLU.dev
    libGL.dev
    xorg.libX11.dev
    swig4
    openjdk
    iconConvTools
  ];

  desktopItems = [(makeDesktopItem {
    desktopName = "GMAT";
    name = "gmat";
    exec = "GMAT";
    icon = "gmat";
    comment = meta.description;
    type = "Application";
    categories = [ "Science" ];
  })];

  buildInputs = [
    cspice
    xercesc
    wxGTK32
    python3
  ];

  patches = [
    ./fix-direct-OnPaint-calls.patch
    ./fix-SetCellValue-arg-order.patch
    ./fix-startup-file-rel-paths.patch
  ];

  cmakeBuildDir = "cmakebuild";
  cmakeFlags = [
    "-DGMAT_INCLUDE_API=ON"
    "-DGMAT_PYTHON3_VERSIONS=${python3.pythonVersion}"
    "-DCSPICE_DIR=${cspice}"
    "-DF2C_DIR=${cspice}/include"
  ];

  preConfigure = ''
    cmakeFlags+=" -DCMAKE_INSTALL_PREFIX=$out/opt/GMAT-${version}"
  '';

  postInstall = let
    opt = "$out/opt/GMAT-${version}";
    pyversion = "${python3.sourceVersion.major}${python3.sourceVersion.minor}";
  in ''
    cp ${./gmat_startup_file.txt} ${opt}/gmat_startup_file.txt
    mkdir -p $out/bin
    makeWrapper ${opt}/bin/GMAT-${version} $out/bin/GMAT-${version} \
      --set-default GMAT_PYTHON_VERSION ${pyversion} \
      --set-default GMAT_ROOT_PATH   ${opt} \
      --set-default GMAT_PLUGIN_PATH ${opt}/plugins \
      --run 'export GMAT_OUTPUT_PATH=''${GMAT_OUTPUT_PATH-$XDG_DATA_HOME/gmat}' \
      --run 'mkdir -p $GMAT_OUTPUT_PATH' \
      --add-flags "--startup_file ${opt}/gmat_startup_file.txt"
    ln -s $out/bin/GMAT-${version} $out/bin/GMAT
    makeWrapper ${opt}/bin/GmatConsole-${version} $out/bin/GmatConsole-${version} \
      --set-default GMAT_PYTHON_VERSION ${pyversion} \
      --set-default GMAT_ROOT_PATH   ${opt} \
      --set-default GMAT_PLUGIN_PATH ${opt}/plugins \
      --run 'export GMAT_OUTPUT_PATH=''${GMAT_OUTPUT_PATH-$XDG_DATA_HOME/gmat}' \
      --run 'mkdir -p $GMAT_OUTPUT_PATH' \
      --add-flags "--startup_file ${opt}/gmat_startup_file.txt"
    ln -s $out/bin/GmatConsole-${version} $out/bin/GmatConsole
    mkdir -p $out/${python3.sitePackages}
    ln -s ${opt}/bin/gmatpy $out/${python3.sitePackages}/gmatpy
    python3 -m compileall $out/${python3.sitePackages}/gmatpy
    icoFileToHiColorTheme ${opt}/data/graphics/icons/GMAT.ico gmat $out
  '';

  meta = with lib; {
    description = "a space trajectory optimization and mission analysis system";
    homepage = "https://opensource.gsfc.nasa.gov/projects/GMAT/index.php";
    license = licenses.nasa13;
    # maintainers = with maintainers; [ mingmingrr ];
    mainProgram = "GMAT";
    platforms = platforms.linux;
  };
}
