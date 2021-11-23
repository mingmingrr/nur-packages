{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-gitinfo";
  version = "0.1.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "0b90e99c83a9ff6a6c17f61e44bfb5725bd5bb12d2b242e0d4325ca96f00409c";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Displays information on entering a git repository.";
    homepage = "https://github.com/dyuri/xontrib-gitinfo";
    # license = licenses.MIT;
  };
}
