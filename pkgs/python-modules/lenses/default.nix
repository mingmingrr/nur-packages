{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "lenses";
  version = "1.1.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "c905833f892dcef45de4411a43f1ff30937748157b6ab5181fca063bb095ce81";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "A lens library for python";
    homepage = "https://github.com/ingolemo/python-lenses";
    # license = licenses.GPLv3+;
  };
}