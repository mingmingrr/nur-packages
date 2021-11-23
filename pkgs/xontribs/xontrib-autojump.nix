{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-autojump";
  version = "1.4";
  src = fetchPypi {
    inherit pname version;
    sha256 = "d19223eb4b4f4e8e031d1ed6b64f2d3f3ddbaa180a4e8fd6e76b592346b677d3";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "autojump support for xonsh";
    homepage = "https://github.com/willsALMANJ/autojump-xonsh";
    # license = licenses.GPLv3+;
  };
}
