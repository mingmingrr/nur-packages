{ lib
, fetchPypi
, wrapGAppsHook
, gtk3
, gobject-introspection
, libappindicator
, python3Packages
}:

python3Packages.buildPythonApplication rec {
  pname = "discover-overlay";
  version = "0.6.3";

  src = fetchPypi {
    inherit pname version;
    sha256 = "efba024bf3043e21d2566a12364d6b16ed172d02ea2d14aa2658fb8a340c0b80";
  };

  propagatedBuildInputs = with python3Packages; [
    pygobject3
    websocket-client
    pyxdg
    requests
    pillow
    xlib
    setuptools
    python-pidfile
    libappindicator
    gtk3
  ];
  nativeBuildInputs = [
    wrapGAppsHook
  ];
  buildInputs = [
    gobject-introspection
  ];
  doCheck = false;
  meta = with lib; {
    description = "Voice chat overlay";
    homepage = "https://github.com/trigg/Discover";
    license = licenses.gpl3Plus;
  };
}
