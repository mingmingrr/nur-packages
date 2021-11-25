{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-powerline-refined";
  version = "0.4.1";
  src = fetchPypi {
    inherit pname version;
    sha256 = "47d6eefeda3778825f6cdd620165af4510ebad91fbe7fcb49c0206bd2a8d3131";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Powerline for Xonsh shell";
    homepage = "https://github.com/suzutan/xontrib-powerline-refined";
    license = licenses.mit;
  };
}
