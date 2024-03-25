{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "solidpython2";
  version = "2.0.3";
  src = fetchPypi {
    inherit pname version;
    sha256 = "4048a7c60da939838c570c2745d7d7f67b7f115b93a0152588a7c3c7032bc88e";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Python interface to the OpenSCAD declarative geometry language";
    homepage = "https://github.com/jeff-dh/SolidPython";
    # license = licenses.LGPL-2.1;
  };
}
