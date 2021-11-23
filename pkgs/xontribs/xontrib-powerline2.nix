{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-powerline2";
  version = "1.5.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "eaec5acd8ab0107d2564fd5719812f953b6e8fabbed796a2813de7ae4daa9b54";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Powerline for Xonsh shell";
    homepage = "https://github.com/vaaaaanquish/xontrib-powerline2";
    # license = licenses.MIT;
  };
}
