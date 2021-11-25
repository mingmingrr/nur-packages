{ lib, buildPythonPackage, fetchPypi, xonsh }:
buildPythonPackage rec {
  pname = "xontrib-broot";
  version = "0.1.2";
  src = fetchPypi {
    inherit pname version;
    sha256 = "a6084704bd847d00594273f3dde50c52125272b01143b1219408138276611853";
  };
  propagatedBuildInputs = [ xonsh ];
  doCheck = false;
  meta = with lib; {
    description = "broot support function for xonsh shell";
    homepage = "https://github.com/jnoortheen/xontrib-broot";
    license = licenses.mit;
  };
}
