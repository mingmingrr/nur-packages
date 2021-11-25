{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-pyenv";
  version = "1.0.6";
  src = fetchPypi {
    inherit pname version;
    sha256 = "04f72b98e406b2fc35d29ee09e0ff82355bc72e1a3e3e320e40894369ff7e672";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Pyenv integration for xonsh";
    homepage = "https://github.com/dyuri/xontrib-pyenv";
    license = licenses.mit;
  };
}
