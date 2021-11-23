{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-powerline3";
  version = "0.3.7";
  src = fetchPypi {
    inherit pname version;
    sha256 = "5175ac9ca4d0c6b89cae56486b0e04724a0cf278c118496ba4d486c0dde334ae";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Yet another powerline theme for xonsh with async prompt support.";
    homepage = "https://github.com/jnoortheen/xontrib-powerline3";
    # license = licenses.MIT;
  };
}
