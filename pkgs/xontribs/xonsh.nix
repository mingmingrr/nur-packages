{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xonsh";
  version = "0.11.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "0d9c3d9a4e8b8199ae697fbc9d1e0ae55085cdbdd4306d04813350996f9c15dc";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Python-powered, cross-platform, Unix-gazing shell";
    homepage = "https://xon.sh";
    # license = licenses.BSD;
  };
}
