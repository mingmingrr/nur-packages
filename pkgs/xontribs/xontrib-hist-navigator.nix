{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-hist-navigator";
  version = "0.6.3";
  src = fetchPypi {
    inherit pname version;
    sha256 = "75276471d432e46a01805d9973610ff68934d9906ba73d3305a867321068d486";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "A Xonsh plugin to navigate between directories like fish's prevd/nextd";
    homepage = "https://pypi.org/project/xontrib-hist-navigator";
    # license = licenses.MIT;
  };
}
