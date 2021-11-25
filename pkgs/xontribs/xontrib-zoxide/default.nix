{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-zoxide";
  version = "0.3.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "6d8b0ef283c415790ef9ef6631f5f2609a5d98af390bdfa1d0f9ad8554d4d826";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Zoxide integration for xonsh";
    homepage = "https://github.com/dyuri/xontrib-zoxide";
    license = licenses.mit;
  };
}
