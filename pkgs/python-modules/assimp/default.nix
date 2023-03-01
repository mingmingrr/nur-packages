{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "assimp";
  version = "4.1.4";
  src = fetchPypi {
    inherit pname version;
    sha256 = "6c73efb3a59e464e84d418d6dd100bab05dc65e9169417a9322b7fe46c5939d2";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Python bindings for the Open Asset Import Library (ASSIMP)";
    homepage = "https://github.com/mikedh/pyassimp";
    # license = licenses.ISC;
  };
}
