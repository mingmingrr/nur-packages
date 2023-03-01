{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "pyassimp";
  version = "4.1.4";
  src = fetchPypi {
    inherit pname version;
    sha256 = "266bd4be170d46065b8c2ad0f5396dad10938a6bbf9a566c4e4d56456e33aa6a";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Python bindings for the Open Asset Import Library (ASSIMP)";
    homepage = "https://github.com/assimp/assimp";
    # license = licenses.ISC;
  };
}
