{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-pyrtn";
  version = "0.2.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "a7d80bc3e971214c345299f148c354409f320c018c3ea0154a00a4ff1fa5e0fd";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Store the python return value of commands for the session.";
    homepage = "https://github.com/dyuri/xontrib-pyrtn";
    license = licenses.mit;
  };
}
