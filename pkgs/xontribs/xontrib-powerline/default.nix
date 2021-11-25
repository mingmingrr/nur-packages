{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-powerline";
  version = "0.4.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "f67ff160ef646e89ea77843c5c64a70b53a5dbfefb142cf21dbea14e0d0ca01c";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Powerline for Xonsh shell";
    homepage = "https://github.com/santagada/xontrib-powerline";
    license = licenses.mit;
  };
}
