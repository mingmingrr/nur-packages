{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xonsh-tcg";
  version = "0.2.74";
  src = fetchPypi {
    inherit pname version;
    sha256 = "4d36024186fe51aef979c15aa19094570b3b4821fe992ce056c2e9ea820ec513";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "tcg support for the Xonsh shell";
    homepage = "https://github.com/zasdfgbnm/tcg";
    license = licenses.mit;
  };
}
