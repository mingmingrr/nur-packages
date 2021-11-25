{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-repa-prompt";
  version = "0.0.5";
  src = fetchPypi {
    inherit pname version;
    sha256 = "438b1292212293901ac8dd9dbeed79a35fcd7ebcd8ddcbba5ce9e31d519679a7";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Custom prompt for xonsh";
    homepage = "https://github.com/dyuri/xontrib-repa-prompt";
    license = licenses.mit;
  };
}
